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
<template v-if="$isMobile()">
    <div class="hidden">
      <vs-navbar shadow square center-collapsed v-model="active">
        <template #left>
          <vs-button @click="activeSidebar = !activeSidebar" flat icon>
            <i class='bx bx-menu'></i>
          </vs-button>
        </template>
        <vs-navbar-item :active="active == 'guide'" id="guide">
          Guide
        </vs-navbar-item>
        <vs-navbar-item :active="active == 'docs'" id="docs">
          Documents
        </vs-navbar-item>
        <vs-navbar-item :active="active == 'components'" id="components">
          Components
        </vs-navbar-item>
        <vs-navbar-item :active="active == 'license'" id="license">
          license
        </vs-navbar-item>
        <template #right>
          <vs-button flat >Login</vs-button>
          <vs-button>Get Started</vs-button>
        </template>
      </vs-navbar>
      <vs-sidebar
        absolute
        v-model="active"
        :open.sync="activeSidebar"
        >
        <template #logo>
          <!-- ...img logo -->
        </template>
        <vs-sidebar-item id="home">
          <template #icon>
            <i class='bx bx-home'></i>
          </template>
          Home
        </vs-sidebar-item>
        <vs-sidebar-item id="market">
          <template #icon>
            <i class='bx bx-grid-alt'></i>
          </template>
          Market Overview
        </vs-sidebar-item>
        <vs-sidebar-item id="Music">
          <template #icon>
            <i class='bx bxs-music'></i>
          </template>
          Music
        </vs-sidebar-item>
        <vs-sidebar-group>
          <template #header>
            <vs-sidebar-item arrow>
              <template #icon>
                <i class='bx bx-group'></i>
              </template>
              Social media
            </vs-sidebar-item>
          </template>

          <vs-sidebar-item id="Instagram">
            <template #icon>
              <i class='bx bxl-instagram'></i>
            </template>
            Instagram
          </vs-sidebar-item>
          <vs-sidebar-item id="twitter">
            <template #icon>
              <i class='bx bxl-twitter' ></i>
            </template>
            Twitter
          </vs-sidebar-item>
          <vs-sidebar-item id="Facebook">
            <template #icon>
              <i class='bx bxl-facebook' ></i>
            </template>
            Facebook
          </vs-sidebar-item>
        </vs-sidebar-group>
        <vs-sidebar-group>
          <template #header>
            <vs-sidebar-item arrow>
              <template #icon>
                <i class='bx bx-code-alt' ></i>
              </template>
              Coding
            </vs-sidebar-item>
          </template>

          <vs-sidebar-item id="github">
            <template #icon>
              <i class='bx bxl-github' ></i>
            </template>
            Github
          </vs-sidebar-item>
          <vs-sidebar-item id="codepen">
            <template #icon>
              <i class='bx bxl-codepen'></i>
            </template>
            Codepen
          </vs-sidebar-item>
          <vs-sidebar-item id="discord">
            <template #icon>
              <i class='bx bxl-discord'></i>
            </template>
            Discord
          </vs-sidebar-item>
          <vs-sidebar-item id="Javascript">
            <template #icon>
              <i class='bx bxl-javascript' ></i>
            </template>
            Javascript
          </vs-sidebar-item>
          <vs-sidebar-item id="git">
            <template #icon>
              <i class='bx bxl-git' ></i>
            </template>
            Git
          </vs-sidebar-item>
        </vs-sidebar-group>
        <vs-sidebar-item id="donate">
          <template #icon>
            <i class='bx bxs-donate-heart' ></i>
          </template>
          Donate
        </vs-sidebar-item>
        <vs-sidebar-item id="drink">
          <template #icon>
            <i class='bx bx-drink'></i>
          </template>
          Drink
        </vs-sidebar-item>
        <vs-sidebar-item id="shopping">
          <template #icon>
            <i class='bx bxs-shopping-bags'></i>
          </template>
          Shopping
        </vs-sidebar-item>
        <vs-sidebar-item id="chat">
          <template #icon>
            <i class='bx bx-chat' ></i>
          </template>
          Chat
        </vs-sidebar-item>
        <template #footer>
          <vs-row justify="space-between">
            <vs-avatar>
              <img src="/avatars/avatar-5.png" alt="">
            </vs-avatar>

            <vs-avatar badge-color="danger" badge-position="top-right">
              <i class='bx bx-bell' ></i>

              <template #badge>
                28
              </template>
            </vs-avatar>
          </vs-row>
        </template>
      </vs-sidebar>
    </div>
  </template>
  <template slot="navbar-menu" v-else>

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
              href="/daftar-pesanan"
            >
              <p>Daftar Pesanan</p>
            </a>
            <a
              class="nav-link"
              href="/percakapan"
            >
              <p>Percakapan</p>
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
