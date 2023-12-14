<script setup>
import Panelboard from './Panelboard.vue';

const items = [
  { name: 'Extension Wire', quantity: 2, status: 'Available' },
];
</script>

<template>
    <Panelboard />
    <div class="header-container">
      <h1>Manage Tools</h1>
    </div>
    <div class="equipment-container">
      <div class="option-buttons">
        <a href=""><i class='bx bx-plus-circle'></i>Add Equipment</a>
        <a href=""><i class='bx bx-minus-circle'></i>Remove Equipment</a>
        <a href=""><i class='bx bxs-edit-alt' ></i>Edit Equipment</a>
      </div>
  
      <div class="items-container">
        <div v-for="(item, index) in items" :key="index" class="items">
          <img src="../assets/extensionwire.png" alt="">
          <div class="item-details">
            <h1>{{ item.name }}</h1>
            <h2>QUANTITY: {{ item.quantity }}</h2>
            <h3>Status: {{ item.status }}</h3>
          </div>
        </div>

        <div v-for="(item, index) in items" :key="index" class="items">
          <img src="../assets/extensionwire.png" alt="">
          <div class="item-details">
            <h1>{{ item.name }}</h1>
            <h2>QUANTITY: {{ item.quantity }}</h2>
            <h3>Status: {{ item.status }}</h3>
          </div>
        </div>

        <div v-for="(item, index) in items" :key="index" class="items">
          <img src="../assets/extensionwire.png" alt="">
          <div class="item-details">
            <h1>{{ item.name }}</h1>
            <h2>QUANTITY: {{ item.quantity }}</h2>
            <h3>Status: {{ item.status }}</h3>
          </div>
        </div>

        <div v-for="(item, index) in items" :key="index" class="items">
          <img src="../assets/extensionwire.png" alt="">
          <div class="item-details">
            <h1>{{ item.name }}</h1>
            <h2>QUANTITY: {{ item.quantity }}</h2>
            <h3>Status: {{ item.status }}</h3>
          </div>
        </div>

        <div v-for="(item, index) in items" :key="index" class="items">
          <img src="../assets/extensionwire.png" alt="">
          <div class="item-details">
            <h1>{{ item.name }}</h1>
            <h2>QUANTITY: {{ item.quantity }}</h2>
            <h3>Status: {{ item.status }}</h3>
          </div>
        </div>

        <div v-for="(item, index) in items" :key="index" class="items">
          <img src="../assets/extensionwire.png" alt="">
          <div class="item-details">
            <h1>{{ item.name }}</h1>
            <h2>QUANTITY: {{ item.quantity }}</h2>
            <h3>Status: {{ item.status }}</h3>
          </div>
        </div>

        <div v-for="(item, index) in items" :key="index" class="items">
          <img src="../assets/extensionwire.png" alt="">
          <div class="item-details">
            <h1>{{ item.name }}</h1>
            <h2>QUANTITY: {{ item.quantity }}</h2>
            <h3>Status: {{ item.status }}</h3>
          </div>
        </div>
        
        
      </div>
    </div>
  </template>


<style scoped>
.header-container {
  display: flex;
  justify-content: left;
  align-items: center;
  background: rgba(238, 158, 215, 0.96);
  border: 1px solid #000;
  position: absolute;
  right: 200px;
  top: 20%;
  width: 60%;
  padding: 10x;
  height: 30px;
}

.header-container h1 {
  margin: 0;
  color: #2C2121;
  font-family: 'B612', sans-serif;
  font-size: 20px;
  font-style: normal;
  font-weight: 400;
  line-height: normal;
  align-items: left;
  text-align: left;
  justify-content: left;
  margin-left: 10px;
}

.equipment-container {
  display: flex;
  flex-direction: column;
  border: 1px solid #000;
  position: absolute;
  right: 200px;
  top: 24.1%;
  width: 60%;
  padding: 10px;
  background: #FFF9F9;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  height: 500px;
  aspect-ratio: 1.32;
}

.option-buttons {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin: 10px;
}

.option-buttons a {
  text-decoration: none;
  color: #000;
  padding: 10px;
  margin: 0 10px;
  color: #302D2D;
  font-family: 'Inter', sans-serif;
  font-size: 15px;
  font-style: normal;
  font-weight: 700;
  line-height: normal;
}

.items-container {
  display: flex;
  flex-wrap: wrap;
  margin: -15px; /* Negative margin to counteract margin in items */
  overflow-y: auto;
  max-height: 100%;
}
.items {
  width: calc(18% - 20px);
  height: 35.3%;
  flex-shrink: 0;
  margin: 35px; /* Add margin for spacing */
  border-radius: 5px;
  display: flex;
  flex-direction: column;
 
}

.items img {
  border: 1px solid black;
  border-radius: 5px;
  background: #F6D4D4;
}

.item-details h1, h2, h3 {
  font-size: 13px;
}





</style>