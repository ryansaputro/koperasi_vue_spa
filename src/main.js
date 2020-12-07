/*!

 =========================================================
 * Vue Now UI Kit - v1.1.0
 =========================================================

 * Product Page: https://www.creative-tim.com/product/now-ui-kit
 * Copyright 2019 Creative Tim (http://www.creative-tim.com)

 * Designed by www.invisionapp.com Coded by www.creative-tim.com

 =========================================================

 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

 */
import Vue from 'vue';
import App from './App.vue';
// You can change this import to `import router from './starterRouter'` to quickly start development from a blank layout.
import router from './router';
import NowUiKit from './plugins/now-ui-kit';
//send and retrive data method
import axios from 'axios';
// alert
import VueSweetalert2 from 'vue-sweetalert2';
import 'sweetalert2/dist/sweetalert2.min.css';
// Import component
import Loading from 'vue-loading-overlay';
// Import stylesheet
import 'vue-loading-overlay/dist/vue-loading.css';
//skeleton loading
// import Skeleton from 'vue-loading-skeleton';
import 'vue-search-select/dist/VueSearchSelect.css'
import JQuery from 'jquery'
window.$ = JQuery

// default url in axios
axios.defaults.baseURL = 'localhost:3000/api/v1/';
axios.defaults.headers.common['Access-Control-Allow-Origin'] = '*';
// axios.defaults.withCredentials = true;
Vue.config.productionTip = false;
Vue.prototype.$http = axios
window.axios = require('axios');;

// Vue.use(Skeleton)
Vue.use(Loading);
Vue.use(VueSweetalert2);
Vue.use(NowUiKit);

new Vue({
  router,
  render: h => h(App)
}).$mount('#app');