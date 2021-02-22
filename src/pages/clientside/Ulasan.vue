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
          <!-- <div class="row"> -->
            <div class="col-md-4 sidemenu mt-2">
              <div class="form-group">
                  <label>Tanggal : </label>
                  <date-range-picker
                    v-model="dateRange"
                  ></date-range-picker>
              </div>
              <div class="form-group">
                  <label>Filter : </label>
                  <fg-input
                    placeholder="Cari daftar pesananmu disini.."
                    type="text"
                  >
                  </fg-input>

              </div>
              <div class="form-group">
                  <label>Urutkan : </label>
                  <select class="form-control">
                    <option>terbaru</option>
                    <option>murah</option>
                  </select>
              </div>
              <div class="form-group">
                  <label>Metode Pembayaran : </label>
                  <div class="d-block text-left">
                    <button @click="tipeBayar('all')" v-bind:class="tipe_bayar == 'all' ? '' : 'btn-simple'" class="btn btn-round btn-info btn-sm"><i class="fas fa-money-check-alt"></i> Semua</button>
                    <button @click="tipeBayar('laku')" v-bind:class="tipe_bayar == 'laku' ? '' : 'btn-simple'" class="btn btn-round btn-success btn-sm"><i class="fas fa-hand-holding-usd"></i> Pas Laku</button>
                    <button @click="tipeBayar('cod')" v-bind:class="tipe_bayar == 'cod' ? '' : 'btn-simple'" class="btn btn-round btn-warning btn-sm"><i class="fas fa-handshake"></i> Cod</button>
                  </div>
              </div>
              
              <div class="info-transaksi">
                <h5 class="info-transaksi-title">Info Transaksi</h5>
                <n-progress type="info" :value="60" label="Pesanan Diproses" show-value>
                </n-progress>
                <n-progress type="primary" :value="30" label="Pesanan Dikirim" show-value>
                </n-progress>
                <n-progress type="success" :value="10" label="Pesanan Selesai" show-value>
                </n-progress>
              </div>
            </div>
            <div class="col-md-8 mt-2">
              <div v-for="(dt, index) in 10" class="header-transaction mb-2">
                <div class="row header-tgl">
                  <div class="col-md-12">
                    <span>20 Februari 2021 12:05:00</span>
                  </div>
                </div>
                <div class="row header">
                  <div class="col-md-4 p-3">
                    <span class="d-block">No Transaksi</span>
                    <strong>IN202102210001</strong>
                  </div>
                  <div class="col-md-4 text-center header-separator p-3">
                    <span class="d-block">Status</span>
                    <strong>Selesai</strong>
                  </div>
                  <div class="col-md-4 text-right p-3">
                    <span class="d-block">Total</span>
                    <strong>Rp12.000</strong>
                  </div>
                </div>
                <div class="row mb-2 detail" v-for="(dt, idx) in 4" :key="dt.id" v-if="tipe_bayar != 'all' ? tipe_bayar == 'laku' ? idx > 2 : idx <= 2 : idx > 0">
                    <div class="col-md-2 img-produk" v-bind:style="{ backgroundImage: 'url(' + img + ')' }">
                    </div>
                    <div class="col-md-9">
                      <div class="row">
                        <div class="col-md-8 produk">
                            <strong class="nama-produk d-block">Blouse {{dt}}</strong>
                            <div class="deskripsi">
                              <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                                  Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti voluptates aut exercitationem nisi sapiente ipsa deserunt, rem cumque tempora ducimus. Illo dicta corporis velit, exercitationem nisi quaerat quam quisquam voluptatibus?
                              </span>
                            </div>
                            <span class="d-block">{{dt}}x{{formatRupiah(100, 'Rp')}}</span>
                            <n-button type="btn btn-sm btn-simple btn-info" @click.native="modals.classic = true"><i class="fas fa-comment-alt"></i> Ulasan</n-button>
                        </div>
                        <div class="col-md-4 text-right">
                          <span class="text-right harga">
                            {{formatRupiah(dt*1000, 'Rp')}}
                          </span>
                        </div>
                      </div>
                    </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <button class="btn btn-sm btn-warning"><i class="fas fa-hand-holding-usd"></i>Cod</button>
                  </div>
                </div>

              </div>
            </div>
        </div>
      </div>
    </div>

    <!-- Classic Modal -->
    <modal :show.sync="modals.classic" headerClasses="justify-content-center">
      <h4 slot="header" class="title title-up">Ulas Produk</h4>
        <div class="row">
          <div class="col-md-2 img-produk" v-bind:style="{ backgroundImage: 'url(' + img + ')' }">
          </div>
          <div class="col-md-6 produk">
              <strong class="nama-produk d-block">Blouse 1</strong>
              <div class="deskripsi">
                <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti voluptates aut exercitationem nisi sapiente ipsa deserunt, rem cumque tempora ducimus. Illo dicta corporis velit, exercitationem nisi quaerat quam quisquam voluptatibus?
                </span>
              </div>
              <span class="d-block">1x{{formatRupiah(100, 'Rp')}}</span>
          </div>
          <div class="col-md-4 text-right">
            <span class="text-right harga">
              {{formatRupiah(1*1000, 'Rp')}}
            </span>
          </div>
        </div>
    </modal>

    <modal
      :show.sync="modals.mini"
      class="modal-primary"
      :show-close="false"
      headerClasses="justify-content-center"
      type="mini"
    >
      <p class="mt-5">Detail Transaksi</p>
      <div class="row">
        <div class="header-transaction mb-2">
          <div class="row header-tgl">
            <div class="col-md-12">
              <span>20 Februari 2021 12:05:00</span>
            </div>
          </div>
          <div class="row header">
            <div class="col-md-4 p-3">
              <span class="d-block">No Transaksi</span>
              <strong>IN202102210001</strong>
            </div>
            <div class="col-md-4 text-center header-separator p-3">
              <span class="d-block">Status</span>
              <strong>Sedang diproses</strong>
            </div>
            <div class="col-md-4 text-right p-3">
              <span class="d-block">Total</span>
              <strong>Rp12.000</strong>
            </div>
          </div>
          <div class="row mb-2 detail" v-for="(dt, idx) in 4" :key="dt.id" v-if="tipe_bayar != 'all' ? tipe_bayar == 'laku' ? idx > 2 : idx <= 2 : idx > 0">
              <div class="col-md-2 img-produk" v-bind:style="{ backgroundImage: 'url(' + img + ')' }">
              </div>
              <div class="col-md-9">
                <div class="row">
                  <div class="col-md-8 produk">
                      <strong class="nama-produk d-block">Blouse {{dt}}</strong>
                      <div class="deskripsi">
                        <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti voluptates aut exercitationem nisi sapiente ipsa deserunt, rem cumque tempora ducimus. Illo dicta corporis velit, exercitationem nisi quaerat quam quisquam voluptatibus?
                        </span>
                      </div>
                      <span class="d-block">{{dt}}x{{formatRupiah(100, 'Rp')}}</span>
                  </div>
                  <div class="col-md-4 text-right">
                    <span class="text-right harga">
                      {{formatRupiah(dt*1000, 'Rp')}}
                    </span>
                  </div>
                </div>
              </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <button class="btn btn-sm btn-warning"><i class="fas fa-hand-holding-usd"></i>Cod</button>
              <n-button type="btn btn-sm btn-simple btn-info" @click.native="modals.mini = true"><i class="fas fa-info-circle"></i> Detail</n-button>
              <n-button type="btn btn-sm btn-simple btn-danger" @click.native="modals.classic = true"><i class="fas fa-truck-moving"></i> Lacak</n-button>
            </div>
          </div>

        </div>

      </div>

      <template slot="footer">
        <n-button type="danger" @click.native="modals.mini = false"
          ><i class="fas fa-arrow-left"></i>Kembali</n-button
        >
      </template>
    </modal>

    

    <!-- end row -->
  </div>
</template>
<style scoped>
  .slot {
    background-color: #aaa;
    padding: 0.5rem;
    color: white;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }

  .text-black {
    color: #000;
  }
</style>
<script>
import 'hooper/dist/hooper.css';
import { DropDown,Modal,Button,FormGroupInput,Checkbox,Radio,Tabs,TabPane,Progress,Badge } from '../../components';
import { Popover, Tooltip, DatePicker } from 'element-ui';
import _ from 'lodash'
import { ModelSelect } from 'vue-search-select'
import Datepicker from 'vuejs-datepicker';
import {en, id} from 'vuejs-datepicker/dist/locale'
import DateRangePicker from 'vue2-daterange-picker'
import 'vue2-daterange-picker/dist/vue2-daterange-picker.css'
import VueRangedatePicker from 'vue-rangedate-picker'

export default {
  name: 'index',
  bodyClass: 'index-page',
  components: {
    DropDown,
    Modal,
    [DatePicker.name]: DatePicker,
    ModelSelect,
    [Button.name]: Button,
    [Tooltip.name]: Tooltip,
    [FormGroupInput.name]: FormGroupInput,
    Tabs,
    TabPane,
    DateRangePicker,
    VueRangedatePicker,
    [Progress.name]: Progress,
    Badge

  },
  data() {
    let startDate = new Date();
    let endDate = new Date();
    endDate.setDate(endDate.getDate() + 6)
    return {
        pickers: {
          datePicker: ''
        },
        dateRange: {startDate, endDate},
        tipe_bayar:'',
        itemsToShow: 2,
        centerMode: true,
        data: 10,
        quantity: 1,
        options2: [],
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
          product_selected:[]
        },
        img: 'http://placehold.it/120x80',
        currentRouteName:''

    };
  },
  filters: {
    date(val) {
      return val ? val.toLocaleString() : ''
    }
  },
  methods: {
    tipeBayar(tipe_bayar) {
      console.log(tipe_bayar);
      if(typeof(tipe_bayar) === 'undefined'){
        this.tipe_bayar = 'all';
      }else{
        this.tipe_bayar = tipe_bayar;
      }
    },
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

  },
  mounted: function () {
  },
  created() {
    this.getCartData();
    this.tipeBayar();
    this.currentRouteName = this.$route.name;
  }
};
</script>
