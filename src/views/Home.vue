<template>
  <div class="wrapper">
    <!-- Header Start -->
    <Header></Header>
    <!-- Header End -->

    <!-- About Start -->
    <div class="bg"></div>
    <a id="arrow" class="arrow-container" href="#service">
      <div id="arrow-down" class="arrow-down"></div>
    </a>
    <!-- About End -->

    <!-- Service Start -->
    <div class="service" id="service">
      <div class="container">
        <div class="section-header">
          <h2>Our Services</h2>
          <p>
            Cloudive provides vast number of software services with the ultimate
            goal of satisfying the client.
          </p>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6">
            <div class="service-item">
              <h3>Web Development</h3>
              <img src="img/web-development.png" alt="Service" />
              <p>
                We as a web development team creates intuitive user experiences
                wrapped up in beautiful designs.
              </p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="service-item">
              <h3>App Development</h3>
              <img src="img/mobile-development.png" alt="Service" />
              <p>
                We develop the best end user experience in all smartphone
                platforms with the simplicity of design.
              </p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="service-item">
              <h3>UI Design</h3>
              <img src="img/responsive-website.png" alt="Service" />
              <p>
                We design UI for both web and mobile base apps with keeping in
                mind the usability and responsiveness.
              </p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="service-item">
              <h3>Cloud Based Solutions</h3>
              <img src="img/cloud-computing.png" alt="Service" />
              <p>
                We provide cloud based solutions on Amazon Web Services,
                Microsoft Azure, Google Cloud or Heroku.
              </p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="service-item">
              <h3>SEO</h3>
              <img src="img/seo-monitoring.png" alt="Service" />
              <p>
                We utilize different methods to give the product an optimize
                experience in searching.
              </p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="service-item">
              <h3>Online Marketing</h3>
              <img src="img/marketing.png" alt="Service" />
              <p>
                We use the best social media marketing strategies in order to
                give boost to the product.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Service End -->

    <!-- Service Start -->
    <div class="service">
      <div class="container">
        <div class="technology-header">
          <h2>Technologies We know</h2>
          <div class="row">
            <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
              <img class="technology" src="img/angular.png" alt="Logo" />
              <img class="technology" src="img/vue.png" alt="Logo" />
              <img class="technology" src="img/react.png" alt="Logo" />
              <img class="technology" src="img/electron.png" alt="Logo" />
              <img class="technology" src="img/ionic.png" alt="Logo" />
              <img class="technology" src="img/html.png" alt="Logo" />
            </div>
            <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
              <img class="technology" src="img/typescript.png" alt="Logo" />
              <img class="technology" src="img/python.png" alt="Logo" />
              <img class="technology" src="img/node-js.png" alt="Logo" />
              <img class="technology" src="img/css.png" alt="Logo" />
              <img class="technology" src="img/apple.png" alt="Logo" />
              <img class="technology" src="img/android.png" alt="Logo" />
            </div>
            <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
              <img class="technology" src="img/elasticsearch.png" alt="Logo" />
              <img class="technology" src="img/redis.png" alt="Logo" />
              <img class="technology" src="img/nginx.png" alt="Logo" />
              <img class="technology" src="img/jenkins.png" alt="Logo" />
              <img class="technology" src="img/docker.png" alt="Logo" />
              <img class="technology" src="img/postgresql.png" alt="Logo" />
            </div>
            <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
              <img class="technology" src="img/git.png" alt="Logo" />
              <img class="technology" src="img/jira.png" alt="Logo" />
              <img class="technology" src="img/visual-studio.png" alt="Logo" />
              <img class="technology" src="img/aws.png" alt="Logo" />
              <img class="technology" src="img/azure.png" alt="Logo" />
              <img class="technology" src="img/heroku.png" alt="Logo" />
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Footer Start -->
    <Footer></Footer>
    <!-- Footer End -->
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "@/components/Header.vue"; // @ is an alias to /src
import Footer from "@/components/Footer.vue"; // @ is an alias to /src
import router from "@/router";

@Component({
  components: {
    Header,
    Footer,
  },
})
export default class Home extends Vue {
  created(): void {
    window.addEventListener("scroll", this.handleScroll);
  }
  destroyed(): void {
    window.removeEventListener("scroll", this.handleScroll);
  }
  public handleScroll(): void {
    const arrow = document.getElementById("arrow");
    const arrowDown = document.getElementById("arrow-down");
    if (window.pageYOffset > 10) {
      // arrow?.classList.remove("arrow-container");
      // arrowDown?.classList.remove("arrow-down");
    } else {
      arrow?.classList.add("arrow-container");
      arrowDown?.classList.add("arrow-down");
      router.replace({ path: "" });
    }
  }
}
</script>

<style scoped>
.arrow-container {
  width: 25px;
  /* cubic-bezier-easing = sine / mehr Beispiele: https://easings.net/ */
  animation: bounce 1600ms infinite cubic-bezier(0.445, 0.05, 0.55, 0.95);
  cursor: pointer;
  height: 20px;
  position: fixed;
  bottom: 12px;
  left: 50%;
  margin-left: -20px;
}

.arrow-down {
  height: 6px;
  background: white;
  transform: rotate(45deg);
  transform-origin: 0% 0%;
  border-radius: 5px;
}
.arrow-down:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  bottom: 0;
  left: 100%;
  border-radius: 5px;
  background: white;
  transform: rotate(-90deg);
  transform-origin: 0% 100%;
}

@keyframes bounce {
  50% {
    transform: translateY(-30px);
  }
}
</style>
