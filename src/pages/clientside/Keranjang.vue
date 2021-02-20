<template>
  <div>
    <div class="container br-breadcrumb">
      <div class="row">
        <div class="col-md-12">
            Beranda > <span class="text-capitalize">{{currentRouteName}}</span>
        </div>
      </div>
    </div>
    <div class="main-detail">
      <div class="container">
        <div class="row menu-second">
            <div class="col-md-12">
              <div class="item-body-keranjang">
                <div class="keranjang-div row mb-2" v-for="(dt, idx) in dataproduct" :key="dt.id">
                  <div class="col-md-1">
                    <n-checkbox v-model="form.product_selected[dt.id]" @input="productSelected(idx, dt.id, $event)"></n-checkbox>
                    <!-- <input type="checkbox" :value="dt.id" class="form-control checkbox-produk" @change="productSelected(idx, dt.id, $event)" v-model="form.product_selected[dt.id]"> -->
                  </div>
                  <div class="col-md-2 img-produk" v-bind:style="{ backgroundImage: 'url(' + img + ')' }">
                  </div>
                  <div class="col-md-5 produk">
                      <p class="nama-produk">{{dt.nama}}</p>
                      <div class="deskripsi">
                        <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                            {{dt.deskripsi}}
                        </span>
                      </div>
                      <number-input size="small" :min="1" v-model="dt.qty" inline center controls rounded></number-input>
                      <a class="btn btn-sm btn-danger trash">
                        <i class="fas fa-trash-alt"></i>
                        Hapus
                        <!-- <span class="now-ui-icons ui-1_simple-remove"></span> -->
                      </a>
                      <fg-input
                        v-model="form.catatan[dt.id]"
                        class="no-border mt-2"
                        placeholder="catatan..."
                        addon-right-icon="now-ui-icons design-2_ruler-pencil"
                        @input="deskripsiAdd(dt.id, idx)">
                      </fg-input>
                        
                  </div>
                  <div class="col-md-4 text-right harga">{{formatRupiah(dt.harga*parseInt(dt.qty), 'Rp')}}</div>
                </div>
              </div>

            </div>
            <div class="col-md-6">
              <button class="btn btn-warning btn-block">
              <span class="now-ui-icons arrows-1_minimal-left"></span>
                Lanjutan Belanja
              </button>
            </div>
            <div class="col-md-6">
                <n-button type="btn btn-primary btn-block" @click="getAllQty" v-if="checkout.length > 0" @click.native="modals.classic = true">
                    Checkout
                    <span class="now-ui-icons arrows-1_minimal-right"> </span> 
                </n-button>
            </div>
            
        </div>
      </div>
    </div>
    <modal :show.sync="modals.classic" :show-close="false" data-backdrop="static" data-keyboard="false" id="exampleModal" headerClasses="justify-content-center">
      <h4 slot="header" class="title title-up">Checkout</h4>
      <div class="row">
        <div class="col-md-6">
            <h5 class="title title-up alamat-pengiriman">Detail Pembelian</h5>
              <div class="item-body">
                <div v-for="(data, index) in checkout" class="row data checkout-div" :id="'checkout_'+data.id">
                  <div class="col-sm-2 img-produk checkout" v-bind:style="{ backgroundImage: 'url(' + img + ')' }"></div>
                  <div class="col-sm-9">
                    <p class="nama-produk">{{data.nama}}</p>
                      <div class="deskripsi">
                        <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                            {{data.deskripsi}}
                        </span>
                      </div>
                      <span class="qty-produk">{{data.qty}}</span>x
                      <span class="qty-produk">{{formatRupiah(data.harga, 'Rp')}}</span>
                      <!-- <span class="total-produk">Rp{{data.harga*parseInt(data.qty)}}</span> -->
                      <p class="catatan">Catatan : <span>{{data.catatan}}</span></p>
                  </div>
                </div>
              </div>
        </div>
        <div class="col-md-6">
            <h5 class="title title-up alamat-pengiriman">Alamat Pengiriman</h5>
            <div v-if="form.label == ''">
              <n-button type="default btn-simple" @click.native="modals.mini = true">
              <span class="now-ui-icons shopping_delivery-fast"></span>
                Tambah Alamat
              </n-button>
            </div>
            <div v-else class="alamat-pengiriman">
              <p class="pengiriman text-capitalize font-weight-bold">{{form.label}}
              </p>
              <p class="pengiriman text-capitalize font-weight-bold">{{form.penerima}} ({{form.handphone}})</p>
              <p class="pengiriman text-capitalize text-truncate">{{form.alamat}}</p>
              <n-button type="default btn-simple btn-sm" @click.native="modals.mini = true">
              <span class="now-ui-icons design-2_ruler-pencil"></span>
                Ubah Alamat
              </n-button>
            </div>

            <h5 class="title title-up alamat-pengiriman">Total Pembelian</h5>
            <div class="row">
              <div class="col-sm-6">
                <strong>Total Pembelian</strong>
              </div>
              <div class="col-sm-2 text-right">
                <strong>{{totQty}}</strong>
              </div>
              <div class="col-sm-4 text-right">
                <strong>{{formatRupiah(totHarga, 'Rp')}}</strong>
              </div>
              <div class="col-sm-8">
                <strong>Ongkir</strong>
              </div>
              <div class="col-sm-4 text-right">
                <strong>{{formatRupiah(0, 'Rp')}}</strong>
              </div>
              <div class="col-sm-8">
                <strong>Subtotal</strong>
              </div>
              <div class="col-sm-4 text-right">
                <strong>{{formatRupiah(parseInt(totHarga+0), 'Rp')}}</strong>
              </div>
            </div>

            <h5 class="title title-up alamat-pengiriman">
              Metode Pembayaran
            </h5>
            <div class="col-md-6">
              <n-radio v-model="radios.radioOn" label="1">Bayar di tempat (COD)</n-radio>
            </div>
            <div class="col-md-6">
              <n-radio v-model="radios.radioOn" label="2">Bayar pas laku
                <el-tooltip
                  class="item"
                  content="Metode pembayaran 'bayar pas laku' hanya berlaku untuk produk tertentu. "
                  placement="bottom"
                >
                  <span class="now-ui-icons travel_info"></span>
                </el-tooltip>
              </n-radio>
            </div>
        </div>
      </div>
      <template slot="footer">
            <n-button type="danger" @click.native="modals.classic = false">
              <span class="now-ui-icons arrows-1_minimal-left"></span>
              Kembali
            </n-button>
            <a href="/daftar-pesanan" v-if="form.label != '' && form.penerima != '' && form.handphone != '' && form.alamat != ''" class="btn btn-primary">
              Proses
              <span class="now-ui-icons arrows-1_minimal-right"> </span> 
            </a>
            <n-button v-else v-popover:popover1 type="primary">
              Proses
              <span class="now-ui-icons arrows-1_minimal-right"> </span> 
            </n-button>

      </template>
    </modal>

    <modal
      :show.sync="modals.mini"
      class="modal-primary label-pengiriman"
      :show-close="false"
      headerClasses="justify-content-center"
      type="mini"
    >
      <div slot="header" class="modal-profile">
        <i class="now-ui-icons users_circle-08"></i>
      </div>
      <p>Masukkan alamat pengiriman anda.</p>
      <div class="row">

        <fg-input
          class="no-border mt-2"
          placeholder="Rumah, Kos, Kantor, dll."
          v-model="form.label"
          addon-right-icon="now-ui-icons shopping_shop">
        </fg-input>

        <fg-input
          class="no-border mt-2"
          placeholder="Penerima."
          v-model="form.penerima"
          addon-right-icon="now-ui-icons users_single-02">
        </fg-input>

        <fg-input
          class="no-border mt-2"
          placeholder="Handphone."
          v-model="form.handphone"
          addon-right-icon="now-ui-icons tech_mobile">
        </fg-input>

          <textarea
            class="form-control mt-2"
            name="alamat"
            v-model="form.alamat"
            placeholder="Nama jalan ataupun ciri-ciri rumah"
          ></textarea>
      </div>

      <template slot="footer">
        <button class="btn btn-danger btn-sm" type="button" @click="reset">Reset</button>
        <n-button v-if="form.label != '' && form.penerima != '' && form.handphone != '' && form.alamat != ''" type="success" @click.native="modals.mini = false"
          >Simpan</n-button
        >
      </template>
    </modal>
    <el-popover
            ref="popover1"
            popper-class="popover popover-primary"
            placement="left"
            width="200"
            trigger="click">
      <h3 class="popover-header">Silahkan lengkapi Alamat Pengiriman</h3>
      <div class="popover-body">
        <strong v-if="form.label == ''">label alamat harus diisi.</strong>
        <strong v-if="form.penerima == ''">penerima harus diisi.</strong>
        <strong v-if="form.handphone == ''">handphone harus diisi.</strong>
        <strong v-if="form.alamat == ''">alamat harus diisi.</strong>
      </div>
    </el-popover>
    

    <!-- end row -->
  </div>
</template>

<script>
import 'hooper/dist/hooper.css';
import { Hooper, Slide,Navigation as HooperNavigation } from 'hooper';
import SkeletonCard from 'vue-skeleton-screen'
import regeneratorRuntime from "regenerator-runtime";
import { Modal,Button,FormGroupInput,Checkbox,Radio } from '../../components';
import { Popover, Tooltip, DatePicker } from 'element-ui';
import _ from 'lodash'
import { ModelSelect } from 'vue-search-select'
import VueNumberInput from '@chenfengyuan/vue-number-input';
import VueNumericInput from 'vue-numeric-input';

export default {
  name: 'index',
  bodyClass: 'index-page',
  components: {
    SkeletonCard,
    Hooper,
    Slide,
    HooperNavigation,
    SkeletonCard,
    regeneratorRuntime,
    Modal,
    [Button.name]: Button,
    [FormGroupInput.name]: FormGroupInput,
    [Checkbox.name]: Checkbox,
    [Popover.name]: Popover,
    ModelSelect,
    [Radio.name]: Radio,
    [Tooltip.name]: Tooltip,
    [VueNumberInput.name]: VueNumberInput,
    VueNumericInput

  },
  data() {
    return {
        value:1,
        totalItem:0,
        itemsToShow: 2,
        centerMode: true,
        data: 10,
        quantity: [],
        options2: [],
        checkout: [],
        checkoutTemp: [],
        checkoutTemp2: [],
        item2: '',
        modals: {
            classic: false,
            mini: false
        },
        radios: {
          radioOn: '2',
          radioOff: '2'
        },
        form: {
          label:'',
          penerima:'',
          handphone:'',
          alamat:'',
          product_selected:[],
          qty:[],
          nama_produk:[],
          harga:[],
          catatan:[]
        },
        img: 'http://placehold.it/120x80',
        dataproduct:[],
        id:[],
        totQty:0,
        totHarga:0,
        qtyArray:[],
        currentRouteName:''


    };
  },
  methods: {
    /* Fungsi formatRupiah */
		formatRupiah(angka, prefix){
			var number_string = angka.toString(),
			split   		= number_string.split(','),
			sisa     		= split[0].length % 3,
			rupiah     		= split[0].substr(0, sisa),
			ribuan     		= split[0].substr(sisa).match(/\d{3}/gi);

			// tambahkan titik jika yang di input sudah menjadi angka ribuan
			if(ribuan){
				var separator = sisa ? '.' : '';
				rupiah += separator + ribuan.join('.');
			}

			rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
			return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');
    },
    
    getAllQty() {
      var totalArray = 0;
      var totalHarga = 0;
      $.each(this.checkout, function(k,v){
        totalArray += Number(v.qty);
        totalHarga += Number(v.qty*v.harga);
      });
      this.totQty = totalArray;
      this.totHarga = totalHarga;
      
    },
    reset() {
      this.form.label = '';
      this.form.penerima = '';
      this.form.handphone = '';
      this.form.alamat = '';
    },
    deskripsiAdd(item, index) {
      this.dataproduct[index]['catatan'] = this.form.catatan[item];

    },
    getCartData() {
      var json = [          
                {id:10, nama:'Blouse 1', harga:2000, qty:1, deskripsi: 'lorem ipsum 1'}, 
                {id:12, nama:'Blouse 2', harga:3000, qty:3, deskripsi: 'lorem ipsum 2'},
                {id:13, nama:'Blouse 3', harga:2000, qty:1, deskripsi: 'lorem ipsum 3'}, 
                {id:14, nama:'Blouse 4', harga:3000, qty:3, deskripsi: 'lorem ipsum 4'},
                {id:17, nama:'Blouse 5', harga:2000, qty:1, deskripsi: 'lorem ipsum 5'}
              ];
      this.dataproduct = json;
    },
    getNama() {
    },
    productSelected (idx, e, event) {
      
      if (event == true) {

        if($.inArray(e, this.id) === -1){
            var id = this.id
            var allqty = this.qtyArray;
            id.push(e)
            allqty.push(this.dataproduct[idx].qty);
          }

          var cekot = this.checkout;
          cekot.push(this.dataproduct[idx]);
          
      }else{
        var cekot = this.checkout;
        var id = this.id;
        $.each(this.id, function(k,v){
          if(v == e){
            cekot.splice(k,1);
            id.splice(k,1);
          }
        })


      }

  },

    //kategori reset
    reset2 () {
        this.item2 = ''
    },
    //value from kategori
    selectFromParentComponent2 () {
        this.item2 = this.options2[0].value
    },
    openCity(evt, cityName) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
      }
      document.getElementById(cityName).style.display = "block";
      $('.'+cityName).addClass('active');
    }
  },
  mounted: function () {
    // select all thumbnails
    const galleryThumbnail = document.querySelectorAll(".thumbnails-list li");
    // select featured
    const galleryFeatured = document.querySelector(".product-gallery-featured img");

    // loop all items
    galleryThumbnail.forEach((item) => {
      item.addEventListener("mouseover", function () {
        let image = item.children[0].src;
        galleryFeatured.src = image;
      });
    });

  },
  created() {
    this.getCartData();
    this.getNama();
    this.currentRouteName = this.$route.name;
  },
  computed: {
  }
};
</script>
