<template>
  <div>
    <div class="bc-icons-2">
        <ol class="breadcrumb blue-grey lighten-4">
            <li class="breadcrumb-item"><a class="black-text" href="#">Beranda</a><i class="now-ui-icons arrows-1_minimal-right mx-2" aria-hidden="true"></i></li>
            <li class="breadcrumb-item"><a class="black-text" href="#">Pakaian</a><i class="now-ui-icons arrows-1_minimal-right mx-2" aria-hidden="true"></i></li>
            <li class="breadcrumb-item active">Women's Blouse</li>
        </ol>
    </div>
    <div class="main-detail">
      <div class="container">
        <div class="row menu-second">
            <div class="col-md-6">
              <div class="product-gallery">
                <div class="product-gallery-thumbnails">
                  <ol class="thumbnails-list list-unstyled">
                    <li><img src="/img/img-1.jpg" alt=""></li>
                    <li><img src="/img/img-2.jpg" alt=""></li>
                    <li><img src="/img/img-3.jpg" alt=""></li>
                    <li><img src="/img/img-4.jpg" alt=""></li>
                    <li><img src="/img/img-5.jpg" alt=""></li>
                  </ol>
                </div>
                <div class="product-gallery-featured img-hover-zoom">
                  <img src="/img/img-1.jpg" alt="">
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="row">
                <div class="title-div col-sm-12">
                  <div class="head-title">
                    <h1 class="detail-title">Women's Blouse</h1>
                    <span class="terjual">Terjual 21 </span>
                  </div>
                  <span>4.0</span> 
                  <div class="rate">
                    <span class="now-ui-icons objects_diamond nyala"></span>
                    <span class="now-ui-icons objects_diamond nyala"></span>
                    <span class="now-ui-icons objects_diamond nyala"></span>
                    <span class="now-ui-icons objects_diamond nyala"></span>
                    <span class="now-ui-icons objects_diamond"></span>
                    <span class="dilihat">Dilihat 21 kali</span>
                  </div>
                </div>
                <br>
                <table class="table table striped mt-5">
                    <tr>
                      <th class="label">Harga</th>
                      <th class="value">Rp20.000</th>
                      <td></td>
                    </tr>
                    <tr>
                      <th class="label">Jumlah</th>
                      <td>
                        <div class="quantity-toggle">
                          <button :class="quantity > 1 ? 'btn-danger' : 'btn-default'" class="qty-btn btn btn-round btn-sm" @click="decrement()">&mdash;</button>
                          <input type="text" class="qty" :value="quantity" readonly>
                          <button class="qty-btn btn btn-success btn-round btn-sm" @click="increment()">&#xff0b;</button>
                          <span class="now-ui-icons travel_info"> Min. pembelian 1pcs. Lebih banyak, lebih murah! </span>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th class="label">
                        Info Produk
                      </th>
                      <td>
                        <div class="row">
                          <div class="col-sm-6">
                            Berat
                          </div>
                          <div class="col-sm-6">
                            Kondisi
                          </div>
                          <div class="col-sm-6">
                            <strong>150 gram</strong>
                          </div>
                          <div class="col-sm-6">
                            <strong>Baru</strong>
                          </div>
                        </div>
                      </td>
                      <th></th>
                    </tr>
                </table>
                <button class="btn btn-danger"><span class="now-ui-icons ui-2_favourite-28"></span></button>
                <button class="btn btn-primary btn-simple">Beli</button>
                <button class="btn btn-primary">Tambah ke Keranjang</button>
                <n-button type="success btn-simple" @click.native="modals.classic = true">
                    <span class="now-ui-icons ui-2_chat-round"> </span> 
                    chat 
                </n-button>

              </div>
            </div>
            <div class="col-md-12">
              <div class="tab">
                <button class="tablinks Deskripsi active" @click="openCity(this, 'Deskripsi')">Deskripsi</button>
                <button class="tablinks Ulasan" @click="openCity(this, 'Ulasan')">Ulasan</button>
              </div>

              <div id="Deskripsi" class="tabcontent" style="display:block;">
                <h3>Deskripsi</h3>
                <p>

                  Deskripsi Masker 3Ply 3 Ply Grade Medical Bedah Medis Surgical Mask Earloop
                  Warna : Biru
                  Hijab klik : https://tokopedia.link/fM4QnMqorbb
                  KN95 klik : https://tokopedia.link/cSURGlsorbb
                  Warna Hijau klik : https://tokopedia.link/eAQEEjmorbb
                  Warna Putih klik : https://tokopedia.link/SVzN5cborbb

                  Masker 3Ply 3 Ply Grade Medical Bedah Medis Surgical Mask Earloop Standar Internasional dengan sertifikat Eropa CE & USA FDA

                  1 Box = 50 Pcs
                  1 Karton = 40 Box
                  Dibungkus plastik di dalam Box

                  Masker 3Ply 3 Ply Grade Medical Bedah Medis Surgical Mask Earloop :
                  - 3 Ply
                  Dalam ✓ Soft Absorbent Spunbond (Halus Menyerap Cairan)
                  Tengah ✓ Meltblown Filter
                  Luar ✓ Waterproof Spunbond (Anti Air)
                  - Aluminum sheet untuk menyesuaikan bentuk hidung
                  - Tali yang kuat, lentur, dan nyaman di kuping
                  - Baru, Steril, dan Higienis
                  - BFE ≥ 95% (Grade Medis)

                  *Masker grade/kualitas medis tertulis di box non-medis digunakan umum untuk kehidupan sehari hari (bukan alat kesehatan)

                  Referensi Spesifikasi Grade/Kualitas Masker Medical / Surgical / Medis / Bedah :
                  https://nasional.kompas.com/read/2020/04/17/13482291/ini-perbedaan-masker-bedah-dengan-n95-bagi-tenaga-kesehatan

                  Cara pakai:
                  1. Pastikan bagian dalam putih yang bersentuhan dengan muka dan penyangga hidung di atas.
                  2. Gantungkan tali karet di kedua telinga
                  3. Tarik bagian bawah masker hingga menutup sampai dagu
                  4. Pakai kedua tangan pada penyangga untuk menyesuaikan bentuk hidung pada kedua sisi masker
                  5. Sekali pakai lamanya tergantung pada kondisi dan langsung dibuang pada tempatnya
                  6. Hindari menyentuh masker yang sudah dipakai
                </p>
              </div>

              <div id="Ulasan" class="tabcontent">
                <h3 class="title-ulasan">Ulasan</h3>
                <span class="judul-ulasan">Women's Blouse</span>
                
                <div class="row mt-4">
                  <div class="col-sm-2 text-center">
                    <h1 class="text-center">4/5</h1>
                      <div class="rate">
                        <span class="now-ui-icons objects_diamond nyala"></span>
                        <span class="now-ui-icons objects_diamond nyala"></span>
                        <span class="now-ui-icons objects_diamond nyala"></span>
                        <span class="now-ui-icons objects_diamond nyala"></span>
                        <span class="now-ui-icons objects_diamond"></span>
                      </div>
                      <br>
                    <span>(21 Ulasan)</span>

                  </div>
                  <div class="col-sm-10">
                    <div class="ulasan-rate"><span class="now-ui-icons objects_diamond nyala"></span> 5  
                      <div class="progress">
                        <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                    <div class="ulasan-rate"><span class="now-ui-icons objects_diamond nyala"></span> 4  
                      <div class="progress">
                        <div data-percentage="0%" style="width: 10%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                    <div class="ulasan-rate"><span class="now-ui-icons objects_diamond nyala"></span> 3  
                      <div class="progress">
                        <div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                    <div class="ulasan-rate"><span class="now-ui-icons objects_diamond nyala"></span> 2  
                      <div class="progress">
                        <div data-percentage="0%" style="width: 10%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                    <div class="ulasan-rate"><span class="now-ui-icons objects_diamond nyala"></span> 1  
                      <div class="progress">
                        <div data-percentage="0%" style="width: 10%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
    </div>
    <modal :show.sync="modals.classic" :show-close="false" data-backdrop="static" data-keyboard="false" id="exampleModal" headerClasses="justify-content-center">
      <h4 slot="header" class="title title-up">Percakapan</h4>
        <!-- <skeleton-card actions round hover></skeleton-card> -->
        <ul class="chat">
          <li class="left clearfix">
              <span class="chat-img pull-left"> <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" /> </span> 
              <div class="chat-body clearfix">
                <div class="header"> <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted"> <span class="glyphicon glyphicon-time"></span>12 mins ago</small> </div>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales. </p>
              </div>
          </li>
          <li class="right clearfix">
              <span class="chat-img pull-right"> <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" /> </span> 
              <div class="chat-body clearfix">
                <div class="header">  <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>13 mins ago</small> <strong class="pull-right primary-font">Bhaumik Patel</strong> </div>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales. </p>
              </div>
          </li>
          <li class="left clearfix">
              <span class="chat-img pull-left"> <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" /> </span> 
              <div class="chat-body clearfix">
                <div class="header"> <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted"> <span class="glyphicon glyphicon-time"></span>14 mins ago</small> </div>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales. </p>
              </div>
          </li>
          <li class="right clearfix">
              <span class="chat-img pull-right"> <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" /> </span> 
              <div class="chat-body clearfix">
                <div class="header"> <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small> <strong class="pull-right primary-font">Bhaumik Patel</strong> </div>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales. </p>
              </div>
          </li>
        </ul>
      <template slot="footer">
            <fg-input
              class="no-border"
              placeholder="tulis pesan..."
              addon-right-icon="now-ui-icons users_circle-08">
            </fg-input>
            <n-button type="danger" @click.native="modals.classic = false">Tutup</n-button>
            <n-button type="primary" @click.native="modals.classic = false">kirim</n-button>
        <!-- <n-button>Nice Button</n-button> -->
      </template>
    </modal>

    <!-- end row -->
  </div>
</template>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script>
import 'hooper/dist/hooper.css';
import { Hooper, Slide,Navigation as HooperNavigation } from 'hooper';
import SkeletonCard from 'vue-skeleton-screen'
import regeneratorRuntime from "regenerator-runtime";
import { Modal,Button,FormGroupInput } from '../../components';

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
    [FormGroupInput.name]: FormGroupInput

  },
  data() {
    return {
        itemsToShow: 2,
        centerMode: true,
        data: 10,
        quantity: 1,
        modals: {
            classic: false,
            mini: false
        },

    };
  },
  methods: {
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
