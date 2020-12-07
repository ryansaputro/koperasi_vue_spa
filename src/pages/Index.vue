<template>
  <div>
    <div class="promo">
      <hooper :itemsToShow="1.25" :infiniteScroll="true" :centerMode="true" :autoPlay="true" :playSpeed="2000">
        <slide>
          <img src="img/promo.jpg">
        </slide>
        <slide>
          <img src="img/dapur.jpg">
        </slide>
        <slide>
          <img src="img/promo.jpg">
        </slide>
        <slide>
          <img src="img/dapur.jpg">
        </slide>
        <slide>
          <img src="img/promo.jpg">
        </slide>
        <slide>
          <img src="img/dapur.jpg">
        </slide>
        <hooper-navigation slot="hooper-addons"></hooper-navigation>
      </hooper>
    </div>
    <div class="main">
      <div class="container">
        <div class="row menu-second">
            <div class="col-md-10 kategori">
            <h3 class="title">Kategori</h3>
              <hooper group="group1" :itemsToShow="1" :infiniteScroll="false" :centerMode="true">
                <slide>
                  <img src="img/kategori-5.jpg">
                </slide>
                <slide>
                  <img src="img/kategori-1.jpg">
                </slide>
                <slide>
                  <img src="img/dapur.jpg">
                </slide>
                <slide>
                  <img src="img/kategori-3.jpg">
                </slide>
                <slide>
                  <img src="img/kategori-2.jpg">
                </slide>
                <slide>
                  <img src="img/kategori-6.jpg">
                </slide>
              </hooper>

              <hooper group="group1" :autoPlay="true" :playSpeed="6000" :itemsToShow="3" :infiniteScroll="true" :centerMode="true">
                <slide>
                  <img src="img/kategori-5.jpg">
                </slide>
                <slide>
                  <img src="img/kategori-1.jpg">
                </slide>
                <slide>
                  <img src="img/dapur.jpg">
                </slide>
                <slide>
                  <img src="img/kategori-3.jpg">
                </slide>
                <slide>
                  <img src="img/kategori-2.jpg">
                </slide>
                <slide>
                  <img src="img/kategori-6.jpg">
                </slide>
              </hooper>
            </div>
            <div class="col-md-2 halaman-promo">
              <h3 class="title">Terlaris</h3>
              <hooper :vertical="true" :itemsToShow="1.2" :centerMode="true" :infiniteScroll="true" :autoPlay="true" :playSpeed="2000">
                <slide>
                    <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                    </div>
                </slide>
                <slide>
                    <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                    </div>

                </slide>
                <slide>
                    <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                    </div>

                </slide>
                <slide>
                    <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                    </div>

                </slide>
                <slide>
                    <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                    </div>

                </slide>
                <slide>
                    <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                    </div>

                </slide>
              </hooper>
            </div>
        </div>
      </div>
    </div>
      <div class="row product-list">
      <!-- product -->
        <div class="container">
          <div class="row">
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-1.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-2.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28"></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">20%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond disable"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Women's Blouse</a></h3>
                          <div class="price">$16.00
                              <span>$20.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-3.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-4.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-5.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-6.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-1.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-2.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28"></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">20%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond disable"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Women's Blouse</a></h3>
                          <div class="price">$16.00
                              <span>$20.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-3.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-4.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-5.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-6.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-1.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-2.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28"></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">20%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond disable"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Women's Blouse</a></h3>
                          <div class="price">$16.00
                              <span>$20.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-3.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-4.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-5.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-6.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 col-sm-6 product">
                  <div class="product-grid">
                      <div class="product-image">
                          <a href="#">
                              <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-7.jpg">
                              <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-8.jpg">
                          </a>
                          <ul class="social">
                              <li><a href="" data-tip="Detail"><i class="now-ui-icons ui-1_zoom-bold"></i></a></li>
                              <li><a href="" data-tip="+ Wishlist"><i class="now-ui-icons ui-2_favourite-28 "></i></a></li>
                              <li><a href="" data-tip="+ Keranjang"><i class="now-ui-icons shopping_cart-simple"></i></a></li>
                          </ul>
                          <span class="product-new-label">Sale</span>
                          <span class="product-discount-label">50%</span>
                      </div>
                      <ul class="rating">
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                          <li class="now-ui-icons objects_diamond"></li>
                      </ul>
                      <div class="product-content">
                          <h3 class="title"><a href="#">Men's Plain Tshirt</a></h3>
                          <div class="price">$5.00
                              <span>$10.00</span>
                          </div>
                          <a class="add-to-cart" href="">Tambah ke Keranjang</a>
                      </div>
                  </div>
              </div>
          </div>
        </div>
        <!-- end product -->
    </div>
    <n-button type="primary" @click.native="modals.classic = true">
            Launch Modal
    </n-button>
    <modal :show.sync="modals.classic" id="exampleModal" headerClasses="justify-content-center">
      <h4 slot="header" class="title title-up">Modal title</h4>
      <p>
        Far far away, behind the word mountains, far from the countries Vokalia
        and Consonantia, there live the blind texts. Separated they live in
        Bookmarksgrove right at the coast of the Semantics, a large language
        ocean. A small river named Duden flows by their place and supplies it
        with the necessary regelialia. It is a paradisematic country, in which
        roasted parts of sentences fly into your mouth.
      </p>
      <template slot="footer">
        <n-button>Nice Button</n-button>
        <n-button type="danger" @click.native="modals.classic = false"
          >Close</n-button
        >
      </template>
    </modal>
    <!-- end row -->

    <!-- <basic-elements></basic-elements> -->
    <!-- <navigation></navigation> -->
    <!-- <tabs-section></tabs-section> -->
    <!-- <progress-pagination></progress-pagination>
    <notifications></notifications>
    <typography></typography>
    <javascript-components></javascript-components>
    <carousel-section></carousel-section>
    <nucleo-icons-section></nucleo-icons-section> -->
    <!-- <div class="section">
      <div class="container text-center">
        <div class="row justify-content-md-center">
          <div class="col-md-12 col-lg-8">
            <h2 class="title">Completed with examples</h2>
            <h5 class="description">
              The kit comes with three pre-built pages to help you get started
              faster. You can change the text and images and you're good to go.
              More importantly, looking at them will give you a picture of what
              you can built with this powerful Bootstrap 4 ui kit.
            </h5>
          </div>
        </div>
      </div>
    </div> -->
    <!-- <signup-form></signup-form>
    <examples-section></examples-section>
    <download-section></download-section> -->
  </div>
</template>
<script>
import 'hooper/dist/hooper.css';
import { Parallax } from '../components';
import { Modal,Button } from '../components';
// import Modal from './Modal.vue';
import BasicElements from './components/BasicElementsSection';
import Navigation from './components/Navigation';
import TabsSection from './components/Tabs';
import ProgressPagination from './components/ProgressPagination';
import Notifications from './components/Notifications';
import Typography from './components/Typography';
import JavascriptComponents from './components/JavascriptComponents';
import CarouselSection from './components/CarouselSection';
import NucleoIconsSection from './components/NucleoIconsSection';
import SignupForm from './components/SignupForm';
import ExamplesSection from './components/ExamplesSection';
import DownloadSection from './components/DownloadSection';
import { Hooper, Slide,Navigation as HooperNavigation } from 'hooper';
import SkeletonCard from 'vue-skeleton-screen'
import regeneratorRuntime from "regenerator-runtime";

export default {
  name: 'index',
  bodyClass: 'index-page',
  components: {
    Parallax,
    BasicElements,
    Navigation,
    TabsSection,
    ProgressPagination,
    Notifications,
    Typography,
    JavascriptComponents,
    CarouselSection,
    NucleoIconsSection,
    SignupForm,
    ExamplesSection,
    DownloadSection,
    Hooper,
    Slide,
    HooperNavigation,
    SkeletonCard,
    regeneratorRuntime,
    Modal,
    [Button.name]: Button,
  },
  data() {
    return {
        itemsToShow: 2,
        centerMode: true,
        data: 10,
        modals: {
            classic: false,
            mini: false
        },
    };
  },
  mounted: function() {
    //   $('.modal').modal('show');
  }
};
</script>
