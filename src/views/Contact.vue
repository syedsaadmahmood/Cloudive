<template>
  <div class="wrapper">
    <!-- Header Start -->
    <Header></Header>
    <!-- Header End -->

    <!-- About Start -->
    <div class="bg-contact"></div>
    <!-- About End -->

    <!-- Contact Start -->
    <div class="contact">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h2 class="section-title">Get In Touch</h2>
            <div class="contact-info">
              <div
                style="
                  max-width: 100%;
                  overflow: hidden;
                  color: red;
                  width: 550px;
                  height: 285px;
                "
              >
                <div
                  id="canvasfor-googlemap"
                  style="height: 100%; width: 100%; max-width: 100%"
                >
                  <iframe
                    style="height: 100%; width: 100%; border: 0"
                    frameborder="0"
                    src="https://www.google.com/maps/embed/v1/place?q=Mayo+gardens&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"
                  ></iframe>
                </div>
              </div>
              <h3 style="padding-top: 30px">How to reach us:</h3>
              <h3>Mobile <span>+92 3344033040</span></h3>
              <h3>E-mail <span>info@cloudivetechnologies.com</span></h3>
            </div>
          </div>
          <div class="col-md-6">
            <div class="editor-info">
              <h2 class="section-title">Contact Person</h2>
              <div class="editor-item">
                <div class="editor-img">
                  <img src="img/saad.jpg" alt="Editor Image" />
                </div>
                <div class="editor-text">
                  <h3>Saad Mahmood</h3>
                  <a href="mailto:saad@cloudivetechnologies.com">Email Now</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Contact End -->

    <!-- Footer Start -->
    <Footer></Footer>
    <!-- Footer End -->
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "@/components/Header.vue"; // @ is an alias to /src
import Footer from "@/components/Footer.vue"; // @ is an alias to /src

@Component({
  components: {
    Header,
    Footer,
  },
})
export default class Contact extends Vue {}
</script>
