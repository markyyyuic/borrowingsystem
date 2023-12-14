<template>
  <div class="wallpaper">
    <div class="wrapper-input">
      <img src="../assets/logoupdate.png" alt="">
      <h1>ADMINISTRATOR</h1>

      <div class="admin-inputs">
        <label for="admin-user">Username</label>
        <div class="input-container">
          <i class="bi bi-person personlogo"></i>
          <input v-model="username" type="text" id="admin-user" placeholder="Enter admin username" required @keyup.enter="attemptLogin">
        </div>
      </div>

      <div class="admin-inputs">
        <label for="admin-password">Password</label>
        <div class="input-container">
          <i class="bi bi-lock locklogo"></i>
          <input v-model="password" type="password" id="admin-password" placeholder="Enter admin password" required @keyup.enter="attemptLogin">
        </div>
      </div>

      <button class="loginbutton" @click="attemptLogin">LOGIN</button>
      
      <!-- Prompt container -->
      <div ref="styledPrompt" v-if="prompt.visible" :class="['styled-prompt', prompt.type]">{{ prompt.message }}</div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      username: '',
      password: '',
      prompt: {
        visible: false,
        message: '',
        type: ''
      }
    };
  },
  methods: {
    checkCredentials() {
      const adminUser = 'admin';
      const adminPass = 'admin123';

      if (this.username === adminUser && this.password === adminPass) {
        this.showStyledPrompt('Login Successful', 'success');
      } else {
        this.showStyledPrompt('Incorrect Password', 'error');
       
        this.password = '';
      }
    },
    showStyledPrompt(message, type) {
      this.prompt.message = message;
      this.prompt.type = type;
      this.prompt.visible = true;

  
      this.$nextTick(() => {
        this.$refs.styledPrompt.classList.add('fade-in');
      });

     
      setTimeout(() => {
        this.hideStyledPrompt();
      }, 1000);
    },
    hideStyledPrompt() {
      
      this.$refs.styledPrompt.classList.remove('fade-in');

     
      setTimeout(() => {
        this.prompt.visible = false;
      }, 500);
    },
    attemptLogin() {
     
      this.checkCredentials();

      
   
      if (this.prompt.type === 'success') {
        setTimeout(() => {
          this.$router.push({ path: 'Panelboard' });
        }, 2000);
      }
    },
  }
};
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@100&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@100;200&family=Jost:wght@100&display=swap');
.wallpaper {
  background: url('../assets/background.png') lightgray 50% / cover no-repeat;
  width: 100%;
  height: 100vh;
  align-items: center;
  justify-content: center;
  display: flex;
} 

.wrapper-input {
  background:  rgba(252, 252, 252, 0.79);
  box-shadow:  10px 10px 15px -5px rgba(0, 0, 0, 0.26);
  padding: 20px;
  border-radius: 8px;
  text-align: center;
  border: none;
  width: 52vw;
  height: 70vh;
  position: relative;
  top: 4%;
}

.wallpaper .wrapper-input img {
  position: relative;
  width: 250px;
  bottom: 33.8%;
  box-shadow:  0px 10px 15px -5px rgba(0, 0, 0, 0.26);
  border-radius: 50%;
  background: lightgray 50% / cover no-repeat;
}

.wrapper-input h1{
  color: #595454;
  font: 65px;
  text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
  font-weight: 700;
  line-height: normal;
  position: relative;
  top: -28%;
}

.admin-inputs {
  font-size: 20px;
  text-align: center;
  position: relative;
  top: -23%;
  width: 25vw;
  left: 27%;
}

.admin-inputs input {
  width: calc(100% - 40px);
  padding: 10px;
  box-sizing: border-box;
  border: none;
  border-bottom: 3px solid rgba(0, 0, 0, 0.6);
  border-radius: 1px;
  background: none;
  outline: none;
}

.input-container {
  display: flex;
  align-items: left;
  justify-content: left;
}

label {
  margin-bottom: 5px;
  display: block;
  position: relative;
  font-size: 20px;
  left: -150px;
}

.personlogo {
  font-size: 25px;
}

.locklogo {
  font-size: 25px;
}

.wrapper-input .loginbutton {
  position: relative;
  justify-content: center;
  align-items: center;
  border: none;
  background: rgba(246, 109, 207, 0.96);
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  color: white;
  padding: 10px;
  cursor: pointer;
  border-radius: 10px;
  font-family: 'Jost', sans-serif;
  font-weight: 900;
  width: 10vw;
  height: 8vh;
  top: -18%;
  font-size: 25px;
  font-style: normal;
  line-height: normal;
}

.loginbutton:hover {
  background: lightpink;
}

.styled-prompt {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 10px;
    border-radius: 5px;
    color: #fff;
    font-weight: bold;
    z-index: 9999;
    opacity: 0; /* Start with 0 opacity */
    transition: opacity 0.10s ease-in-out; /* Apply transition for smooth fade-in/out */
  }

  .styled-prompt.success {
    background-color: #4CAF50; 
    width: 25%;
    height: 10%;
  }

  .styled-prompt.error {
    background-color: #f44336; 
  }

  .styled-prompt.fade-in {
  opacity: 1; 
  }
  
</style>
