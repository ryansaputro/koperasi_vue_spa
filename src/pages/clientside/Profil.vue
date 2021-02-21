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
            <div class="col-md-4 sidemenu mt-1">
              <div class="text-center mb-3">
                <img src="https://ptetutorials.com/images/user-profile.png" class="img-profil">
                <h5>
                  <strong class="text-capitalize d-block">{{username}}</strong>
                    <n-button type="primary" class="btn-sm" @click.native="modals.classic = true">
                      <i class="fas fa-user-edit"></i> Edit
                    </n-button>
                </h5>
              </div>
              <div class="col-md-12">
                <table class="table">
                  <tr>
                    <th>Poin</th>
                    <th>3000 pts</th>
                  </tr>
                  <tr>
                    <th>Kupon</th>
                    <th>3 kupon</th>
                  </tr>
                  <tr>
                    <th>Total Transaksi</th>
                    <th>30 transaksi/bln</th>
                  </tr>
                  <tr>
                    <th>Jenis Member</th>
                    <th><badge type="default">Silver</badge></th>
                  </tr>
                </table>
              </div>
            </div>
            <div class="col-md-8 pengaturan mt-1">
                <h5 class="info-transaksi-title"><i class="fas fa-info-circle"></i> Info Transaksi</h5>
                <date-range-picker
                  v-model="dateRange"
                ></date-range-picker>
                <button class="btn btn-sm btn-default" type="button"><i class="fas fa-print"></i> Print</button>
                <button class="btn btn-sm btn-success" type="button"><i class="fas fa-file-excel"></i> Excel</button>
                <button class="btn btn-sm btn-danger" type="button"><i class="fas fa-file-pdf"></i> Pdf</button>

                <h5 class="info-transaksi-title"><i class="fas fa-info-circle"></i> Detail Transaksi</h5>
                <button class="btn btn-sm btn-success" type="button"><i class="fas fa-hand-holding-usd"></i> Pas Laku</button>
                <n-progress type="info" :value="60" label="Pesanan Diproses" show-value>
                </n-progress>
                <n-progress type="primary" :value="30" label="Pesanan Dikirim" show-value>
                </n-progress>
                <n-progress type="success" :value="10" label="Pesanan Selesai" show-value>
                </n-progress>
                <button class="btn btn-sm btn-warning" type="button"><i class="fas fa-handshake"></i> Cod</button>
                <n-progress type="info" :value="60" label="Pesanan Diproses" show-value>
                </n-progress>
                <n-progress type="primary" :value="30" label="Pesanan Dikirim" show-value>
                </n-progress>
                <n-progress type="success" :value="10" label="Pesanan Selesai" show-value>
                </n-progress>
                <button class="btn btn-sm btn-info" type="button"><i class="fas fa-money-check-alt"></i> Total</button>
                <n-progress type="info" :value="10" label="Total Transaksi" show-value>
                </n-progress>

            </div>

        </div>
      </div>
    </div>
    <!-- end row -->
    <modal :show.sync="modals.classic" id="exampleModal" headerClasses="justify-content-center">
      <h4 slot="header" class="title title-up mt-3 mb-2"><i class="fas fa-user-edit"></i> Update Profil</h4>
          
          <div class="row mt-3">
            <div class="col-md-6">
              <p class="info-transaksi-title"><i class="fas fa-server"></i> Biodata</p>
                <fg-input
                  class="no-border"
                  placeholder="Nama"
                >
                </fg-input>
                <fg-input
                  type="email"
                  class="no-border"
                  placeholder="Email"
                >
                </fg-input>
                <fg-input
                  type="password"
                  class="no-border input-lg"
                  placeholder="Password..."
                >
                </fg-input>
                <fg-input
                  class="no-border"
                  placeholder="Username"
                >
                </fg-input>
                <fg-input
                  class="no-border"
                  placeholder="No telp"
                >
                </fg-input>

            </div>
            <div class="col-md-6">
              <p class="info-transaksi-title"><i class="fas fa-map-marker-alt"></i> Alamat Pengiriman</p>
                <fg-input
                  class="no-border"
                  placeholder="Nama"
                >
                </fg-input>
                <fg-input
                  type="email"
                  class="no-border"
                  placeholder="Email"
                >
                </fg-input>
                <fg-input
                  type="password"
                  class="no-border input-lg"
                  placeholder="Password..."
                >
                </fg-input>
                <fg-input
                  class="no-border"
                  placeholder="Username"
                >
                </fg-input>

            </div>
          </div>
      <template slot="footer">
        <n-button type="danger" @click.native="modals.classic = false"
          ><i class="fas fa-long-arrow-alt-left"></i> Kembali</n-button
        >
        <n-button class="btn btn-primary"><i class="fas fa-save"></i> Simpan</n-button>
      </template>
    </modal>
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
import { DropDown,Modal,Button,FormGroupInput,Checkbox,Radio,Tabs,TabPane,Progress,Card,Badge } from '../../components';
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
    Badge

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
