<template>
  <div>
    <div class="bc-icons-2">
        <ol class="breadcrumb blue-grey lighten-4">
            <li class="breadcrumb-item"><a class="black-text" href="#">Beranda</a><i class="now-ui-icons arrows-1_minimal-right mx-2" aria-hidden="true"></i></li>
            <li class="breadcrumb-item active">Daftar Pesanan</li>
        </ol>
    </div>
    <div class="main-detail">
      <div class="container">
        <div class="row">
        </div>
        <div class="row menu-second">
          <div class="col-md-8 bee-col-sm-offset-8 filter">
            <button class="btn btn-round btn-primary btn-simple">Semua</button>
            <button class="btn btn-round btn-primary btn-simple">Pesanan Diproses</button>
            <button class="btn btn-round btn-primary btn-simple">Pesanan Dikirim</button>
            <button class="btn btn-round btn-primary btn-simple">Pesanan Selesai</button>
          </div>
          <!-- <div class="row"> -->
            <div class="col-md-4 sidemenu">
              <strong class="tanggal">Tanggal :</strong>
              <date-range-picker
                v-model="dateRange"
              ></date-range-picker>
              <strong class="filter">Filter :</strong>
              <div class="input-group"><!----> <input aria-describedby="addon-right addon-left" placeholder="Yuk cari barangmu disini ...." class="form-control"> <span class="input-group-addon input-group-append"><i class="input-group-text now-ui-icons ui-1_zoom-bold"></i></span>  <!----></div>
              <strong class="tipe-bayar">Tipe Bayar :</strong>
              <button class="btn btn-round btn-primary btn-simple btn-sm">COD</button>
              <button class="btn btn-round btn-success btn-simple btn-sm">Pas Laku</button>
              
              
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
            <div class="col-md-8">
              <div class="header-transaction row mb-2" v-for="(data, idx) in 20" :key="idx">
                <div class="col-sm-6 mb-2">
                  <br>
                </div>
                <div class="col-sm-6">
                </div>
                <hr>
                <div class="col-sm-2">
                  <img src="img/bg1.jpg" alt="" class="img-raised" />
                </div>
                <div class="col-sm-10">
                  <span class="tgl-belanja">2020-12-12 23:50:32</span>
                  <!-- <p class="nama-produk">Women's Blouse</p> -->
                  <drop-down tag="li" title="Women's Blouse" class="ikon-style"> 
                    <nav-link class="dropdown-item setting">
                      <n-button type="btn btn-info btn-simple btn-round" @click.native="modals.classic = true">
                          <i class="now-ui-icons shopping_delivery-fast"></i> Detail Pesanan
                      </n-button>
                      <br>
                      <n-button type="btn btn-primary btn-simple btn-round" @click.native="modals.classic = true">
                          <i class="now-ui-icons shopping_delivery-fast"></i> Lacak Pesanan
                      </n-button>
                    </nav-link>
                  </drop-down>

                    <div class="deskripsi">
                      <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                          Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, repellat corporis reprehenderit quas doloremque atque rem! Rem iure molestiae, laboriosam sint fugit vel enim, quos necessitatibus et quas possimus culpa?
                      </span>
                    </div>
                  <p>1 produk</p>
                </div>
                <div class="col-md-12">
                  <p>Total Belanja : <span class="total-belanja">$40,00</span></p>
                </div>
              </div>
            </div>
          <!-- </div> -->
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
        pickers: {
          datePicker: ''
        },
        dateRange: {startDate, endDate},
        en: en,
        id: id,
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
    productSelected (e) {
      console.log(this.form.product_selected);
    },
    //kategori reset
    reset2 () {
        this.item2 = ''
    },
    //value from kategori
    selectFromParentComponent2 () {
        this.item2 = this.options2[0].value
    },
    increment () {
      this.quantity++
    },
    decrement () {
      if(this.quantity === 1) {
        alert('Negative quantity not allowed')
      } else {
        this.quantity--
      }
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

    // show popover
    // $(".main-questions").popover('show');
  }
};
</script>
