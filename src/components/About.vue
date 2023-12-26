<template>
  <div class="about-background">
    <div class="form-wrapper" :style="{ height: selectedRole === 'Student' ? '700px' : '600px' }">
      <img src="../assets/logoupdate.png" alt="">
      <h1>Borrowing Form</h1>

      <div class="user-inputs">
        <input type="text" id="uic-id" placeholder="Enter your ID" required>
      </div>

      <div class="user-inputs">
        <input type="text" id="uic-name" placeholder="Enter your name" required>
      </div>

      <div class="user-inputs">
        <div class="dropdown">
          <button class="dropbutton" @click="toggleRoleDropdown">
            {{ selectedRole ? selectedRole : 'University Role' }} 
            <i class="fa fa-caret-down"></i>
          </button>

          <div class="dropdown-content" :class="{ 'show': isRoleDropdownOpen }">
            <a href="#" @click="selectRole('Student')">Student</a>
            <a href="#" @click="selectRole('Personnel')">Personnel</a>
            <a href="#" @click="selectRole('Teacher')">Teacher</a>
          </div>
        </div>
      </div>

      <div class="user-inputs" v-if="selectedRole === 'Student'">
        <input type="text" id="uic-section" placeholder="Your section" required>
      </div>

      <div class="user-inputs" v-if="selectedRole === 'Student'">
        <div class="dropdown">
          <button class="dropbutton" @click="toggleYearLevelDropdown">
            {{ selectedYearLevel ? selectedYearLevel : 'Select Year Level' }}
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content" :class="{ 'show': isYearLevelDropdownOpen }">
            <a href="#" @click="selectYearLevel('1st Year')">1st Year</a>
            <a href="#" @click="selectYearLevel('2nd Year')">2nd Year</a>
            <a href="#" @click="selectYearLevel('3rd Year')">3rd Year</a>
            <a href="#" @click="selectYearLevel('4th Year')">4th Year</a>
          </div>
        </div>
      </div>

     
        <button @click="toCatergory" class="buttons1">NEXT</button>
    
    </div>
  </div>
</template>
  
  <script >

  export default {
    data() {
      return {
        isRoleDropdownOpen: false,
        isYearLevelDropdownOpen: false,
        selectedRole: null,
        selectedYearLevel: null,
      };
    },
    methods: {
      toggleRoleDropdown() {
        this.isRoleDropdownOpen = !this.isRoleDropdownOpen;
      },
      toggleYearLevelDropdown() {
        this.isYearLevelDropdownOpen = !this.isYearLevelDropdownOpen;
      },
      selectRole(role) {
        this.selectedRole = role;
        this.isRoleDropdownOpen = false;
      },
      selectYearLevel(level) {
        this.selectedYearLevel = level;
        this.isYearLevelDropdownOpen = false;
      },
      auth() {
        // Add your authentication logic here
      },
      toCatergory(){
        this.$router.push('/category');
      }
    },
  };
  </script>
  
  <style scoped>
  @import url('https://fonts.googleapis.com/css2?family=Inria+Sans:wght@300&family=Poppins:wght@800&display=swap');
  



html {
  width: 100%;
  height: 100%;
}

  .about-background {
    display: flex;
    position: absolute;
    background: url('../assets/background.png') no-repeat;
    background-size: cover;
    background-position: center;
    height: 100%;
    width: 100%;
    justify-content: center;
    align-items: center;
  }
  
  .form-wrapper {
    margin-top: 3%;
    width: 35%;
    background: rgba(238, 158, 215, 0.78);
    text-align: center;
    color: #f4f1f1;
    border-radius: 10px;
    padding: 30px 40px;
    opacity: 98%;
    height: 22%;
    border-width: 1px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    position: relative;
  }
  
  .form-wrapper img {
    width: 30%;
    margin: 10px;
    position: absolute;
    top: -100px;
    left: 50%;
    transform: translateX(-50%);
  }
  
  .form-wrapper h1 {
    margin-top: 50px;
    color: #403636;
  }
  
  .user-inputs {
    background: rgba(255, 255, 255, 0.54);
    position: relative;
    width: 100%;
    height: 3.9em;
    margin: 35px 0;
    border-radius: 25px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  }
  
  .user-inputs input,
  .user-inputs select {
    width: 100%;
    height: 100%;
    border-radius: 25px;
    border: none;
    outline: none;
    border: 2px solid rgba(0, 0, 0, 0.2);
    font-size: 16px;
    color: #100e0e;
    padding: 20px 45px 20px 20px;
  }
  
  .dropdown {
    width: 100%;
    position: relative;
    height: 3.9em;
  }
  
  .dropbutton {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    height: 100%;
    border: none;
    outline: none;
    border: 2px solid rgba(0, 0, 0, 0.2);
    font-size: 16px;
    color: #040404;
    padding: 10px;
    cursor: pointer;
  }
  
  .dropdown-content {
  width: 100%;
  display: none;
  position: absolute;
  top: 5%; /* Position the dropdown content below the button */
  left: 0;
  background: rgb(249, 249, 249);
  background-color: #fcf9f9;
  border: 2px solid rgba(0, 0, 0, 0.2);
  border-top: none;
  border-radius: 0 0 10px 10px;
  z-index: 1;
  overflow: hidden;
}


.dropdown-content a {
  width: 100%;
  color: black;
  padding: 10px 20px;
  text-decoration: none;
  display: block;
  text-align: left;
  cursor: pointer;
}
  
  .dropdown-content a:hover {
    background-color: #fcf9f9;
  }
  
  .show {
    display: block;

  }
  
  .dropbutton {
    width: 100%;
    display: flex;
    align-items: center;
    height: 100%;
    border: none;
    outline: none;
    border: 2px solid rgba(0, 0, 0, 0.2);
    border-radius: 25px;
    font-size: 16px;
    color: #040404;
    padding: 10px 20px 10px 20px;
    cursor: pointer;

  }
  
  .buttons1 {
    position: relative;
    bottom: 3.5%;
    width: 50%;
    height: 10%;
    background: rgba(252, 243, 243, 0.94);
    border: none;
    outline: none;
    border-radius: 40px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    cursor: pointer;
    font-size: 25px;
    color: rgba(61, 52, 52, 0.83);
    font-weight: 700;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    padding: 10px; /* Adjusted padding */
    transition: transform 0.2s ease-in-out;
    font-family: 'Inter' sans-serif;
    font-style: normal;
}

.buttons1:hover {
  background-color: grey;
  transform: scale(1.05);
  
}
  </style>
  