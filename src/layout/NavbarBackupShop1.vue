<template>
  <vue-navigation-bar :options="navbarOptions" />
</template>

<script>
import VueNavigationBar from "vue-navigation-bar";
export default {
  name: 'main-navbar',
  bodyClass: 'main-navbar',
  components: {VueNavigationBar},
  data() {
        return {
          navbarOptions: {
            elementId: 'main-navbar',
            isUsingVueRouter: true,
            mobileBreakpoint: 992,
            // brandImagePath: '/img',
            // brandImage: require('../img/toko-kita.png'),
            brandImageAltText: 'brand-image',
            collapseButtonOpenColor: "#661c23",
            collapseButtonCloseColor: "#661c23",
            showBrandImageInMobilePopup: true,
            ariaLabelMainNav: 'Main Navigation',
            tooltipAnimationType: 'shift-away',
            menuOptionsLeft: [
              {
                type: 'link',
                text: 'Why Dunder Mifflin',
                arrowColor: "#659CC8",
                subMenuOptions: [
                  {
                    isLinkAction: true,
                    type: "link",
                    text: "About",
                    subText: "Stupid corporate wet blankets. Like booze ever killed anyone.",
                    path: "./about",
                    iconLeft: '<i class="fa fa-star fa-fw"></i>'
                  },
                  {
                    type: 'hr',
                  },
                  {
                    type: 'link',
                    text: 'Locations',
                    subText: 'You\'re a presentation tool!',
                    path: './locations',
                    arrowColor: "#659CC8",
                  },
                  {
                    type: 'hr',
                  },
                  {
                    type: 'link',
                    text: 'Blog',
                    subText: 'I enjoy having breakfast in bed. I like waking up to the smell of bacon. Sue me.',
                    path: './blog',
                  },
                ]
              },
              {
                type: 'link',
                text: 'Contact',
                subMenuOptions: [
                  {
                    type: 'link',
                    text: 'Customer Service',
                    path: './customer-service'
                  },
                  {
                    type: 'link',
                    text: 'Accounting',
                    path: './accounting',
                  },
                  {
                    type: 'hr',
                  },
                  {
                    type: 'link',
                    text: 'Reception',
                    path: './reception',
                    iconLeft: '<svg id="i-telephone" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" width="32" height="32" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"> <path d="M3 12 C3 5 10 5 16 5 22 5 29 5 29 12 29 20 22 11 22 11 L10 11 C10 11 3 20 3 12 Z M11 14 C11 14 6 19 6 28 L26 28 C26 19 21 14 21 14 L11 14 Z" /> <circle cx="16" cy="21" r="4" /> </svg>',
                  },
                ]
              },
              {
                type: 'link',
                text: 'Pricing',
                path: './pricing',
                iconRight: '<i class="fa fa-long-arrow-right fa-fw"></i>',
              },
            ],
            menuOptionsRight: [
              {
                type: 'button',
                text: 'Signup',
                path: './signup',
                class: 'button-red'
              },
              {
                type: 'button',
                text: 'Login',
                path: './login',
                iconRight: '<svg id="i-arrow-right" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" width="32" height="32" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"> <path d="M22 6 L30 16 22 26 M30 16 L2 16" /> </svg>'
              }
            ]
          }
        }
      }
}
</script>
<style lang="scss">
  .vnb {
    .button-red {
      background: #ff3b30;

      &:hover {
        background: darken(#ff3b30, 10%);
      }
    }
  }
</style>