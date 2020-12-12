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
        <div class="row menu-second">
          <div class="header-transaction row mb-2">
            <div class="col-sm-6 mb-2">
              <span class="now-ui-icons shopping_bag-16 icon-belanja"></span>
              <span class="belanja">Belanja</span>
              <br>
            </div>
            <div class="col-sm-6">
              <drop-down tag="li" title="" class="text-right pull-right ikon-style" icon="now-ui-icons loader_gear">
                <nav-link class="dropdown-item">
                  <n-button type="btn btn-primary btn-simple" @click.native="modals.classic = true">
                      <i class="now-ui-icons shopping_delivery-fast"></i> Lacak Pesanan
                  </n-button>
                </nav-link>
              </drop-down>
              <span class="badge badge-primary text-right pull-right">sukses</span>
            </div>
            <hr>
            <div class="col-sm-2">
              <img src="img/bg1.jpg" alt="" class="img-raised" />
            </div>
            <div class="col-sm-10">
              <span class="tgl-belanja">2020-12-12 23:50:32</span>
              <p class="nama-produk">Women's Blouse</p>
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

          <div class="header-transaction row mb-2">
            <div class="col-sm-6 mb-2">
              <span class="now-ui-icons shopping_bag-16 icon-belanja"></span>
              <span class="belanja">Belanja</span>
              <br>
            </div>
            <div class="col-sm-6">
              <drop-down tag="li" title="" class="text-right pull-right ikon-style" icon="now-ui-icons loader_gear">
                <nav-link class="dropdown-item">
                  <n-button type="btn btn-primary btn-simple" @click.native="modals.classic = true">
                      <i class="now-ui-icons shopping_delivery-fast"></i> Lacak Pesanan
                  </n-button>
                </nav-link>
              </drop-down>
              <span class="badge badge-primary text-right pull-right">sukses</span>
            </div>
            <hr>
            <div class="col-sm-2">
              <img src="img/bg1.jpg" alt="" class="img-raised" />
            </div>
            <div class="col-sm-10">
              <span class="tgl-belanja">2020-12-12 23:50:32</span>
              <p class="nama-produk">Women's Blouse</p>
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

          <div class="header-transaction row mb-2">
            <div class="col-sm-6 mb-2">
              <span class="now-ui-icons shopping_bag-16 icon-belanja"></span>
              <span class="belanja">Belanja</span>
              <br>
            </div>
            <div class="col-sm-6">
              <drop-down tag="li" title="" class="text-right pull-right ikon-style" icon="now-ui-icons loader_gear">
                <nav-link class="dropdown-item">
                  <n-button type="btn btn-primary btn-simple" @click.native="modals.classic = true">
                      <i class="now-ui-icons shopping_delivery-fast"></i> Lacak Pesanan
                  </n-button>
                </nav-link>
              </drop-down>
              <span class="badge badge-primary text-right pull-right">sukses</span>
            </div>
            <hr>
            <div class="col-sm-2">
              <img src="img/bg1.jpg" alt="" class="img-raised" />
            </div>
            <div class="col-sm-10">
              <span class="tgl-belanja">2020-12-12 23:50:32</span>
              <p class="nama-produk">Women's Blouse</p>
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

              <!-- <tabs
                pills
                class="nav-align-center"
                tab-content-classes="gallery"
                tab-nav-classes="nav-pills-just-icons"
                type="primary"
              > -->
                <!-- <tab-pane title="Profile">
                  <i slot="label" class="now-ui-icons design_image"></i>

                  <div class="col-md-10 ml-auto mr-auto">
                    <div class="row collections text-center">
                      <div class="track mr-1 col-md-2">
                        <span class="now-ui-icons education_paper"></span>
                        <p class="label-track">Dipesan(12)</p>
                      </div>
                      <div class="track mr-1 col-md-2">
                        <span class="now-ui-icons loader_refresh"></span>
                        <p class="label-track">Diproses(12)</p>
                      </div>
                      <div class="track mr-1 col-md-2">
                        <span class="now-ui-icons shopping_delivery-fast"></span>
                        <p class="label-track">Dikirim(12)</p>
                      </div>
                      <div class="track mr-1 col-md-2">
                        <span class="now-ui-icons shopping_shop"></span>
                        <p class="label-track">Sampai(12)</p>
                      </div>
                      <div class="track mr-1 col-md-2">
                        <span class="now-ui-icons business_money-coins"></span>
                        <p class="label-track">Bayar(12)</p>
                      </div>
                      <div class="track col-md-2">
                        <span class="now-ui-icons ui-1_check"></span>
                        <p class="label-track">Selesai(12)</p>
                      </div>
                    </div>
                  </div>
                </tab-pane> -->

                <!-- <tab-pane title="Home">
                  <i slot="label" class="now-ui-icons location_world"></i>

                  <div class="col-md-10 ml-auto mr-auto">
                    <div class="row collections">
                      <div class="col-md-6">
                        <img src="img/bg1.jpg" alt="" class="img-raised" />
                        <img src="img/bg3.jpg" alt="" class="img-raised" />
                      </div>
                      <div class="col-md-6">
                        <img src="img/bg8.jpg" alt="" class="img-raised" />
                        <img src="img/bg7.jpg" alt="" class="img-raised" />
                      </div>
                    </div>
                  </div>
                </tab-pane> -->

              <!-- </tabs> -->

        </div>
      </div>
    </div>

    <el-popover
            ref="popover1"
            popper-class="popover popover-primary"
            placement="left"
            width="200"
            trigger="click">
      <h3 class="popover-header">Silahkan lengkapi Alamat Pengiriman</h3>
      <div class="popover-body">
        <!-- <strong v-if="form.label == ''">label alamat harus diisi.</strong> -->
        <strong v-if="form.penerima == ''">penerima harus diisi.</strong>
        <strong v-if="form.handphone == ''">handphone harus diisi.</strong>
        <strong v-if="form.alamat == ''">alamat harus diisi.</strong>
      </div>
    </el-popover>

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

<script>
import 'hooper/dist/hooper.css';
import { Hooper, Slide,Navigation as HooperNavigation } from 'hooper';
import SkeletonCard from 'vue-skeleton-screen'
import regeneratorRuntime from "regenerator-runtime";
import { DropDown,Modal,Button,FormGroupInput,Checkbox,Radio,Tabs,TabPane } from '../../components';
import { Popover, Tooltip, DatePicker } from 'element-ui';
import _ from 'lodash'
import { ModelSelect } from 'vue-search-select'

export default {
  name: 'index',
  bodyClass: 'index-page',
  components: {
    DropDown,
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
    Tabs,
    TabPane

  },
  data() {
    return {
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
