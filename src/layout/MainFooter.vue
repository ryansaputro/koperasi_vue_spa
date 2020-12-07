<template>
  <footer
    class="footer"
    :class="{ [`footer-${type}`]: type }"
    :data-background-color="backgroundColor"
  >
    <div class="container">
      <div>
        <ul class="d-grid">
          <li>
            <i class="now-ui-icons tech_mobile"></i> Phone :
            085649184363
          </li>
          <li>
             <i class="now-ui-icons ui-1_send"></i> Email :
            ryansaputro52@gmail.com
          </li>
          <li>
             <i class="now-ui-icons objects_globe"></i> Web :
            www.touchless-cafe.com
          </li>
        </ul>
      </div>
      <div class="copyright">
        &copy; {{ year }}, Touchless Cafe
        <a href="https:///www.invisionapp.com" target="_blank" rel="noopener"
          ></a
        >. Coded by
        <a href="https://binarcode.com" target="_blank" rel="noopener"
          >Ryan Saputro</a
        >
        and
        <a href="https://www.creative-tim.com" target="_blank" rel="noopener"
          >Creative Tim</a
        >.
      </div>
    </div>
  </footer>
</template>
<script>
export default {
  props: {
    backgroundColor: String,
    type: String
  },
  data() {
    return {
      year: new Date().getFullYear()
    };
  }
};
</script>
<style></style>
