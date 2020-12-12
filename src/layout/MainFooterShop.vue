<template>
  <footer
    class="footer"
    :class="{ [`footer-${type}`]: type }"
    :data-background-color="backgroundColor"
  >
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h5 class="title">Toko Kita</h5>
          <ul class="tentang">
            <li>
              <a href="#">Tentang Toko Kita</a>
            </li>
            <li>
              <a href="#">Karir</a>
            </li>
            <li>
              <a href="#">Blog</a>
            </li>
            <li>
              <a href="#">Kantor Cabang</a>
            </li>
          </ul>
          <h5 class="title">Partner Kita</h5>
           <a href="#">
            <img src="/img/kementrian.jpg" style="width:30px;" alt="" />
          </a>
           <a href="#">
            <img src="/img/umkm.png" style="width:90px;" alt="" />
          </a>
           <a href="#">
            <img src="/img/koperasi.jpg" style="width:30px;" alt="" />
          </a>
           <a href="#">
            <img src="/img/astra.png" style="width:30px;" alt="" />
          </a>
        </div>
        <div class="col-md-3">
          <h5 class="title">Koperasi</h5>
          <ul class="tentang">
            <li>
              <a href="#">Cara Daftar</a>
            </li>
            <li>
              <a href="#">Cara Beli</a>
            </li>
          </ul>
          <h5 class="title">Pembeli</h5>
          <ul class="tentang">
            <li>
              <a href="#">Cara Daftar</a>
            </li>
            <li>
              <a href="#">Cara Beli</a>
            </li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5 class="title">Bantuan & Panduan</h5>
          <ul class="tentang">
            <li>
              <a href="#">Syarat & Ketentuan</a>
            </li>
            <li>
              <a href="#">Kebijakan Privasi</a>
            </li>
          </ul>

          <h5 class="title">Ikuti Kami</h5>
          <a href="#">
            <img src="/img/facebook-new.png" style="width:30px;" alt="" />
          </a>
          <a href="#">
            <img src="/img/twitter.png" style="width:30px;" alt="" />
          </a>
          <a href="#">
            <img src="/img/instagram-new.png" style="width:30px;" alt="" />
          </a>
        </div>
        <div class="col-md-3 text-center">
          <br>
          <img src="/img/toko-kita.png" style="width:300px;" alt="" />
          <!-- <a href="" style="text-align:center;text-weight:600;">
            Ds. Jeruk, RT 005 RW 002<br>
            Kartoharjo, Magetan <br>
            Jawa Timur - 63394
          </a> -->
        </div>
      </div>
      
      <div class="copyright">
        copyright &copy; {{ year }}, Toko Kita.
        <a href="https:///www.invisionapp.com" target="_blank" rel="noopener"
          ></a
        >
      </div>
    </div>
  </footer>
</template>
<script>
export default {
  props: {
    backgroundColor: String,
    type: String
  },
  data() {
    return {
      year: new Date().getFullYear()
    };
  }
};
</script>
<style></style>
