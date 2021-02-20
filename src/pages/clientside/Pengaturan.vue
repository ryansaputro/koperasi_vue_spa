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
            <div class="col-md-4 sidemenu text-center mt-2">
              <img src="https://ptetutorials.com/images/user-profile.png" class="img-profil">
              <strong class="text-capitalize d-block">{{username}}</strong>
            </div>
            <div class="col-md-8 mt-2">
              <div class="pengaturan">
                <tabs
                  slot="raw-content"
                  tab-content-classes="tab-content-padding text-center"
                >
                  <tab-pane>
                    <template slot="label">
                      <i class="fas fa-server"></i> Biodata
                    </template>
                    <p>
                      I think that’s a responsibility that I have, to push
                      possibilities, to show people, this is the level that things
                      could be at. So when you get something that has the name Kanye
                      West on it, it’s supposed to be pushing the furthest
                      possibilities. I will be the leader of a company that ends up
                      being worth billions of dollars, because I got the answers. I
                      understand culture. I am the nucleus.
                    </p>
                  </tab-pane>
                  <tab-pane>
                    <template slot="label">
                      <i class="fas fa-map-marker-alt"></i> Alamat Pengiriman
                    </template>
                    <p>
                      I will be the leader of a company that ends up being worth
                      billions of dollars, because I got the answers. I understand
                      culture. I am the nucleus. I think that’s a responsibility
                      that I have, to push possibilities, to show people, this is
                      the level that things could be at. I think that’s a
                      responsibility that I have, to push possibilities, to show
                      people, this is the level that things could be at.
                    </p>
                  </tab-pane>
                </tabs>
              </div>

            </div>
        </div>
      </div>
    </div>
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
import { DropDown,Modal,Button,FormGroupInput,Checkbox,Radio,Tabs,TabPane,Progress,Card } from '../../components';
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
    Card,
    DateRangePicker,
    VueRangedatePicker,
    [Progress.name]: Progress,

  },
  data() {
    let startDate = new Date();
    let endDate = new Date();
    endDate.setDate(endDate.getDate() + 6)
    return {
        username:'',
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
    var users = localStorage.getItem('users');
    var user = JSON.parse(users)
    this.username = user.username;

  },
  computed: {
    currentRouteName() {
          return this.$route.name;

    }
  }
};
</script>
