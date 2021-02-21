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
        <div class="row">
        </div>
        <div class="row menu-second">
          <div class="col-md-6 mb-3">
            <fg-input
              placeholder="Cari barang di kategori ini.."
              type="text"
            >
            </fg-input>
          </div>
          <div class="col-md-6 mb-3">
            <button class="btn btn-primary mt-0"><i class="fas fa-search"></i> Cari</button>
          </div>
            <div class="col-md-2 col-sm-6 product" v-for="(n, index) in 12">
                <div class="product-grid product-wishlist">
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
                        <!-- <span class="product-new-label">Sale</! --> 
                        <span class="product-discount-label wishlist"><i class="fas fa-grin-hearts"></i> </span>
                    </div>
                    <div class="product-content content-wishlist">
                        <h3 class="title"><a href="/cat/pakaian/womens-blouse">Women's Blouse {{n}}</a></h3>
                        <div class="price">Rp{{n}}0.000<br>
                            <span>Rp1{{n}}0.000</span>
                        </div>
                        <button class="btn btn-primary btn-simple"><i class="fas fa-shopping-basket"></i> Beli</button>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </div>

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
          return this.$route.name;

    }
  }
};
</script>
