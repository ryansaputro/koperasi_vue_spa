<template>
  <div>
    <!-- <div class="bc-icons-2">
        <ol class="breadcrumb blue-grey lighten-4">
            <li class="breadcrumb-item"><a class="black-text" href="/">Beranda</a> > </li>
            <li class="breadcrumb-item"><a class="black-text" href="/">Kategori</a> > </li>
            <li class="breadcrumb-item active text-capitalize">{{currentRouteName}}</li>
        </ol>
    </div> -->
    <div class="container br-breadcrumb">
      <div class="row">
        <div class="col-md-12">
            Beranda > Kategori > <span class="text-capitalize">{{currentRouteName}}</span>
        </div>
      </div>
    </div>
    <div class="main-detail">
      <div class="container">
        <div class="row">
        </div>
        <div class="row menu-second">
          <div class="col-md-5 bee-col-sm-offset-8 filter mb-3">
            <span class="mt-2">Menampilkan 2000 produk untuk kategori "<strong class="text-capitalize">{{currentRouteName}}</strong>"</span>
          </div>
          <div class="col-md-3 mb-3">
            <select class="form-control">
              <option>terbaru</option>
              <option>murah</option>
            </select>
          </div>
          <!-- <div class="row"> -->
            <div class="col-md-4 sidemenu produk-perkategori">
              <strong class="filter">Filter di kategori ini :</strong>
              <div class="input-group"><!----> <input aria-describedby="addon-right addon-left" placeholder="Yuk cari barangmu disini ...." class="form-control"> <span class="input-group-addon input-group-append"><i class="input-group-text now-ui-icons ui-1_zoom-bold"></i></span>  <!----></div>
              <hr>
              <strong class="tipe-bayar">Tipe Bayar :</strong>
              <button @click="tipeBayar('all')" v-bind:class="tipe_bayar == 'all' ? '' : 'btn-simple'" class="btn btn-round btn-info btn-sm"><i class="fas fa-money-check-alt"></i> Semua</button>
              <button @click="tipeBayar('laku')" v-bind:class="tipe_bayar == 'laku' ? '' : 'btn-simple'" class="btn btn-round btn-success btn-sm"><i class="fas fa-hand-holding-usd"></i> Pas Laku</button>
              <button @click="tipeBayar('cod')" v-bind:class="tipe_bayar == 'cod' ? '' : 'btn-simple'" class="btn btn-round btn-warning btn-sm"><i class="fas fa-handshake"></i> Cod</button>
              <hr>
              <strong>Harga : </strong>
              <fg-input
                placeholder="Harga minimal"
                type="number"
              >
              </fg-input>
              <fg-input
                placeholder="Harga maksimal"
                type="number"
              >
              </fg-input>
              <hr>
              <strong>Kondisi :</strong>
              <n-checkbox v-model="checkboxes.unchecked">Baru</n-checkbox>
              <n-checkbox v-model="checkboxes.checked">Bekas</n-checkbox>

              <button class="btn btn-info btn-block" type="button"><i class="fas fa-filter"></i> Filter</button>
            </div>
            <div class="col-md-8">
              <div class="row">
                <div class="col-md-3 col-sm-6 product" v-for="(n, index) in 12">
                    <div class="product-grid">
                        <div class="product-image">
                            <a href="/cat/pakaian/womens-blouse">
                                <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-1.jpg">
                                <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-2.jpg">
                            </a>
                            <ul class="social">
                                <li><a href="/cat/pakaian/womens-blouse" data-tip="Detail"><i class="fas fa-search"></i></a></li>
                                <li><a href="" data-tip="+ Wishlist"><i class="fas fa-grin-hearts"></i></a></li>
                                <li><a href="" data-tip="+ Keranjang"><i class="fas fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Sale</span>
                            <span class="product-discount-label">20%</span>
                        </div>
                        <ul class="rating">
                            <li class="now-ui-icons objects_diamond"></li>
                            <li class="now-ui-icons objects_diamond"></li>
                            <li class="now-ui-icons objects_diamond"></li>
                            <li class="now-ui-icons objects_diamond"></li>
                            <li class="now-ui-icons objects_diamond disable"></li>
                        </ul>
                        <div class="product-content">
                            <h3 class="title"><a href="/cat/pakaian/womens-blouse">Women's Blouse {{n}}</a></h3>
                            <div class="price">Rp{{n}}0.000<br>
                                <span>Rp1{{n}}0.000</span>
                            </div>
                            <ul class="rating">
                                <i class="fas fa-gem"></i>
                                <i class="fas fa-gem"></i>
                                <i class="fas fa-gem"></i>
                                <i class="fas fa-gem"></i>
                                <i class="fas fa-gem disable"></i>
                            </ul>
                        </div>
                    </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>

    <!-- Classic Modal -->
    <modal :show.sync="modals.classic" headerClasses="justify-content-center">
      <h4 slot="header" class="title title-up">Lacak Pesanan</h4>
        <table class="table table-bordered track_tbl">
            <thead>
                <tr>
                    <th></th>
                    <th>No Pesanan</th>
                    <th>Status</th>
                    <th>Jam</th>
                </tr>
            </thead>
            <tbody>
                <tr class="active">
                    <td class="track_dot">
                        <span class="track_line"></span>
                    </td>
                    <td>01</td>
                    <td>Dispatched from distibutor address</td>
                    <td>31/07/2018 22:24:PM</td>
                </tr>
                <tr>
                    <td class="track_dot">
                        <span class="track_line"></span>
                    </td>
                    <td>01</td>
                    <td>Dispatched from distibutor address</td>
                    
                    <td>31/07/2018 22:24:PM</td>
                </tr>
                <tr>
                    <td class="track_dot">
                        <span class="track_line"></span>
                    </td>
                    <td>01</td>
                    <td>Dispatched from distibutor address</td>
                    
                    <td>31/07/2018 22:24:PM</td>
                </tr>
                <tr>
                    <td class="track_dot">
                        <span class="track_line"></span>
                    </td>
                    <td>01</td>
                    <td>Dispatched from distibutor address</td>
                    
                    <td>31/07/2018 22:24:PM</td>
                </tr>
                <tr>
                    <td class="track_dot">
                        <span class="track_line"></span>
                    </td>
                    <td>01</td>
                    <td>Dispatched from distibutor address</td>
                    
                    <td>31/07/2018 22:24:PM</td>
                </tr>
                <tr>
                    <td class="track_dot">
                        <span class="track_line"></span>
                    </td>
                    <td>01</td>
                    <td>Dispatched from distibutor address</td>
                    
                    <td>31/07/2018 22:24:PM</td>
                </tr>
                <tr>
                    <td class="track_dot">
                        <span class="track_line"></span>
                    </td>
                    <td>01</td>
                    <td>Dispatched from distibutor address</td>
                    
                    <td>31/07/2018 22:24:PM</td>
                </tr>
            </tbody>
        </table>
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
import { DropDown,Modal,Button,FormGroupInput,Checkbox,Radio,Tabs,TabPane,Progress } from '../../components';
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
    [Checkbox.name]: Checkbox,
    Tabs,
    TabPane,
    DateRangePicker,
    VueRangedatePicker,
    [Progress.name]: Progress,

  },
  data() {
    let startDate = new Date();
    let endDate = new Date();
    endDate.setDate(endDate.getDate() + 6)
    return {
        checkboxes: {
          unchecked: false,
          checked: true,
          disabledUnchecked: false,
          disabledChecked: true
        },
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
        img: 'http://placehold.it/120x80'

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
  },
  computed: {
    currentRouteName() {
          return this.$route.params.nama_kategori;

    }
  }
};
</script>
