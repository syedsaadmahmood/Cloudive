<template>
  <div class="footer">
    <div class="container"></div>
    <div class="container copyright">
      <div class="row">
        <div class="col-md-6">
          <p>&copy; 2021 Cloudive Technologies. All Rights Reserved.</p>
        </div>
        <div class="col-md-6">
          <!-- <div class="topbar-col" style="text-align: center">
            <div class="topbar-social">
              <a href=""><i class="fab fa-facebook-f"></i></a>
              <a href=""><i class="fab fa-instagram"></i></a>
              <a href=""><i class="fab fa-linkedin-in"></i></a>
            </div>
          </div> -->
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component
export default class Footer extends Vue {}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped></style>
