<template>
  <div class="page-header clear-filter" filter-color="orange">
    <div
      class="page-header-image"
    ></div>
      <!-- style="background-image: url('img/login.jpg')" -->
    <div class="content">
      <div class="container">
        <div class="col-md-5 ml-auto mr-auto">
          <card type="login" plain>
            <div slot="header" class="logo-container">
              <img v-lazy="'img/now-logo.png'" alt="" />
            </div>
            <form @submit.prevent="onSubmit()">
              <fg-input
                type="email"
                class="no-border input-lg"
                addon-left-icon="now-ui-icons users_circle-08"
                placeholder="Email..."
                v-model="email"
              >
              </fg-input>

              <fg-input
                type="password"
                class="no-border input-lg"
                addon-left-icon="now-ui-icons text_caps-small"
                placeholder="Password..."
                v-model="password"
              >
              </fg-input>
              <button
                type="submit"
                class="btn btn-primary btn-round btn-lg btn-block"
                >Login</button
              >

              <!-- <template slot="raw-content">
                <div class="card-footer text-center">
                  <button
                    type="submit"
                    class="btn btn-primary btn-round btn-lg btn-block"
                    >Login</button
                  >
                </div>
                <div class="pull-left">
                  <h6>
                    <a href="#pablo" class="link footer-link">Buat Akun</a>
                  </h6>
                </div>
                <div class="pull-right">
                  <h6>
                    <a href="#pablo" class="link footer-link">Butuh Bantuan?</a>
                  </h6>
                </div>
              </template> -->
            </form>
          </card>
        </div>
      </div>
    </div>
  </div>
</template>
<script>

import { Card, Button, FormGroupInput } from '../components';
import MainFooter from '../layout/MainFooter';

export default {
  name: 'login-page',
  bodyClass: 'login-page',
  components: {Card,[Button.name]: Button,[FormGroupInput.name]: FormGroupInput},
  data() {
    return {
      email: "",
      password: "",
      currentRouteName: ""
    };
  },
  created() {
    this.currentRouteName = this.$route.name;
  },
  methods: {
    onSubmit() {
      let loader = this.$loading.show({});
      if (this.email.trim() && this.password.trim()) {
        let formData = new FormData();
        formData.append("email", this.email.trim());
        formData.append("password", this.password);

        const options = {
          url: "http://localhost:3000/api/v1/auth/login",
          method: "post",
          headers: {
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "GET, POST, PATCH, PUT, DELETE, OPTIONS",
          "Access-Control-Allow-Headers": "Origin, Content-Type, X-Auth-Token",
          "Content-Type": "multipart/form-data, application/json;charset=UTF-8"
          },
          data: formData
        };

        axios(options)
          .then(response => {
            const token = response.data.token;
            if (token) {
              localStorage.setItem('users', JSON.stringify(response.data.user));
              this.$router.push({
                name: "dashboard",
                params: {
                  token: token
                }
              });
            }
          })
          .catch(e => {
            this.$swal("Maaf!", "Email atau password yg anda masukkan salah!", "error");
          }).finally((response) => {
            loader.hide();
          });;
      }
    }
  }
};
</script>
<style></style>
