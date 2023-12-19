<template>
  <div class="background">

    <div class="logo-text">
      
      
    </div>

    <div class="container">
      <img src="../assets/logoupdate.png" alt="">
    </div>

    <h2>Open Lab Borrowing System</h2>
    <h1>Welcome, User!</h1>
    <div class="button-container">

      <button  @click="toAbout" class="white-bg">Get Started</button>
      <button @click="toAdmin" class="pink-bg">Sign In as Admin</button>
    </div>
  </div>
</template>


<script>
export default {
   methods: {
    toAbout(){
      this.$router.push('/about');
    },
    toAdmin() {
      this.$router.push('/login');
    }
   }
}


</script>


<style scoped>

.rt {
  color: inherit;
  text-decoration: none;
}



.background {
  margin: 0;
  position: absolute;
  padding: 0;
  background-image: linear-gradient(89.868deg, rgba(232, 111, 198, 0.85) 0%, rgba(226, 109, 194, 0.00) 100%), url('../assets/background.png');
  background-position: center;
  background-size: cover;
  width: 100%;
  height: 100%;
  display: flex;
  flex-shrink: 0;
  overflow: hidden;
}

.logo-text {
  margin: 0;
  padding: 0;
  position: relative;
  display: flex;
}

.container {
  position: absolute;
  justify-content: center;
  align-items: center;
  left: 60%;
  top: 25%;
}

.container img {
  height: 15%;
  margin: 20px;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.20);
  border-radius: 50%;



}

.logo-text h1 {
  font-size: 1.5rem;
  color: #FFFBFB;
  text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
  font-family: 'Inter' sans-serif;
  font-style: normal;
  font-weight: 700;
  line-height: normal;
  margin-top: 50px;
}

h2 {
  position: relative;
  display: flex;
  color: #FFFBFB;
  text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.35);
  font-family: 'Readex Pro' sans-serif;
  font-size: 3.0rem;
  font-style: normal;
  font-weight: 700;
  line-height: normal;
  justify-content: center;
  align-items: center;
  text-align: left;
  left: 16%;
  bottom: 15%;
}


h1 {
  position: relative;
  display: flex;
  color: #FFFBFB;
  text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.35);
  font-family: 'Readex Pro' sans-serif;
  font-size: 3.0rem;
  font-style: normal;
  font-weight: 700;
  line-height: normal;
  justify-content: center;
  align-items: center;
  text-align: left;
  left: -15%;
  bottom: 2%;

}


.background .button-container {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  top: 15%;
  right: 42%;
  
}

.button-container button {
  margin: 20px;
  border: none;
  padding: 10px;
  border-radius: 20px;
  height: 7.5%;
  width: 13rem;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  

}

.button-container .white-bg {
  background: #FFF;
  color: rgba(255, 62, 199, 0.96);
  font-weight: 700;
  font-family: 'Inter' sans-serif;
  line-height: normal;
  font-style: normal;
  font-size: 1.1rem;
  transition: transform 0.2s ease-in-out;
}

.button-container .white-bg:hover{
  background: rgba(255, 62, 199, 0.96);
  transition: 0.5s;
  color: #FFF;
  transform: scale(1.05);
}


.button-container .pink-bg {
  background: rgba(255, 62, 199, 0.96);;
  color: rgba(255, 255, 255, 0.96);
  font-weight: 900;
  font-family: 'Inter' sans-serif;
  line-height: normal;
  font-style: normal;
  font-size: 1.1rem;
  transition: transform 0.2s ease-in-out;
}


.button-container .pink-bg:hover{
  background: #FFF;
  transition: 0.5s;
  color: rgba(255, 62, 199, 0.96);
  transform: scale(1.05);
}

</style>

