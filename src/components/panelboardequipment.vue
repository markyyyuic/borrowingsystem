<script setup>
import Panelboard from './Panelboard.vue';

const items = [
  { name: 'Extension Wire', quantity: 2,  },
  { name:  'HDMI', quantity: 1, },
  { name:  'Projector', quantity: 1, },
  { name:  'Crimping Tool', quantity: 1, },
  { name:  'VGA to HDMI', quantity: 1, },
  { name:  'G.Wire', quantity: 1, },
  { name:  'Adapter', quantity: 1, },
  { name:  'Long Tables', quantity: 1, },
  { name:  'Clicker', quantity: 0, },
  { name:  'Mac VGA', quantity: 1, },
  { name:  'Puncher', quantity: 1, },
  { name:  'Pen Table', quantity: 1, },
];

const getItemImage = (itemName) => {
  const defaultImagePath = '/tools/notavail.jpg'; // Replace with the path to your default image
  const itemImageMap = {
    'Extension Wire': '/tools/extensionwire.png',
    'HDMI': '/tools/hdmi.png',
    'Projector': '/tools/projector.png',
    'Crimping Tool': '/tools/crimping.png',
    'VGA to HDMI': '/tools/vgatohdmi.png',
    'G.Wire': '/tools/Gwire.png',
    'Adapter': '/tools/adapter.png',
    'Long Tables': '/tools/longt.png',
    'Clicker': defaultImagePath, // Add appropriate path or leave empty if no image
    'Mac VGA': defaultImagePath, // Add appropriate path or leave empty if no image
    'Puncher': '/tools/puncher.png',
    'Pen Table': '/tools/pentablet.png',
  };
  return itemImageMap[itemName] || '';
};
</script>

<template>
    <Panelboard />
    <div class="header-container">
      <h1>Manage Toolss</h1>
    </div>
    <div class="equipment-container">
      <div class="option-buttons">
        <a href=""><i class='bx bx-plus-circle'></i>Add Equipment</a>
        <a href=""><i class='bx bx-minus-circle'></i>Remove Equipment</a>
        <a href=""><i class='bx bxs-edit-alt' ></i>Edit Equipment</a>
      </div>
  
      <div class="items-container">
        <div v-for="(item, index) in items" :key="index" class="items" onclick="highlightItems(this)">
          <div class="image-wrapper">
          <img :src="getItemImage(item.name)" alt="">
          </div>
          <div class="item-details">
            <h1>{{ item.name }}</h1>
            <h2>QUANTITY: {{ item.quantity }}</h2>
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
  height: 75%;
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
  overflow-y: auto;
  max-height: 80vh; /* Adjust the max-height according to your needs */
  margin: -10px; /* Negative margin to counteract margin in items */
}
.items {
  flex-grow: 1;
  width: calc(18% - 10px);
  height: 35.3%;
  flex-shrink: 0;
  margin: 15px;
  border-radius: 5px;
  display: flex;
  flex-direction: column;
  padding: 15px;
}

.items .image-wrapper {
  
  border: 1px solid black;
  border-radius: 5px;
  width: 100px; 
  height: 100px; 
  overflow: hidden; 
}

.items .image-wrapper img {
  width: 100%; 
  height: 100%; 
}



.item-details h1, h2, h3 {
  font-size: 13px;
  margin: 0; /* Remove default margin */
  padding: 5px;
  font-weight: 400;
}



</style>