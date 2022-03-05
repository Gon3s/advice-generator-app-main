<script setup>
// import HelloWorld from './components/HelloWorld.vue'
// import TheWelcome from './components/TheWelcome.vue'
import Advice from './components/Advice.vue'
</script>

<template>
  <Advice />
</template>

<style lang="scss">
@import "./assets/reset.scss";
@import "./assets/variables.scss";
@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@400;800&display=swap');

body {
  font-family: 'Manrope', sans-serif;
  background-color: $darkBlue;
  color: $lightCyan;
  height: 100vh;
  font-size: 28px;

  #app {
    height: calc(100vh - 48px);
	  display: flex;
    align-items: center;
    justify-content: center;
    margin: auto 24px;
  }

  .attribution { 
    font-size: 11px; 
    text-align: center; 
    a { 
      color: $neonGreen;
    }
  }
}
</style>
