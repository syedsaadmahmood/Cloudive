<template>
  <div class="wrapper">
    <!-- Header Start -->
    <Header></Header>
    <!-- Header End -->

    <!-- About Start -->
    <div class="about" style="padding-bottom: 0">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <img src="img/us.jpg" alt="Image" />
          </div>
          <div class="col-md-6">
            <h2 class="section-title">Learn About Us</h2>
            <p>
              We are highly capable of designing software programs and cloud
              technologies. We provide a team of highly experienced
              professionals who work to provide you with the best possible
              solutions. Our main goal is client satisfaction keeping in view
              the challenges of remote working. We have provided thousands of
              international clients with best outputs. We believe in quality
              interaction with our clients to give them the best form of what
              they desire and our work speaks for itself.
            </p>
            <p>
              Our team works on latest technologies and frameworks in order to
              achieve our goal. We are ready to take diverse and challenging
              projects with an aim to create real value for our client
              community. We believe in nurturing long term relationships with
              our clients.
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- About End -->

    <!-- chart Start -->
    <div class="row portfolio" style="padding-bottom: 0">
      <div class="col-12">
        <ul id="portfolio-flters">
          <li
            v-bind:class="selected == 'technologies' ? 'filter-active' : ''"
            @click="technologies()"
          >
            Technologies
          </li>
          <li
            v-bind:class="selected == 'frameworks' ? 'filter-active' : ''"
            @click="frameworks()"
          >
            Frameworks
          </li>
        </ul>
      </div>
    </div>
    <div id="chartContainer" class="doughnut"></div>
    <!-- chart End -->

    <!-- Team Start -->
    <div class="team display-members" style="padding-top: 0">
      <div class="container">
        <div class="section-header">
          <h2>Our Executives</h2>
        </div>
        <div class="row">
          <div class="col-sm-6 col-lg-4 exe-p">
            <div class="team-item">
              <div class="team-img">
                <img src="img/saad.jpg" alt="Team" />
              </div>
              <div class="team-text">
                <h3>Saad Mahmood</h3>
                <p>Founder, IT Specialist</p>
              </div>
              <!-- <div class="team-social">
                <a href=""><i class="fab fa-facebook-f"></i></a>
                <a href=""><i class="fab fa-twitter"></i></a>
                <a href=""><i class="fab fa-linkedin-in"></i></a>
                <a href=""><i class="fab fa-pinterest"></i></a>
                <a href=""><i class="fab fa-youtube"></i></a>
              </div> -->
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 exe-p">
            <div class="team-item">
              <div class="team-img">
                <img src="img/mahmood.jpg" alt="Team" />
              </div>
              <div class="team-text">
                <h3>Syed Mahmood ul Hasan</h3>
                <p>General Manager</p>
              </div>
              <!-- <div class="team-social">
                <a href=""><i class="fab fa-facebook-f"></i></a>
                <a href=""><i class="fab fa-twitter"></i></a>
                <a href=""><i class="fab fa-linkedin-in"></i></a>
                <a href=""><i class="fab fa-pinterest"></i></a>
                <a href=""><i class="fab fa-youtube"></i></a>
              </div> -->
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 exe-p">
            <div class="team-item">
              <div class="team-img">
                <img src="img/fahad.jpg" alt="Team" />
              </div>
              <div class="team-text">
                <h3>Fahad Mahmood</h3>
                <p>Marketing Head</p>
              </div>
              <!-- <div class="team-social">
                <a href=""><i class="fab fa-facebook-f"></i></a>
                <a href=""><i class="fab fa-twitter"></i></a>
                <a href=""><i class="fab fa-linkedin-in"></i></a>
                <a href=""><i class="fab fa-pinterest"></i></a>
                <a href=""><i class="fab fa-youtube"></i></a>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Team End -->

    <!-- Footer Start -->
    <Footer></Footer>
    <!-- Footer End -->
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Header from "@/components/Header.vue"; // @ is an alias to /src
import Footer from "@/components/Footer.vue"; // @ is an alias to /src
declare var CanvasJS;

@Component({
  components: {
    Header,
    Footer,
  },
})
export default class About extends Vue {
  public selected = "technologies";
  public technologies(): void {
    this.selected = "technologies";
    var chart = new CanvasJS.Chart("chartContainer", {
      animationEnabled: true,
      toolTip: {
        enabled: false,
      },
      data: [
        {
          type: "doughnut",
          startAngle: 80,
          radius: "90%",
          innerRadius: "70%",
          indexLabelFontSize: 17,
          indexLabel: "{label}",
          dataPoints: [
            { y: 35, label: "Python", color: "#3f12de" },
            { y: 40, label: "Javascript", color: "#1e0380" },
            { y: 10, label: "C++", color: "#7b93ec" },
            { y: 15, label: "SQL", color: "#95b2e7" },
          ],
        },
      ],
    });
    chart.render();
  }
  public frameworks(): void {
    this.selected = "frameworks";
    var chart = new CanvasJS.Chart("chartContainer", {
      animationEnabled: true,
      toolTip: {
        enabled: false,
      },
      data: [
        {
          type: "doughnut",
          startAngle: 80,
          radius: "90%",
          innerRadius: "70%",
          indexLabelFontSize: 17,
          indexLabel: "{label}",
          // toolTipContent: "<b>{label}:</b> {y} (#percent%)",
          dataPoints: [
            { y: 30, label: "Angular", color: "#3f12de" },
            { y: 28, label: "Django", color: "#1e0380" },
            { y: 10, label: "Vue", color: "#7b93ec" },
            { y: 15, label: "Node", color: "#95b2e7" },
            { y: 8, label: "React", color: "#4985f4" },
            { y: 4, label: "Electron", color: "#7192ce" },
            { y: 15, label: "Ionic", color: "#144fbe" },
          ],
        },
      ],
    });
    chart.render();
  }
  mounted(): void {
    this.technologies();
  }
}
</script>

<style scoped>
.doughnut {
  width: 100%;
  height: 500px;
}

.exe-p {
  padding: 40px;
}
@media (max-width: 992px) {
  .doughnut {
    width: 100%;
    height: 420px;
  }

  .exe-p {
    padding: 48px;
  }
}
</style>
