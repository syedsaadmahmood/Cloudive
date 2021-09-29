<template>
  <div id="app">
    <router-view />
  </div>
</template>

<style>
/*******************************/
/********* General CSS *********/
/*******************************/
body {
  color: #213546;
  background: #eeeeee;
  font-family: "Raleway", sans-serif;
}

html {
  scroll-behavior: smooth;
}

a {
  color: #4f84c4;
  transition: 0.3s;
}

a:hover,
a:active,
a:focus {
  color: #00539c;
  outline: none;
  text-decoration: none;
}

.btn:focus {
  box-shadow: none;
}

.wrapper {
  position: relative;
  width: 100%;
  /* max-width: 1366px; */
  margin: 0 auto;
  background: #ffffff;
  overflow-x: hidden;
}

.bg {
  /* The image used */
  background-image: url("../public/img/home1.jpg");

  /* Full height */
  height: 90vh;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.bg-contact {
  /* The image used */
  background-image: url("../public/img/contact.jpg");

  /* Full height */
  height: 60vh;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.router-link-exact-active {
  color: #00539c !important;
  border-bottom: 5px solid #00539c;
}

/*******************************/
/********** Header CSS *********/
/*******************************/
.header {
  position: relative;
  width: 100%;
  border-bottom: 1px solid #eeeeee;
}

@media (min-width: 1200px) {
  .header .container-fluid {
    padding-left: 60px;
    padding-right: 60px;
  }
}

.header .brand {
  position: relative;
}

.header .brand img {
  width: 100%;
  max-width: 170px;
  height: 100%;
  max-height: 100px;
}

.header .topbar {
  position: relative;
  text-align: right;
}

.header .dropdown-menu {
  margin-top: 0;
  border: 0;
  border-radius: 0;
  background: #bbbbbb;
}

.header .dropdown-menu a.active {
  color: #4f84c4;
}

@media (min-width: 992px) {
  .header .navbar {
    background: #ffffff !important;
  }

  .header .navbar-brand {
    display: none;
  }

  .header .navbar-light a.nav-link {
    position: relative;
    padding: 8px 10px;
    color: #213546;
    font-size: 18px;
    z-index: 1;
  }

  .header .navbar-light a.nav-link:hover,
  .header .navbar-light a.nav-link.active {
    color: #4f84c4;
  }
}

@media (max-width: 992px) {
  .header .brand {
    /* text-align: center; */
    margin-bottom: 0;
  }

  .header .navbar-toggler {
    margin-top: -100px;
  }

  .header .navbar-brand {
    display: inline-block;
    margin-right: 1rem;
    font-size: 1.25rem;
    line-height: inherit;
    white-space: nowrap;
  }

  .header .topbar {
    text-align: center;
    margin-bottom: 15px;
  }

  .header .topbar .topbar-col {
    margin: 0;
  }

  .header .topbar .topbar-social {
    margin-top: 5px;
  }

  .header .navbar {
    background: #ffffff !important;
    z-index: 1;
  }

  .header a.nav-link {
    padding: 5px 0;
  }

  .header .dropdown-menu {
    box-shadow: none;
  }
}

.header .navbar .btn {
  position: relative;
  margin-left: 15px;
  padding: 12px 25px 10px 25px;
  font-size: 13px;
  font-weight: 500;
  text-transform: uppercase;
  color: #ffffff;
  border: none;
  border-radius: 30px;
  background: linear-gradient(#4f84c4, #00539c);
  transition: 0.5s;
}

.header .navbar .btn:hover {
  background: linear-gradient(#00539c, #4f84c4);
}

.header .navbar .btn i {
  font-size: 16px;
  margin-right: 8px;
}

@media (max-width: 992px) {
  .header .navbar .btn {
    margin: 15px 0 10px 0;
  }
}

/*******************************/
/******* Page Header CSS *******/
/*******************************/
.page-header {
  position: relative;
  margin-bottom: 45px;
  padding: 80px 0;
  text-align: center;
  background: linear-gradient(to right, #00539c, #4f84c4 50%);
}

.page-header h2 {
  color: #ffffff;
  font-size: 35px;
  font-weight: 700;
  text-transform: uppercase;
}

.page-header a {
  position: relative;
  padding: 0 12px;
  font-size: 16px;
  font-weight: 400;
  color: #ffffff;
}

.page-header a::after {
  position: absolute;
  content: "";
  width: 7px;
  height: 7px;
  top: 6.5px;
  right: -6px;
  border-radius: 7px;
  background: #ffffff;
}

.page-header a:last-child::after {
  display: none;
}

/*******************************/
/*********** Hero CSS **********/
/*******************************/
.hero {
  position: relative;
  width: 100%;
  padding: 45px 0;
}

@media (min-width: 768px) {
  .hero {
    padding: 45px 60px;
  }
}

.hero h2 {
  margin: 0;
  font-size: 45px;
  font-weight: 800;
}

.hero h2 span {
  color: #4f84c4;
}

.hero p {
  margin: 10px 0 20px 0;
  font-size: 18px;
  font-weight: 500;
}

.hero a.btn {
  position: relative;
  padding: 10px 35px;
  font-size: 13px;
  font-weight: 500;
  text-transform: uppercase;
  color: #ffffff;
  border: none;
  border-radius: 50px;
  background: linear-gradient(#4f84c4, #00539c);
  transition: 0.5s;
}

.hero a.btn:hover {
  background: linear-gradient(#00539c, #4f84c4);
}

.hero img {
  max-width: 100%;
  max-height: 600px;
}

@media (max-width: 767.98px) {
  .hero img {
    margin-top: 30px;
  }
}

/*******************************/
/******* Section Header ********/
/*******************************/
.section-header {
  position: relative;
  width: 100%;
  max-width: 550px;
  text-align: center;
  margin: 0 auto;
  margin-bottom: 30px;
  padding-bottom: 15px;
}

.section-header::after {
  position: absolute;
  content: "";
  width: 60px;
  height: 3px;
  left: calc(50% - 30px);
  bottom: 0;
  background: linear-gradient(to left, #4f84c4, #00539c, #4f84c4);
  border-radius: 100%;
}

.section-header h2 {
  font-size: 30px;
  font-weight: 700;
  text-transform: uppercase;
}

.section-header p {
  margin: 0;
  font-size: 16px;
  font-weight: 400;
  line-height: 24px;
}

.canvasjs-chart-credit {
  display: none;
}

/*******************************/
/********* Service CSS *********/
/*******************************/
.service {
  position: relative;
  width: 100%;
  padding: 45px 0 15px 0;
}

@media (min-width: 768px) {
  .service {
    padding: 45px 60px 15px 60px;
  }
}

.service .service-item {
  position: relative;
  width: 100%;
  padding: 25px 30px;
  background: linear-gradient(
    to bottom,
    rgba(0, 0, 0, 0.03) 96%,
    rgba(0, 0, 0, 0.1),
    rgba(0, 0, 0, 0.2)
  );
  border-radius: 30px 30px 0 0;
  margin-bottom: 30px;
}

.service .service-item:hover {
  background: linear-gradient(
    to bottom,
    rgba(0, 0, 0, 0.03) 96%,
    rgba(0, 0, 0, 0.2),
    rgba(0, 0, 0, 0.4)
  );
}

.service .service-item h3 {
  font-size: 20px;
  font-weight: 700;
  line-height: 35px;
  letter-spacing: 1px;
  margin-bottom: 20px;
}

.service .service-item img {
  height: 80px;
}

.service .service-item p {
  position: relative;
  margin: 20px 0 0 0;
  font-size: 16px;
}

.service .technology {
  width: 9vh;
  margin: 10px;
}

.technology-header {
  position: relative;
  width: 100%;
  max-width: 650px;
  text-align: center;
  margin: 0 auto;
  margin-bottom: 60px;
  padding-bottom: 15px;
}

/*******************************/
/******* Service Row CSS *******/
/*******************************/
.service-row {
  position: relative;
  width: 100%;
  padding: 45px 0;
}

.service-row .service-row-img {
  position: relative;
  width: 100%;
  padding: 0 30px;
  overflow: hidden;
}

.service-row .service-row-img img {
  max-width: 100%;
}

@media (max-width: 767.98px) {
  .service-row .service-row-img {
    margin-bottom: 30px;
  }
}

.service-row .service-row-text {
  position: relative;
  width: 100%;
  padding: 0 30px;
}

.service-row h2.section-title {
  position: relative;
  font-size: 30px;
  font-weight: 700;
  text-transform: uppercase;
  margin-bottom: 15px;
  padding-bottom: 15px;
}

.service-row h2.section-title::after {
  position: absolute;
  content: "";
  width: 60px;
  height: 3px;
  bottom: 0;
  left: 0;
  background: linear-gradient(to left, #4f84c4, #00539c, #4f84c4);
  border-radius: 0 100% 100% 0;
}

.service-row p {
  font-size: 16px;
}

.service-row a.btn {
  margin-top: 15px;
  padding: 10px 35px;
  font-size: 13px;
  font-weight: 500;
  text-transform: uppercase;
  color: #ffffff;
  border: none;
  border-radius: 50px;
  background: linear-gradient(#4f84c4, #00539c);
  transition: 0.5s;
}

.service-row a.btn:hover {
  background: linear-gradient(#00539c, #4f84c4);
}

.service-row .service-row-col .col-sm-6 {
  display: flex;
  align-items: center;
  margin-top: 10px;
  margin-bottom: 15px;
}

.service-row .service-row-col-icon {
  width: 40px;
  height: 40px;
  margin-right: 15px;
  padding: 8px 0;
  text-align: center;
  color: #ffffff;
  background: #4f84c4;
}

.service-row .service-row-col-text {
  width: calc(100% - 55px);
}

.service-row .service-row-col-text h3 {
  font-size: 13px;
  font-weight: 400;
  margin-bottom: 3px;
}

.service-row .service-row-col-text p {
  margin: 0;
  font-size: 10px;
  font-weight: 400;
}

@media (max-width: 768px) {
  .service-row .service-row-img,
  .service-row .service-row-text {
    padding: 0;
  }
}

/*******************************/
/********** About CSS **********/
/*******************************/
.about {
  position: relative;
  width: 100%;
  padding: 45px 0;
}

@media (min-width: 768px) {
  .about .container-fluid {
    padding: 0;
  }

  .about .row {
    margin: 0;
  }

  .about .col-md-6:first-child {
    padding: 0;
  }

  .about .col-md-6:last-child {
    padding: 0 60px;
  }
}

.about h2.section-title {
  position: relative;
  font-size: 30px;
  font-weight: 700;
  text-transform: uppercase;
  margin-bottom: 15px;
  padding-bottom: 15px;
}

.about h2.section-title::after {
  position: absolute;
  content: "";
  width: 60px;
  height: 3px;
  bottom: 0;
  left: 0;
  background: linear-gradient(to left, #4f84c4, #00539c, #4f84c4);
  border-radius: 0 100% 100% 0;
}

.about p {
  color: #213546;
  font-size: 16px;
  margin-bottom: 30px;
}

.about a.btn {
  padding: 10px 35px;
  font-size: 13px;
  font-weight: 500;
  text-transform: uppercase;
  color: #ffffff;
  border: none;
  border-radius: 50px;
  background: linear-gradient(#4f84c4, #00539c);
  transition: 0.5s;
}

.about a.btn:hover {
  background: linear-gradient(#00539c, #4f84c4);
}

.about img {
  max-width: 100%;
  border-radius: 30px;
}

@media (max-width: 767.98px) {
  .about img {
    margin-bottom: 30px;
    border-radius: 30px 30px 0 0;
  }
}

/*******************************/
/******* Testimonial CSS *******/
/*******************************/
.testimonial {
  position: relative;
  width: 100%;
  padding: 45px 0;
  text-align: center;
}

.testimonial .container {
  max-width: 960px;
}

.about-page .testimonial {
  padding-bottom: 90px;
}

.testimonial .testimonial-slider-nav {
  position: relative;
  width: 300px;
  margin: 0 auto;
}

.testimonial .testimonial-slider-nav .slick-slide {
  position: relative;
  opacity: 0;
  transition: 0.5s;
}

.testimonial .testimonial-slider-nav .slick-active {
  opacity: 1;
  transform: scale(1.3);
}

.testimonial .testimonial-slider-nav .slick-center {
  transform: scale(2);
  z-index: 1;
}

.testimonial .testimonial-slider-nav .slick-slide img {
  position: relative;
  display: block;
  margin-top: 37px;
  width: 100%;
  height: auto;
  border-radius: 100px;
}

.testimonial .testimonial-slider-nav .slick-center img {
  border: 5px solid #ffffff;
}

.testimonial .testimonial-slider {
  position: relative;
  margin-top: 15px;
  padding-top: 50px;
}

.testimonial .testimonial-slider::before {
  position: absolute;
  content: "";
  width: 60px;
  height: 50px;
  top: 0;
  left: calc(50% - 30px);
  background: url(../public/img/quote.png) top center no-repeat;
}

.testimonial .testimonial-slider h3 {
  font-size: 20px;
  font-weight: 700;
}

.testimonial .testimonial-slider h4 {
  font-size: 14px;
}

.testimonial .testimonial-slider p {
  font-size: 18px;
  font-style: italic;
  margin: 0;
}

/*******************************/
/******* Call to Action ********/
/*******************************/
.call-to-action {
  position: relative;
  padding: 50px 0;
  background: linear-gradient(to right, #00539c, #4f84c4 50%);
}

.service-page .call-to-action {
  margin-top: 45px;
}

.call-to-action h2 {
  color: #ffffff;
  font-size: 35px;
  font-weight: 600;
  text-transform: uppercase;
}

.call-to-action p {
  margin: 0;
  color: #ffffff;
  font-size: 16px;
  font-weight: 400;
}

.call-to-action a {
  float: right;
  padding: 10px 50px;
  font-size: 13px;
  font-weight: 600;
  text-transform: uppercase;
  color: #2c3035;
  background: #ffffff;
  border-radius: 30px;
}

@media (max-width: 768px) {
  .call-to-action a {
    float: left;
    margin-top: 30px;
  }
}

/*******************************/
/*********** Team CSS **********/
/*******************************/
.team {
  position: relative;
  width: 100%;
  padding: 45px 0 60px 0;
}

@media (min-width: 768px) {
  .team {
    padding: 45px 60px 60px 60px;
  }
}

.team .team-item {
  position: relative;
  width: 100%;
  margin-bottom: 30px;
  padding: 30px;
  background: rgba(0, 0, 0, 0.05);
  border-radius: 300px 300px 5px 5px;
}

.team .team-img {
  position: relative;
  width: 100%;
  overflow: hidden;
}

.team .team-img img {
  width: 100%;
  border-radius: 300px;
}

.team .team-text {
  position: relative;
  width: 100%;
  text-align: center;
  margin-top: 30px;
}

.team .team-text h3 {
  margin: 0;
  font-size: 16px;
  font-weight: 600;
}

.team .team-text p {
  font-size: 14px;
  font-weight: 400;
  margin: 0;
}

.team .team-social {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  padding: 30px 20px;
  display: flex;
  align-items: flex-end;
  justify-content: center;
  background: rgba(79, 132, 196, 0.92);
  border-radius: 300px 300px 5px 5px;
  opacity: 0;
  transition: 0.5s;
}

.team .team-item:hover .team-social {
  opacity: 1;
}

.team .team-social a {
  color: #ffffff;
  font-size: 22px;
  padding: 0 10px;
}

/*******************************/
/******** Portfolio CSS ********/
/*******************************/
.portfolio {
  position: relative;
  padding: 45px 0;
  background: #ffffff;
}

.portfolio #portfolio-flters {
  padding: 0;
  margin: -15px 0 25px 0;
  list-style: none;
  font-size: 0;
  text-align: center;
}

.portfolio #portfolio-flters li,
.portfolio .load-more .btn {
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  padding: 10px 25px;
  color: #ffffff;
  font-size: 14px;
  text-transform: uppercase;
  border-radius: 30px;
  background: linear-gradient(#4f84c4, #00539c);
  border: 1px solid #4f84c4;
  transition: 0.5s;
}

.portfolio #portfolio-flters li:hover,
.portfolio #portfolio-flters li.filter-active {
  background: #ffffff;
  color: #213546;
}

.portfolio .load-more {
  text-align: center;
}

.portfolio .load-more .btn {
  margin: 25px 0;
  padding: 15px 40px;
  transition: 0.5s;
}

.portfolio .load-more .btn:hover {
  background: linear-gradient(#00539c, #4f84c4);
}

.portfolio .portfolio-item {
  position: relative;
  height: 280px;
  margin-bottom: 30px;
  border-radius: 8px;
  overflow: hidden;
}

.portfolio .portfolio-item figure {
  background: #ffffff;
  overflow: hidden;
  height: 280px;
  position: relative;
  border-radius: 30px 30px 0 0;
  margin: 0;
}

.portfolio .portfolio-item figure img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 8px;
}

.portfolio .portfolio-item figure:hover img {
  opacity: 0.3;
  transition: 0.3s;
}

.portfolio .portfolio-item figure .link-preview,
.portfolio .portfolio-item figure .link-details {
  position: absolute;
  display: inline-block;
  opacity: 0;
  line-height: 1;
  text-align: center;
  width: 45px;
  height: 35px;
  border-radius: 6px;
  background: linear-gradient(#4f84c4, #00539c);
  transition: 0.5s;
}

.portfolio .portfolio-item figure .link-preview i,
.portfolio .portfolio-item figure .link-details i {
  color: #ffffff;
  padding-top: 9px;
  font-size: 16px;
}

.portfolio .portfolio-item figure .link-preview:hover,
.portfolio .portfolio-item figure .link-details:hover {
  background: linear-gradient(#00539c, #4f84c4);
}

.portfolio .portfolio-item figure .link-preview:hover i,
.portfolio .portfolio-item figure .link-details:hover i {
  color: #ffffff;
}

.portfolio .portfolio-item figure .link-preview {
  top: 50%;
  left: calc(50% - 61px);
}

.portfolio .portfolio-item figure .link-details {
  top: 50%;
  right: calc(50% - 61px);
}

.portfolio .portfolio-item figure:hover .link-preview {
  opacity: 1;
  top: calc(50% - 50px);
}

.portfolio .portfolio-item figure:hover .link-details {
  opacity: 1;
  top: calc(50% - 50px);
}

.portfolio .portfolio-item figure .portfolio-title {
  position: absolute;
  margin: 0;
  width: 100%;
  left: 0;
  right: 0;
  bottom: 0;
  padding: 20px;
  text-align: center;
  color: #ffffff;
  font-size: 14px;
  font-weight: 500;
  text-transform: uppercase;
  background: rgba(79, 132, 196, 0.8);
  border-radius: 0;
}

.portfolio .portfolio-item figure .portfolio-title:hover {
  text-decoration: none;
}

/*******************************/
/********* Contact CSS *********/
/*******************************/
.contact {
  position: relative;
  width: 100%;
  padding: 45px 0;
}

.contact h2.section-title {
  position: relative;
  font-size: 30px;
  font-weight: 700;
  text-transform: uppercase;
  margin-bottom: 45px;
  padding-bottom: 15px;
}

.contact h2.section-title::after {
  position: absolute;
  content: "";
  width: 60px;
  height: 3px;
  bottom: 0;
  left: 0;
  background: linear-gradient(to left, #4f84c4, #00539c, #4f84c4);
  border-radius: 0 100% 100% 0;
}

.contact .contact-info {
  position: relative;
  width: 100%;
  margin-bottom: 45px;
}

.contact .contact-info iframe {
  width: 100%;
  height: 300px;
  margin-bottom: 30px;
  border-radius: 10px;
}

.contact .contact-info h3 {
  color: #3f4b5a;
  font-size: 18px;
  font-weight: 600;
  margin-bottom: 20px;
}

.contact .contact-info h3 span {
  font-weight: 400;
  padding-left: 5px;
}

.contact .contact-info p {
  color: #3f4b5a;
  font-size: 16px;
  font-weight: 400;
  margin-bottom: 20px;
}

.contact .editor-info {
  position: relative;
  width: 100%;
  margin-bottom: 45px;
}

@media (min-width: 992px) {
  .contact .editor-info {
    padding-left: 30px;
  }
}

.contact .editor-item {
  display: flex;
  align-items: center;
  margin-bottom: 30px;
  padding-bottom: 30px;
  border-bottom: 1px solid #dddddd;
}

.contact .editor-item:last-child {
  margin: 0;
  padding: 0;
  border: none;
}

.contact .editor-img {
  width: 120px;
  height: 120px;
  margin-right: 20px;
}

.contact .editor-img img {
  width: 100%;
  height: auto;
  object-fit: cover;
  border-radius: 10px;
}

.contact .editor-text {
  width: auto;
}

.contact .editor-text h3 {
  font-size: 18px;
  font-weight: 600;
  text-transform: uppercase;
}

.contact .editor-text a {
  font-size: 16px;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 1px;
  margin: 0;
}

/*******************************/
/******* Single Page CSS *******/
/*******************************/
.single {
  position: relative;
  width: 100%;
  padding: 45px 0 65px 0;
}

.single h2.section-title {
  position: relative;
  font-size: 30px;
  font-weight: 700;
  text-transform: uppercase;
  margin-bottom: 45px;
  padding-bottom: 15px;
}

.single h2.section-title::after {
  position: absolute;
  content: "";
  width: 60px;
  height: 3px;
  bottom: 0;
  left: 0;
  background: linear-gradient(to left, #4f84c4, #00539c, #4f84c4);
  border-radius: 0 100% 100% 0;
}

.single h3 {
  font-size: 22px;
  font-weight: 600;
  margin-bottom: 25px;
}

.single p {
  font-size: 18px;
  font-weight: 400;
  margin-bottom: 25px;
}

.single .table,
.single .list-group {
  margin-bottom: 30px;
}

/*******************************/
/********* Footer CSS **********/
/*******************************/
.footer {
  position: relative;
  background: #2d0f9b;
}

.footer .footer-about,
.footer .footer-link {
  position: relative;
  margin-bottom: 45px;
}

@media (min-width: 992px) {
  .footer .container:first-child {
    max-width: 960px;
    margin-bottom: 30px;
  }

  .footer .footer-about,
  .footer .footer-link {
    padding: 0 30px;
  }
}

.footer .footer-about h2,
.footer .footer-link h2 {
  position: relative;
  margin-bottom: 45px;
  padding-bottom: 15px;
  font-size: 18px;
  font-weight: 700;
  text-transform: uppercase;
  color: #ffffff;
}

.footer .footer-about h2::after,
.footer .footer-link h2::after {
  position: absolute;
  content: "";
  width: 60px;
  height: 3px;
  bottom: 0;
  left: 0;
  background: linear-gradient(to left, #999999, #ffffff, #999999);
  border-radius: 0 100% 100% 0;
}

.footer .footer-about p {
  margin-bottom: 8px;
  font-size: 14px;
  color: #ffffff;
}

.footer .footer-about p i {
  width: 20px;
}

.footer .footer-link a {
  display: block;
  margin-bottom: 10px;
  font-size: 14px;
  color: #ffffff;
}

.footer .footer-link a::before {
  position: relative;
  content: "\f0da";
  font-family: "Font Awesome 5 Free";
  font-weight: 900;
  margin-right: 10px;
}

.footer .footer-link a:hover {
  color: #ffffff;
}

.footer .copyright {
  padding: 15px;
  border-top: 1px solid #3b3e43;
}

.footer .copyright p {
  margin: 0;
  font-size: 14px;
  color: #ffffff;
}

.footer .copyright .col-md-6:last-child p {
  text-align: right;
}

.footer .copyright p a {
  color: #ffffff;
}

.footer .copyright p a:hover {
  color: #ffffff;
}

.footer .topbar .topbar-col {
  display: inline-block;
  padding: 0 15px;
  margin-bottom: 15px;
}

.footer .topbar-col a {
  color: #213546;
  font-size: 13px;
}

.footer .topbar-col a i {
  margin-right: 10px;
  color: #4f84c4;
}

.footer .topbar-social {
  position: relative;
}

.footer .topbar-social a {
  display: inline-block;
}

.footer .topbar-social a i {
  margin-right: 10px;
  font-size: 18px;
  color: #bbbbbb;
}

.footer .topbar-social a:last-child i {
  margin: 0;
}

.footer .topbar-social a:hover i {
  color: #4f84c4;
}

@media (max-width: 768px) {
  .footer .copyright p,
  .footer .copyright .col-md-6:last-child p {
    margin: 5px 0;
    text-align: center;
  }
}
</style>
