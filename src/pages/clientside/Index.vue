<template>
  <div>
    <div class="promo">
      <hooper :itemsToShow="1.25" pagination="yes" :infiniteScroll="true" :centerMode="true" :autoPlay="true" :playSpeed="2500">
        <slide>
          <img class="slide-promosi" src="img/promo.jpg">
        </slide>
        <slide>
          <img class="slide-promosi" src="img/dapur.jpg">
        </slide>
        <slide>
          <img class="slide-promosi" src="img/promo.jpg">
        </slide>
        <slide>
          <img class="slide-promosi" src="img/dapur.jpg">
        </slide>
        <slide>
          <img class="slide-promosi" src="img/promo.jpg">
        </slide>
        <slide>
          <img class="slide-promosi" src="img/dapur.jpg">
        </slide>
        <hooper-navigation slot="hooper-addons"></hooper-navigation>
      </hooper>
    </div>
    <div class="main">
      <div class="container">
        <div class="row menu-second">
            <div class="col-md-12 kategori">
            <h3 class="title text-capitalize">Kategori {{kategori}}</h3>
            <div class="row" v-if="kategori != 'lainnya'">
                <router-link to="categories/sembako" class="col-md-3 categories" tag="div">
                    <img class="img-cat" src="https://img.icons8.com/nolan/2x/kawaii-rice.png">
                    <span>Sembako</span>
                </router-link>
                <router-link to="categories/smartphone" class="col-md-5 large-cat categories" style="margin-left:10px;" tag="div">
                    <img class="img-cat" src="https://img.icons8.com/ultraviolet/2x/iphone.png">
                    <span>Smartphone</span>
                </router-link>
                <router-link to="categories/perkakas" class="col-md-3 categories" style="margin-left:10px;" tag="div">
                    <img class="img-cat" src="https://img.icons8.com/nolan/344/kitchenwares.png">
                    <span>Perkakas</span>
                </router-link>
                <router-link to="categories/elektronik" class="col-md-5 large-cat categories" style="margin-top:10px;" tag="div">
                    <img class="img-cat" src="https://img.icons8.com/nolan/344/tv-show.png">
                    <span>Elektronik</span>
                </router-link>
                <router-link to="categories/sekolah" class="col-md-3 categories" style="margin-top:10px;margin-left:10px;" tag="div">
                    <img class="img-cat" src="https://img.icons8.com/nolan/344/school.png">
                    <span>Sekolah</span>
                </router-link>
                <div class="col-md-3 categories" @click="kategoriLainnya('lainnya')" style="margin-top:10px;margin-left:10px;">
                    <img class="img-cat" src="https://img.icons8.com/nolan/344/more.png">
                    <span>Lainnya</span>
                </div>
            </div>
            <div class="row" v-else>
                <div class="col-md-12">
                    <router-link :to="'categories/'+data" class="btn btn-default text-capitalize" v-for="(data, idx) in allkategori" :key="idx"><strong>{{data}}</strong></router-link>
                    <button class="btn btn-danger" @click="kategoriLainnya('back')"><strong><i class="fas fa-arrow-left"></i> Kembali</strong></button>
                </div>
            </div>
            </div>
        </div>
      </div>
    </div>
    <div class="row product-list">
        <!-- product -->
        <div class="container">
        <h3 class="title mb-3">Produk baru, nih!</h3>
            <div class="row">
                <div class="col-md-2 col-sm-6 product" v-for="(n, index) in 18">
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
                <div class="col-md-12 text-center">
                <button class="btn btn-primary text-center">Muat Lebih Banyak</button>
                </div>
            </div>
        </div>
        <!-- end product -->
    </div>
    <div class="main">
        <div class="container">
            <h3 class="title mb-3">Produk terlaris! <a href="#" class="lihat-semua">Lihat semua</a></h3> 
            <div class="row">
                <div class="col-md-2 col-sm-6 product" v-for="(n, index) in 6">
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
    <!-- end row -->
  </div>
</template>
<script>
import 'hooper/dist/hooper.css';
import { Hooper, Slide,Navigation as HooperNavigation } from 'hooper';
import SkeletonCard from 'vue-skeleton-screen'
import regeneratorRuntime from "regenerator-runtime";
import { Modal,Button } from '../../components';

export default {
  name: 'index',
  bodyClass: 'index-page',
  components: {
    Hooper,
    Slide,
    HooperNavigation,
    SkeletonCard,
    regeneratorRuntime,
    Modal,
    [Button.name]: Button,

  },
  data() {
    return {
        itemsToShow: 2,
        centerMode: true,
        data: 10,
        kategori:'',
        allkategori:['sembako', 'smartphone', 'perkakas', 'elektronik', 'sekolah', 'buku', 'sepeda motor', 'sepeda', 'bahan bangunan', 'alat dapur', 'alat bangunan', 'alat otomotif']
    };
  },
  methods: {
      kategoriLainnya(nama_kat){
          if(nama_kat == 'lainnya'){
              this.kategori = 'lainnya';
          }else{
              this.kategori = '';
          }
      }
  },
  created() {
      this.kategoriLainnya();
  }
};
</script>
