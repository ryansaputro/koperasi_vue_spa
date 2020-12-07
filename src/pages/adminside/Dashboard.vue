<template>
  <div class="main-panel" id="main-panel">
      <h3 class="text-center text-uppercase">Halaman Dashboard</h3>
  </div>
</template>
<script>
import Skeleton from 'vue-loading-skeleton';
export default {
  name: 'dashboard',
  bodyClass: 'dashboard-page',
  components: {Skeleton},
  // data() {
  //   return {
  //     email: "",
  //     password: "",
  //     currentRouteName: ""
  //   };
  // },
  created() {
    this.currentRouteName = this.$route.name;
  },
  methods: {

  }
}
</script>

<style></style>
