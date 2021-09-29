<template>
  <div class="header" id="header">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-3">
          <div class="brand">
            <router-link
              to="/"
              class="nav-item nav-link"
              style="border-bottom: 0"
            >
              <img src="img/cloudive5.png" alt="Logo" />
            </router-link>
          </div>
        </div>
        <div class="col-lg-9">
          <!-- <div class="topbar">
            <div class="topbar-col">
              <a href="tel:+012 345 67890"
                ><i class="fa fa-phone-alt"></i>+012 345 67890</a
              >
            </div>
            <div class="topbar-col">
              <a href="mailto:info@example.com"
                ><i class="fa fa-envelope"></i>info@example.com</a
              >
            </div>
            <div class="topbar-col">
              <div class="topbar-social">
                <a href=""><i class="fab fa-twitter"></i></a>
                <a href=""><i class="fab fa-facebook-f"></i></a>
                <a href=""><i class="fab fa-youtube"></i></a>
                <a href=""><i class="fab fa-instagram"></i></a>
                <a href=""><i class="fab fa-linkedin-in"></i></a>
              </div>
            </div>
          </div> -->
          <div class="navbar navbar-expand-lg bg-light navbar-light">
            <a class="navbar-brand"></a>
            <button
              type="button"
              class="navbar-toggler"
              data-toggle="collapse"
              data-target="#navbarCollapse"
            >
              <span class="navbar-toggler-icon"></span>
            </button>

            <div
              class="collapse navbar-collapse justify-content-between"
              id="navbarCollapse"
            >
              <div class="navbar-nav ml-auto">
                <router-link to="/" class="nav-item nav-link">Home</router-link>
                <router-link to="/about" class="nav-item nav-link"
                  >About Us</router-link
                >
                <!-- <router-link to="/portfolio" class="nav-item nav-link"
                  >Our Work</router-link
                > -->
                <!-- <a href="services.html" class="nav-item nav-link">Services</a>
                <a href="portfolio.html" class="nav-item nav-link">Portfolio</a>
                <a href="single.html" class="nav-item nav-link">Single Page</a> -->
                <router-link to="/contact" class="nav-item nav-link"
                  >Contact Us</router-link
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component
export default class Header extends Vue {
  created(): void {
    window.addEventListener("scroll", this.handleScroll);
  }
  destroyed(): void {
    window.removeEventListener("scroll", this.handleScroll);
  }
  public handleScroll(): void {
    const header = document.getElementById("header");
    if (window.pageYOffset > 90) {
      header?.classList.add("sticky");
    } else {
      header?.classList.remove("sticky");
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.sticky {
  position: sticky;
  top: 0;
  width: 100%;
  background: white;
  z-index: 200;
  transition: all 0.3s ease;
  animation-fill-mode: forwards;
}

/* Add some top padding to the page content to prevent sudden quick movement (as the header gets a new position at the top of the page (position:fixed and top:0) */
.sticky + .content {
  padding-top: 102px;
}
</style>
