<template>
  <div class="container" id="main-panel">
    <div class="row">
      <div class="main">
        <div class="row">
          <div class="col-md-12 pull-right">
            <a
              class="pull-right btn-sm btn btn-primary"
              href="/administrator/item/create"
            >
            <i class="now-ui-icons ui-1_simple-add"></i>
              Tambah
            </a>
          </div>
        </div>
        <ejs-grid :dataSource="data" ref='grid' id='Grid' :allowPaging="true" :allowSorting='true' :allowFiltering='false'  :pageSettings='pageSettings' :toolbar='toolbarOptions' :allowExcelExport='true' :allowPdfExport='true' :toolbarClick='toolbarClick'>
          <e-columns>
            <e-column headerText='Gambar' width='100' textAlign='Center' :template='cTemplate'></e-column>
            <e-column field='code' headerText='Kode' textAlign='Left' width=50></e-column>
            <e-column field='name' headerText='Nama' width=100 textAlign='Left'></e-column>
            <e-column field='stock' headerText='Stok' textAlign='Right' width=50></e-column>
            <e-column field='price' headerText='Harga' textAlign='Right' format='C0' width=60></e-column>
            <e-column field='aksi' headerText='Aksi' textAlign='left' :template='cTemplateAksi' width=90></e-column>
          </e-columns>
        </ejs-grid>
      </div>
    </div>
  </div>
</template>
<script>
import Vue from 'vue';
import Skeleton from 'vue-loading-skeleton';
import { GridPlugin, Page, Sort, Filter, Group, PdfExport, Toolbar, ExcelExport, CommandColumn} from "@syncfusion/ej2-vue-grids";
Vue.use(GridPlugin)
export default {
  name: 'dashboard',
  bodyClass: 'dashboard-page',
  components: {GridPlugin},
  data() {
    //   { kode: 'IT01', nama: 'Boncis', stok: 100,harga:'Rp. 10.000' },
    return {
      data: [],
      pageSettings: { pageSize: 5 },
      toolbarOptions: ['PdfExport', 'ExcelExport', 'Print', 'Search'],
      cTemplate: function () {
          return { template : Vue.component('columnTemplate',{
             template: `<div class="image">
                    <img :src="image" :alt="altImage"/>
                </div>`,
                data: function() {
                    return {
                        data: {}
                    }
                },
                computed: {
                    image: function() {
                        return this.data.gambar.url;
                    },
                    altImage: function() {
                        return this.data.gambar.url;
                    }
                }
          })}
      },
      cTemplateAksi: function () {
          return { template : Vue.component('columnTemplate',{
             template: `<div><a class="btn btn-info btn-sm" :href="urlEdit"><i class="now-ui-icons gestures_tap-01"></i> edit</a><a class="btn btn-danger btn-sm" :href="urlDel"><i class="now-ui-icons ui-1_simple-remove"></i> hapus</a></div>`,
                data: function() {
                    return {
                        data: {}
                    }
                },
                computed: {
                    urlEdit: function() {
                      return '/administrator/item/'+this.data.id+'/edit'
                    },
                    urlDel: function() {
                      return '/administrator/item/'+this.data.id+'/hapus'
                        // return this.data.EmployeeID;
                    }
                }
          })}
      }
    };
  },
  provide: {
    grid: [Page, Sort, Filter, Group, PdfExport, Toolbar, ExcelExport]
  },
  created() {
    this.currentRouteName = this.$route.name;
    this.getData();
  },
  methods: {
    toolbarClick(args) {
        if (args.item.id === 'Grid_pdfexport') { // 'Grid_pdfexport' -> Grid component id + _ + toolbar item name
            this.$refs.grid.pdfExport();
        }else if (args.item.id === 'Grid_excelexport') { // 'Grid_excelexport' -> Grid component id + _ + toolbar item name
            this.$refs.grid.excelExport();
        }

    },

    getData() {

        //show loading
        let loader = this.$loading.show({});

        const options = {
            url: "http://localhost:3000/api/v1/item",
            method: "get",
            headers: {
                "Access-Control-Allow-Origin": "*",
                "Access-Control-Allow-Methods": "GET, POST, PATCH, PUT, DELETE, OPTIONS",
                "Access-Control-Allow-Headers": "Origin, Content-Type, X-Auth-Token",
                "Content-Type": "image/png,multipart/form-data, application/json;charset=UTF-8"
            },
        };

        axios(options)
        .then(response => {
          console.log(response.data.result)
          this.data = response.data.result
            // this.$router.push("/administrator/item");
            // this.$swal('Berhasil', 'Item Baru Berhasil dibuat', 'success');
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
@import "https://cdn.syncfusion.com/ej2/material.css";
/* @import "/node_modules/@syncfusion/ej2-vue-grids/styles/material.css"; */
 .image img {
        height: 55px;
        width: 55px;
        border-radius: 50px;
        box-shadow: inset 0 0 1px #e0e0e0, inset 0 0 14px rgba(0,0,0,0.2);
    }
</style>
