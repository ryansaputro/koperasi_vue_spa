import Vue from 'vue';
import Router from 'vue-router';
import Indexs from './pages/Index.vue';
import Index from './pages/clientside/Index.vue';
import Detail from './pages/clientside/Detail.vue';
import DashboardAdmin from './pages/adminside/Dashboard.vue';
import PageNotfound from './pages/adminside/404.vue';
import MasterItem from './pages/adminside/master/item/Index.vue';
import MasterItemCreate from './pages/adminside/master/item/Create.vue';
import MasterItemEdit from './pages/adminside/master/item/Edit.vue';
import Landing from './pages/Landing.vue';
import Login from './pages/Login.vue';
import Profile from './pages/Profile.vue';
import MainNavbar from './layout/MainNavbar.vue';
import MainNavbarShop from './layout/MainNavbarShop.vue';
import MainFooter from './layout/MainFooter.vue';
import MainFooterShop from './layout/MainFooterShop.vue';

Vue.use(Router);

const routes= [
    {
      path: '/',
      name: 'index',
      components: {
        default: Index,
        header: MainNavbarShop,
        footer: MainFooterShop
      },
      props: {
        header: { colorOnScroll: 400 },
        footer: { backgroundColor: 'white' }
      }
    },
    {
      path: '/cat/:nama_kategori/:nama_item',
      name: 'detail',
      components: {
        default: Detail,
        header: MainNavbarShop,
        footer: MainFooterShop
      },
      props: {
        header: { colorOnScroll: 400 },
        footer: { backgroundColor: 'white' }
      }
    },
    {
      path: '/xx',
      name: 'landing',
      components: {
        default: Indexs,
        header: MainNavbarShop,
        footer: MainFooterShop },
      props: {
        header: { colorOnScroll: 400 },
        footer: { backgroundColor: 'black' }
      }
    },
    {
      path: '/login',
      name: 'login',
      components: { default: Login, header: MainNavbar },
      props: {
        header: { colorOnScroll: 400 }
      }
    },
    {
      path: '/profile',
      name: 'profile',
      components: { default: Profile, header: MainNavbar, footer: MainFooter },
      props: {
        header: { colorOnScroll: 400 },
        footer: { backgroundColor: 'black' }
      }
    },
    // dashboard for admin
    {
      path: '/administrator/dashboard',
      name: 'dashboard',
      components: {
        default: DashboardAdmin,
        header: MainNavbar,
        footer: MainFooter
      },
      meta: {
        auth:true
      },
      props: {
        header: { colorOnScroll: 400 },
        footer: { backgroundColor: 'black' }
      }
    },
    {
      path: '/administrator/item',
      name: 'item',
      components: {
        default: MasterItem,
        header: MainNavbar,
        footer: MainFooter
      },
      meta: {
        auth:true
      },
      props: {
        header: { colorOnScroll: 400 },
        footer: { backgroundColor: 'black' }
      }
    },
    {
      path: '/administrator/item/create',
      name: 'item baru',
      components: {
        default: MasterItemCreate,
        header: MainNavbar,
        footer: MainFooter
      },
      meta: {
        auth:true
      },
      props: {
        header: { colorOnScroll: 400 },
        footer: { backgroundColor: 'black' }
      }
    },
    {
      path: '/administrator/item/:id/edit',
      name: 'item edit',
      components: {
        default: MasterItemEdit,
        header: MainNavbar,
        footer: MainFooter
      },
      meta: {
        auth:true
      },
      props: {
        header: { colorOnScroll: 400 },
        footer: { backgroundColor: 'black' }
      }
    },
    {
      path: '/administrator/*',
      components: {
        default: PageNotfound,
        header: MainNavbar,
        footer: MainFooter
      },
      meta: {
        auth:true
      },
      props: {
        header: { colorOnScroll: 400 },
        footer: { backgroundColor: 'black' }
      }
    }
  ]

const router = new Router({
  linkExactActiveClass: 'active',
  mode: "history",
  base: process.env.BASE_URL,
  routes,
  linkActiveClass: "active",
  scrollBehavior: to => {
    if (to.hash) {
      return {
        selector: to.hash
      };
    } else {
      return {
        x: 0,
        y: 0
      };
    }
  },
})

router.beforeEach((to, from, next) => {
  if (to.matched.some(record => record.meta.auth)) {
    if (localStorage.getItem('users') == null) {
      next({
        path: '/',
        params: {
          nextUrl: to.fullPath
        }
      })
    } else {
        next()
    }
  } else {
    next()
  }
})

export default router