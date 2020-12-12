<template>
  <div>
    <div class="bc-icons-2">
        <ol class="breadcrumb blue-grey lighten-4">
            <li class="breadcrumb-item"><a class="black-text" href="#">Beranda</a><i class="now-ui-icons arrows-1_minimal-right mx-2" aria-hidden="true"></i></li>
            <li class="breadcrumb-item active">Keranjang</li>
        </ol>
    </div>
    <div class="main-detail">
      <div class="container">
        <div class="row menu-second">
            <div class="col-md-12">
              
              <!-- <div class="item-header">
                <div class="row">
                  <div class="col-sm-6">
                    <strong>Nama</strong>
                  </div>
                  <div class="col-sm-2 text-center">
                    <strong>Jumlah</strong>
                  </div>
                  <div class="col-sm-4 text-right">
                    <strong>Harga</strong>
                  </div>
                </div>
              </div> -->

              <div class="item-body-keranjang">
                <div class="row mb-2" id="numb_1">
                  <div class="col-md-1">
                    <input type="checkbox" class="form-control checkbox-produk" @change="productSelected()"  v-model="form.product_selected" value="1">
                  </div>
                  <div class="col-md-2 img-produk" v-bind:style="{ backgroundImage: 'url(' + img + ')' }">
                    <!-- <img class="img-responsive" src="" alt="prewiew"> -->
                  </div>
                  <div class="col-md-5">
                      <p class="nama-produk">Women's Blouse</p>
                      <div class="deskripsi">
                        <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, repellat corporis reprehenderit quas doloremque atque rem! Rem iure molestiae, laboriosam sint fugit vel enim, quos necessitatibus et quas possimus culpa?
                        </span>
                      </div>
                      <div class="quantity-toggle">
                        <button :class="quantity > 1 ? 'btn-danger' : 'btn-default'" class="qty-btn btn btn-round btn-sm" @click="decrement()">&mdash;</button>
                        <input type="text" class="qty" :value="quantity" readonly>
                        <button class="qty-btn btn btn-success btn-round btn-sm" @click="increment()">&#xff0b;</button>
                        <button class="btn btn-danger btn-simple btn-sm">
                          <span class="now-ui-icons ui-1_simple-remove"> Hapus dr keranjang</span>
                        </button>
                      </div>

                        <fg-input
                          class="no-border mt-2"
                          placeholder="catatan..."
                          addon-right-icon="now-ui-icons design-2_ruler-pencil">
                        </fg-input>
                  </div>
                  <div class="col-md-4 text-right harga">$20,00</div>
                </div>
                <div class="row mb-2" id="numb_2">
                  <div class="col-md-1">
                    <input type="checkbox" class="form-control checkbox-produk" @change="productSelected()"  v-model="form.product_selected" value="2">
                  </div>
                  <div class="col-md-2 img-produk" v-bind:style="{ backgroundImage: 'url(' + img + ')' }">
                    <!-- <img class="img-responsive" src="" alt="prewiew"> -->
                  </div>
                  <div class="col-md-5">
                      <p class="nama-produk">Women's Blouse</p>
                      <div class="deskripsi">
                        <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, repellat corporis reprehenderit quas doloremque atque rem! Rem iure molestiae, laboriosam sint fugit vel enim, quos necessitatibus et quas possimus culpa?
                        </span>
                      </div>
                      <div class="quantity-toggle">
                        <button :class="quantity > 1 ? 'btn-danger' : 'btn-default'" class="qty-btn btn btn-round btn-sm" @click="decrement()">&mdash;</button>
                        <input type="text" class="qty" :value="quantity" readonly>
                        <button class="qty-btn btn btn-success btn-round btn-sm" @click="increment()">&#xff0b;</button>
                        <button class="btn btn-danger btn-simple btn-sm">
                          <span class="now-ui-icons ui-1_simple-remove"> Hapus dr keranjang</span>
                        </button>
                      </div>

                        <fg-input
                          class="no-border mt-2"
                          placeholder="catatan..."
                          addon-right-icon="now-ui-icons design-2_ruler-pencil">
                        </fg-input>
                  </div>
                  <div class="col-md-4 text-right harga">$20,00</div>
                </div>
                <div class="row mb-2" id="numb_3">
                  <div class="col-md-1">
                    <input type="checkbox" class="form-control checkbox-produk" @change="productSelected()"  v-model="form.product_selected" value="3">
                    <!-- <n-checkbox v-model="form.product_selected" @change="productSelected()"  v-model="form.product_selected" value="true"></n-checkbox> -->
                  </div>
                  <div class="col-md-2 img-produk" v-bind:style="{ backgroundImage: 'url(' + img + ')' }">
                    <!-- <img class="img-responsive" src="" alt="prewiew"> -->
                  </div>
                  <div class="col-md-5">
                      <p class="nama-produk">Women's Blouse</p>
                      <div class="deskripsi">
                        <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, repellat corporis reprehenderit quas doloremque atque rem! Rem iure molestiae, laboriosam sint fugit vel enim, quos necessitatibus et quas possimus culpa?
                        </span>
                      </div>
                      <div class="quantity-toggle">
                        <button :class="quantity > 1 ? 'btn-danger' : 'btn-default'" class="qty-btn btn btn-round btn-sm" @click="decrement()">&mdash;</button>
                        <input type="text" class="qty" :value="quantity" readonly>
                        <button class="qty-btn btn btn-success btn-round btn-sm" @click="increment()">&#xff0b;</button>
                        <button class="btn btn-danger btn-simple btn-sm">
                          <span class="now-ui-icons ui-1_simple-remove"> Hapus dr keranjang</span>
                        </button>
                      </div>

                        <fg-input
                          class="no-border mt-2"
                          placeholder="catatan..."
                          addon-right-icon="now-ui-icons design-2_ruler-pencil">
                        </fg-input>
                  </div>
                  <div class="col-md-4 text-right harga">$20,00</div>
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
                <n-button type="btn btn-primary btn-block" @click.native="modals.classic = true">
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
              <div class="item-header">
                <div class="row">
                  <div class="col-sm-6">
                    <strong>Nama</strong>
                  </div>
                  <div class="col-sm-2 text-right">
                    <strong>Jumlah</strong>
                  </div>
                  <div class="col-sm-4 text-right pr-5">
                    <strong>Harga</strong>
                  </div>
                </div>
              </div>
              <div class="item-body">
                <div class="row">
                  <div class="col-sm-6">
                    <p class="nama-produk">Women's Blouse</p>
                      <div class="deskripsi">
                        <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, repellat corporis reprehenderit quas doloremque atque rem! Rem iure molestiae, laboriosam sint fugit vel enim, quos necessitatibus et quas possimus culpa?
                        </span>
                      </div>
                  </div>
                  <div class="col-sm-2 text-right">
                      <p class="nama-produk">2</p>
                  </div>
                  <div class="col-sm-4 text-right pr-4">
                      <p class="nama-produk">$40,00</p>
                  </div>
                  <div class="col-sm-6">
                    <p class="nama-produk">Women's Blouse</p>
                      <div class="deskripsi">
                        <span class="d-inline-block text-truncate text-nowrap text-deskripsi">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, repellat corporis reprehenderit quas doloremque atque rem! Rem iure molestiae, laboriosam sint fugit vel enim, quos necessitatibus et quas possimus culpa?
                        </span>
                      </div>
                  </div>
                  <div class="col-sm-2 text-right">
                      <p class="nama-produk">2</p>
                  </div>
                  <div class="col-sm-4 text-right pr-4">
                      <p class="nama-produk">$40,00</p>
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
                <strong>4 item</strong>
              </div>
              <div class="col-sm-4 text-right">
                <strong>$80,00</strong>
              </div>
              <div class="col-sm-8">
                <strong>Ongkir</strong>
              </div>
              <div class="col-sm-4 text-right">
                <strong>$1,00</strong>
              </div>
              <div class="col-sm-8">
                <strong>Subtotal</strong>
              </div>
              <div class="col-sm-4 text-right">
                <strong>$81,00</strong>
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
        <input type="reset" class="btn btn-danger" value="RESET">
        <n-button type="success" @click.native="modals.mini = false"
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
        <!-- <strong v-if="form.label == ''">label alamat harus diisi.</strong> -->
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
