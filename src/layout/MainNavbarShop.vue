<template>
<div>
    <!-- type="primary" -->
  <div class="fixed-top" style="background-color:#e5e5e5; width:100%;">
    <div class="row">
      <div class="col-md-12">
        <a href="#">Download App</a>
      </div>
    </div>
  </div>
  <navbar
    position="fixed"
    menu-classes="ml-auto"
  >
    <!-- :transparent="transparent" -->
    <!-- :color-on-scroll="colorOnScroll" -->
    <template>
      <router-link v-popover:popover1 class="navbar-brand" to="/">
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
          <i class="now-ui-icons shopping_cart-simple"></i>
        </a>
      </li>
      <li class="nav-item separate" v-if="isLogin == true">
        <drop-down
                  tag="li"
                  title=""
                  icon="now-ui-icons ui-1_bell-53"
                  class="nav-item akun"
          >
            <a
              class="nav-link"
              href="/administrator/pengguna"
            >
              <p>Daftar Pesanan</p>
            </a>
            <a
              class="nav-link"
              href="/administrator/role"
            >
              <p>Lacak Pesanan</p>
            </a>
          </drop-down>
      </li>
      <li class="nav-item" v-if="isLogin == true">
        <drop-down
              tag="li"
              title="Akun"
              icon="now-ui-icons users_single-02"
              class="nav-item akun"
      >
        <a
          class="nav-link"
          href="/administrator/pengguna"
        >
          <i class="now-ui-icons users_circle-08"></i>
          <p>Profil</p>
        </a>
        <a
          class="nav-link"
          href="/administrator/role"
        >
          <i class="now-ui-icons ui-2_favourite-28"></i>
          <p>Wishlist</p>
        </a>
        <a
          v-if="isLogin == true" 
          v-on:click="onLogout()"
          class="nav-link"
          href="/login"
        >
          <i class="now-ui-icons arrows-1_share-66"></i>
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
      currentRouteName:''
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
