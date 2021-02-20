<template>
<div>
    <!-- type="primary" -->
  <!-- <div class="fixed-top" style="background-color:#e5e5e5; width:100%;">
    <div class="row">
      <div class="col-md-12">
        <a href="#">Download App</a>
      </div>
    </div>
  </div> -->
  <navbar
    position="fixed"
    menu-classes="ml-auto"
  >
    <!-- :transparent="transparent" -->
    <!-- :color-on-scroll="colorOnScroll" -->
    <template>
      <router-link v-popover:popover1 class="navbar-brand" to="/" style="display:contents;">
        <img src="/img/toko-kita.png" alt="" />
      </router-link>
      <el-popover
        ref="popover1"
        popper-class="popover"
        placement="bottom"
        width="200"
        trigger="hover"
      >
        <!-- <div class="popover-body">
          Product By RSC Code
        </div> -->
      </el-popover>
    </template>
    <!-- <template v-if="$isMobile()"> -->
  <template slot="navbar-menu">

      <li class="nav-item search" v-bind:class="currentRouteName == 'dashboard' ? 'active' : ''">
        <div class="col-sm-12 col-lg-12">
          <div class="input-group"><!----> <input aria-describedby="addon-right addon-left" placeholder="Yuk cari barangmu disini ...." class="form-control"> <span class="input-group-addon input-group-append"><i class="input-group-text now-ui-icons ui-1_zoom-bold"></i></span>  <!----></div>
        </div>
      </li>
      <li class="nav-item">
        <a
          class="nav-link"
          href="/keranjang"
        >
          <i class="fas fa-shopping-cart"></i>
        </a>
      </li>
      <li class="nav-item separate" v-if="isLogin == true">
        <drop-down
                  tag="li"
                  title=""
                  icon="fas fa-bell"
                  class="nav-item akun"
          >
            <a
              class="nav-link"
              href="/daftar-pesanan"
            >
              <i class="fas fa-clipboard-list"></i>
              <p>Daftar Pesanan</p>
            </a>
            <a
              class="nav-link"
              href="/percakapan"
            >
              <i class="fas fa-comments-dollar"></i>
              <p>Percakapan</p>
            </a>
          </drop-down>
      </li>
      <li class="nav-item" v-if="isLogin == true">
        <drop-down
              tag="li"
              title=""
              icon="fas fa-user-tie"
              class="nav-item akun"
      >
        <a
          class="nav-link"
          href="/administrator/pengguna"
        >
          <i class="fas fa-user-tie"></i> 
          <p>Profil</p>
        </a>
        <a
          class="nav-link"
          href="/administrator/role"
        >
          <i class="fas fa-grin-hearts"></i>
          <p>Wishlist</p>
        </a>
        <a
          v-if="isLogin == true" 
          v-on:click="onLogout()"
          class="nav-link"
          href="/login"
        >
          <i class="fas fa-sign-out-alt"></i>
          <p>Keluar</p>
        </a>
      </drop-down>
      </li>
      <li class="nav-item" v-else>
        <a
          class="btn btn-round btn-simple btn-primary sign-in"
          href="/login"
        >Masuk
        </a>
        <button type="button" class="btn btn-round btn-primary sign-in">Daftar</button>
      </li>
    </template>
  </navbar>
</div>
</template>
<style>
  #parentx{
    overflow: hidden;
    height: 500px;
    position: relative;
  }

  .header-sidebar{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    width: 100%;
  }
    h4 > button{
      display: flex;
      align-items: center;
      justify-content: center;
      width: 100%;
      margin-left: 10px;
    }
      
  .footer-sidebar > button{
      display: flex;
      align-items: center;
      justify-content: space-between;
      width: 100%;

      border: 0px solid rgba(0,0,0,0) !important;
      border-left: 1px solid rgba(0,0,0,.07) !important;
      border-radius: 0px !important;
  }

</style>
<script>
import { DropDown, Navbar, NavLink } from '../components';
import { Popover } from 'element-ui';
export default {
  name: 'main-navbar',
  bodyClass: 'main-navbar',
  components: {DropDown,Navbar,NavLink,[Popover.name]: Popover},
  data() {
    return {
      isLogin:'',
      currentRouteName:'',
      open: false,
      overlay: true,
      fullheight: true,
      fullwidth: false,
      right: false,
      active:false,
      active: 'home',
      activeSidebar: false
    };
  },
  created() {
    this.currentRouteName = this.$route.name;
    this.isLogin = localStorage.getItem('users') != null ? true : false;
  },
  methods: {
    onLogout() {
      localStorage.removeItem('users');
      const cekAuth = localStorage.getItem('users');
      if (cekAuth == null) {
          this.$router.push({
            name: "index",
          });
      }
    }
  }
};
</script>

<style scoped></style>
