<template>
    <!-- type="primary" -->
  <navbar
    position="fixed"
    menu-classes="ml-auto"
  >
    <!-- :transparent="transparent" -->
    <!-- :color-on-scroll="colorOnScroll" -->
    <template>
      <router-link v-popover:popover1 class="navbar-brand" to="/">
        Touchless Cafe
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
      <li class="nav-item">
        <a
          class="nav-link"
          href="https://www.creative-tim.com/product/vue-now-ui-kit"
          target="_blank"
        >
          <i class="now-ui-icons tech_laptop"></i>
          <p>Point of Sales</p>
        </a>
      </li>
      <li class="nav-item" v-bind:class="currentRouteName == 'dashboard' ? 'active' : ''">
        <a
          class="nav-link"
          href="/administrator/dashboard"
        >
          <i class="now-ui-icons business_chart-bar-32"></i>
          <p>Dashboard</p>
        </a>
      </li>
      <drop-down
        tag="li"
        title="Laporan"
        icon="now-ui-icons files_paper"
        class="nav-item"
      >
        <a
          class="nav-link"
          href="/administrator/laporan-penjualan"
        >
          <i class="now-ui-icons shopping_shop"></i>
          <p>Penjualan</p>
        </a>
        <a
          class="nav-link"
          href="/administrator/laporan-pendapatan"
        >
          <i class="now-ui-icons education_paper"></i>
          <p>Pendapatan</p>
        </a>
      </drop-down>
      <drop-down
        tag="li"
        title="Master Data"
        icon="now-ui-icons tech_laptop"
        class="nav-item"
        v-bind:class="currentRouteName == 'item' ? 'active' : ''"
      >
        <a
          class="nav-link"
          v-bind:class="currentRouteName == 'item' ? 'active' : ''"
          href="/administrator/item"
        >
          <i class="now-ui-icons shopping_bag-16"></i>
          <p>Item</p>
        </a>
      </drop-down>
      <drop-down
              tag="li"
              title="Pengaturan"
              icon="now-ui-icons loader_gear"
              class="nav-item"
      >
        <a
          class="nav-link"
          href="/administrator/pengguna"
        >
          <i class="now-ui-icons users_circle-08"></i>
          <p>Pengguna</p>
        </a>
        <a
          class="nav-link"
          href="/administrator/role"
        >
          <i class="now-ui-icons media-1_button-play"></i>
          <p>Role</p>
        </a>
        <a
          v-if="isLogin == true" 
          v-on:click="onLogout()"
          class="nav-link"
          href="#"
        >
          <i class="now-ui-icons arrows-1_share-66"></i>
          <p>Keluar</p>
        </a>
        <a
          v-else
          class="nav-link"
          href="/"
        >
          <i class="now-ui-icons arrows-1_share-66"></i>
          <p>Masuk</p>
        </a>
      </drop-down>
    </template>
  </navbar>
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
