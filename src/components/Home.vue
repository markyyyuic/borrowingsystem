
<template>
  
<div class="background">
    <div class="logo-title">
      <img src="../assets/logoupdate.png" alt="">
      <h1>OpenLab Borrowing System</h1>
    </div>

    <h2>Welcome, User!</h2>


    <div class="content">
      <router-link to="/about">
      <button>GET STARTED</button>
    </router-link>
      <router-link to="/login">
      <a href="" class="admin-panel">Login as Admin</a>
    </router-link>
    </div>



   
</div>



</template>

<script setup>

</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Inria+Sans:wght@300&family=Poppins:wght@800&display=swap');




.admin-dashboard {
  text-align: center; 
  margin-top: 20px; 
}

.content .admin-panel {
  color: white;
  font-size: 1rem;
  cursor: pointer;
  background: rgba(255, 128, 219, 0.75);
  border-radius: 5px;
  padding: 5px;
  font-weight: 400;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5)
}

.admin-panel:hover {
  background-color: lightpink;
}

.admin-dashboard a {
  font-size: 25px;
  text-decoration: none;
  color: white;
}
.background {
  position: relative;
  background: url('../assets/background.png')  center/cover;
  height: 100vh;
  width: 100vw;
  overflow: hidden;

}


.logo-title {
  display: flex; 
  align-items: center; 
}

.background img {
  width: 8%;
  margin: 15px;
}

.logo-title h1{
  margin-left: 5px;
  font-size: 20px;
  color: #403636;
 
  
}

.background .content {
  display: flex;
  flex-direction: column;
  align-items: center; /* Center content horizontally */
  justify-content: center; /* Center content vertically */
  height: 80vh; /* Fill the entire height of the viewport */
}

.background  h2 {
  text-align: left;
  font-size: 70px;
  margin-top: 30px;
  margin-left: 67px;
  color: #403636;
}

 button {
  display: flex;
  justify-content: center;
  text-align: center;
  border: 0;
  border-radius: 30px;
  color: white;
  background: rgba(255, 128, 219, 0.75);
  margin: 10px;
  padding: 15px;
  font-size: 2em;
  width: 100%;
  cursor: pointer;
  text-transform: capitalize;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
  transition: transform 0.2s ease-in-out;
  
  
}

 button:hover{
  background: lightpink;
  color: rgb(70, 24, 66);
  transform: scale(1.05);
}



</style>