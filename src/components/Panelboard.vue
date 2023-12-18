<template>
  <div class="container">
    <h2>Dashboard</h2>
    <div class="date">
      <p>{{ formattedDate }}</p>
      <div class="user-setting-dropdown">
        <a href="#" class="admintext" @click="toggleDropdown">
          <i class='bx bxs-user-circle admin-icon'></i>Danny <i class='bx bx-chevron-down'></i>
        </a>
        <div class="user-drop-content" v-show="dropdownVisible" @click="closeDropdown">
          <a href="#" class="left-align">Settings</a>
          <router-link to="/login">
            <a href="" class="left-align">Log Out</a>
          </router-link>
        </div>
      </div>
    </div>
    <div class="nav-bar">
      <h1>Admin</h1>
      <img src="../assets/logoupdate.png" alt="">
      <div class="nav-menus">
        <router-link to="/maindashboards">
          <a href="">DASHBOARD</a>
        </router-link>
        <div class="dropdown" @click="toggleEquipmentDropdown">
          <a href="#" class="equip">EQUIPMENTS <i class='bx bx-chevron-down'></i></a>
          <div v-show="equipmentDropdownVisible" class="dropdown-content" ref="equipmentDropdown">
            <router-link to="/panelboardequipment">
              <a href="" class="left-align">Manage Tools</a>
            </router-link>
            <a href="#" class="left-align">Available List</a>
          </div>
        </div>
        <a href="#">RECORDS</a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      formattedDate: "",
      dropdownVisible: false,
      equipmentDropdownVisible: false,
    };
  },
  mounted() {
    this.updateDate();
  },
  methods: {
    updateDate() {
      const currentDate = new Date();
      const options = { weekday: "short", month: "short", day: "numeric", year: "numeric" };
      this.formattedDate = currentDate.toLocaleDateString("en-US", options);
    },
    toggleDropdown() {
      this.dropdownVisible = !this.dropdownVisible;
      this.equipmentDropdownVisible = false;
    },
    closeDropdown() {
      this.dropdownVisible = false;
      this.equipmentDropdownVisible = false;
    },
    toggleEquipmentDropdown() {
      this.equipmentDropdownVisible = !this.equipmentDropdownVisible;
    },
  },
};
</script>

<style scoped>

.container {
  width: 100%;
}

.container .date {
  text-align: center;
  color: #352929;
  font-family: Carme;
  font-size: 18px;
  font-style: normal;
  font-weight: 400;
  left: 50%;
  position: absolute;
  margin-top: 35px;
  left: -23%;
  width: 100%;
}

.container h2 {
  position: absolute;
  color: rgba(255, 106, 213, 0.75);
  font-family: Content;
  font-size: 24px;
  font-style: bold;
  font-weight: 700;
  left: 23%;
  margin-top: 10px;
  line-height: normal;
}

.nav-bar {
    position: relative;
    display: flex;
    flex-direction: column; 
    background: rgba(238, 158, 215, 0.96);
    width: 317px;
    height: 100vh;
    justify-content: flex-start; 
    align-items: flex-start;
    margin-right: 10px; 
    right: 9.3%;
    }

img {
    margin-top: 20px;
    width: 50%; /* Adjust as needed */
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 3px 5px 5px 0px rgba(0, 0, 0, 0.30);
    border-radius: 50%;
    border-width: 1rem;
    position: relative;
    left: 25%;
    background: lightgray 50% / cover no-repeat;

    
}

.nav-bar h1 {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    left: 30%;
    margin-top: 20px;
    color: rgba(19, 17, 18, 0.78);
}

.nav-menus {
  display: flex;
  flex-direction: column; 
  align-items: center; 
  justify-content: center; 
  margin-top: 20px;
  width: 100%; 
    
  
}

.nav-menus a {
  margin-bottom: 10px; 
  text-decoration: none;
  color: #000;
  text-align: center; 
  width: 100%; 
  padding: 50px;
  color: #000;
  font-family: 'Cairo', sans-serif;
  font-size: 20px;
  font-style: normal;
  font-weight: 700;
  transition: transform 0.2s ease-in-out;
}

  .nav-menus a:hover  {
    transform: scale(1.05);
    color: white;
  }

.dropdown {
  position: relative;
  display: inline-block;
  transition: transform 0.2s ease-in-out;
 
}

.dropdown .equip:hover a{
  transform: scale(1.05);

}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: transparent;
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
  z-index: 1;
  font-size: 20px;
  width: 250px;
  padding: 10px;
  right: 0; 
  top: 100%; 
  
}
  .dropdown-content a {
    color: #fff; 
    display: block;
    padding: 10px;
    outline: none;
    
  }

  .dropdown-content a:hover {
    background-color: #000; 
  }

  .dropdown:hover .dropdown-content {
    display: block;
    outline: none;
  }



 /* user-settings */

 .user-setting-dropdown {
  position: relative;
  display: inline-block;
  left: 1000px;
  bottom: 60px;
}

.user-setting-dropdown .admintext {
  color: rgba(249, 60, 195, 0.78);
  font-family: 'Cambay', sans-serif;
  font-size: 27px;
  font-style: normal;
  font-weight: 400;
}

.user-drop-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 150px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
  z-index: 1;
  left: 0; 
  top: 100%;
}

.user-setting-dropdown:hover .user-drop-content {
  display: block;
}

.user-drop-content a {
  color: black;
  padding: 10px 10px;
  text-decoration: none;
  display: block;
  font-size: 20px;
  transition: transform 0.2s ease-in-out;
  
}

.user-drop-content a:hover {
  background-color: #f1f1f1;
  
  transform: scale(1.05);
}

.left-align {
  text-align: left;
}

.admin-icon {
  padding: 0;
  color: black;
}


.show {
  display: block;
}


</style>