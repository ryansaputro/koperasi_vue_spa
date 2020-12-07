<template>
    <div class="container" id="main-panel">
        <div class="row">
            <div class="main">
                <div class="col-md-12">
                    <h4>{{currentRouteName.toUpperCase()}}</h4>
                    <form @submit.prevent="onSubmit()">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Kode</label>
                                    <input type="text" class="form-control" placeholder="Kode..." v-model="kode">
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input type="text" class="form-control" placeholder="Nama..." v-model="nama">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Kategori</label>
                                    <model-select
                                        @select="onSelect"
                                        class="form-control" 
                                        :options="options2"
                                        v-model="kategori"
                                        placeholder="Pilih Kategori...">
                                    </model-select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Stok</label>
                                    <input type="number" class="form-control" v-model="stok" placeholder="Stok...">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Harga</label>
                                    <input type="number" class="form-control" placeholder="Harga..." v-model="harga">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Foto</label>
                                        <div class="custom-file mb-3" v-if="!foto">
                                            <input type="file" accept="image/*" class="custom-file-input" id="customFile" name="filename" :value="foto" @change="onFileChange">
                                            <label class="custom-file-label" for="customFile">Pilih Gambar</label>
                                        </div>
                                        <div v-else class="foto" :style="background">
                                        <button class="btn btn-danger btn-sm" type="button" @click="removeImage">Hapus Foto</button>
                                        </div>

                                    </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Status</label>
                                        <select class="form-control" v-model="status">
                                            <option value="active">Aktif</option>
                                            <option value="not_active">Tidak Aktif</option>
                                        </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Deskripsi</label>
                                    <textarea rows="4" cols="80" class="form-control" placeholder="Deskripsi" v-model="deskripsi"></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12 px-1">
                            <div class="form-group pull-right">
                                <a href="/administrator/item" class="btn btn-danger">Kembali</a>
                                <button type="submit" class="btn btn-primary">Simpan</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div><!--/.main-->  
        </div><!--/.row-->
    </div><!--/.container-->
</template>
<script>
import _ from 'lodash'
import { ModelSelect } from 'vue-search-select'
import {
  Button,
  Checkbox,
  Radio,
  FormGroupInput,
  Slider,
  Switch
} from '../../../../components';
export default {
  name: 'item',
  bodyClass: 'item-page',
  components: {ModelSelect,[Radio.name]: Radio},
  data() {
    return {
        kode:'',
        nama:'',
        kategori:'',
        harga:'',
        deskripsi:'',
        status:'active',
        foto:'',
        image:'',
        stok:'',
        background:'',
        currentRouteName:'',
        options2: [],
        item2: '',
        lastSelectItem: {}
    };
  },
  created() {
    this.currentRouteName = this.$route.name;
    this.getCategory();
  },
  mounted() {
      
  },
  methods: {
        onSelect (kategori, lastSelectItem) {
            this.kategori = kategori
            console.log("test")
            this.lastSelectItem = lastSelectItem
        },
        //kategori reset
        reset2 () {
            this.kategori = ''
        },

        //value from kategori
        selectFromParentComponent2 () {
            this.kategori = this.options2[0].value
            console.log(this.kategori)
        },

        //product image change
        onFileChange(e) {
            var files = e.target.files || e.dataTransfer.files;
            if (!files.length)
                return;
            this.createImage(files[0]);
            this.image = files[0];
        },

        //upload image preview
        createImage(file) {
            var image = new Image();
            var reader = new FileReader();
            var vm = this;

            reader.onload = (e) => {
                vm.foto = e.target.result;
                // console.log(e.target.files)
                vm.background = 'background-image:url('+e.target.result+');background-size:contain;height:200px;background-repeat:no-repeat;';
                // $('.foto').attr('style', 'background-image:url('+e.target.result+')');
            };
            reader.readAsDataURL(file);
        },

        //remove image
        removeImage: function (e) {
            this.foto = '';
        },

        getCategory() {
            //show loading
            let loader = this.$loading.show({});

            const options = {
                url: "http://localhost:3000/api/v1/item/get-category",
                method: "post",
                headers: {
                    "Access-Control-Allow-Origin": "*",
                    "Access-Control-Allow-Methods": "GET, POST, PATCH, PUT, DELETE, OPTIONS",
                    "Access-Control-Allow-Headers": "Origin, Content-Type, X-Auth-Token",
                    "Content-Type": "image/png,multipart/form-data, application/json;charset=UTF-8"
                },
            };

            axios(options)
            .then(response => {
                this.options2 = response.data.result;
                this.getData();
            })
            .catch(errors => {
                if (errors.response) {
                    
                    var data = '<ul>';
                    $.each(errors.response.data.errors, function(k,v){
                    data += '<li class="text-left">'+v+"</li>";
                    });
                    data += '</ul>';
                    this.$swal('Gagal', '<div>'+data+'</div>', 'error');
    
                // client received an error response (5xx, 4xx)
                } else if (errors.request) {
                    console.log(errors.request);
                    console.log("request never left")
    
                // client never received a response, or request never left
                } else {
                    console.log("lainnya"+errors)
                }
            })
            .finally((response) => {
                loader.hide();
            });
        },

        getData() {
            //show loading
            let loader = this.$loading.show({});
            axios.get('http://localhost:3000/api/v1/item/show',{ params: { id: this.$route.params.id }})
            .then(response => {
                this.kode = response.data.result.code
                this.nama = response.data.result.name
                this.kategori = response.data.result.id_category
                this.harga = response.data.result.price
                this.deskripsi = response.data.result.description
                this.status = response.data.result.status
                this.foto = response.data.result.gambar.url
                this.background = response.data.result.gambar.url
                this.stok = response.data.result.stock
                console.log(this.background)
                // this.item2 = response.data.result.id_category
            })
            .catch(errors => {
                if (errors.response) {
                    
                    var data = '<ul>';
                    $.each(errors.response.data.errors, function(k,v){
                    data += '<li class="text-left">'+v+"</li>";
                    });
                    data += '</ul>';
                    this.$swal('Gagal', '<div>'+data+'</div>', 'error');
    
                // client received an error response (5xx, 4xx)
                } else if (errors.request) {
                    console.log(errors.request);
                    console.log("request never left")
    
                // client never received a response, or request never left
                } else {
                    console.log("lainnya"+errors)
                }
            })
            .finally((response) => {
                loader.hide();
            });

        },

        //form submit 
        onSubmit() {
            
            //show loading
            let loader = this.$loading.show({});
            
            //add data to form 
            let formData = new FormData();
            formData.append("code", this.kode);
            formData.append("name", this.nama);
            formData.append("id_category", this.kategori);
            formData.append("price", this.harga);
            formData.append("description", this.deskripsi);
            formData.append("status", this.status);
            formData.append("gambar", this.image);
            formData.append("stock", this.stok);

            // console.log(this.foto)

            const options = {
                url: "http://localhost:3000/api/v1/item/create",
                method: "post",
                headers: {
                    "Access-Control-Allow-Origin": "*",
                    "Access-Control-Allow-Methods": "GET, POST, PATCH, PUT, DELETE, OPTIONS",
                    "Access-Control-Allow-Headers": "Origin, Content-Type, X-Auth-Token",
                    "Content-Type": "image/png, multipart/form-data"
                },
                data: formData
            };

            axios(options)
            .then(response => {
                this.$router.push("/administrator/item");
                this.$swal('Berhasil', 'Item Baru Berhasil dibuat', 'success');
            })
            .catch(errors => {

                if (errors.response) {
                    
                    var data = '<ul>';
                    $.each(errors.response.data.errors, function(k,v){
                    data += '<li class="text-left">'+v+"</li>";
                    });
                    data += '</ul>';
                    this.$swal('Gagal', '<div>'+data+'</div>', 'error');
    
                // client received an error response (5xx, 4xx)
                } else if (errors.request) {
                    console.log(errors.request);
                    console.log("request never left")
    
                // client never received a response, or request never left
                } else {
                    console.log("lainnya")
                }
        })
            .finally((response) => {
                loader.hide();
            });;
        }
  }
}
</script>

<style>
.ui.fluid.dropdown{
    border-radius: 30px;
    font-size: 12px;
    padding-left: 15px;
}
.custom-file-label, .custom-file-label::after {
    border-radius: 30px; 
}
/* @import 'vue-search-select/dist/VueSearchSelect.css'; */
</style>
