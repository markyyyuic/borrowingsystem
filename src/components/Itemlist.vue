<script setup>
import Panelboard from './Panelboard.vue';

</script>

<template>
 <Panelboard />

  
   <div class="item-header">
    <h1>Available Tools</h1>
   </div>

   <div class="content-item">
    <h2>LIST OF BORROWERS</h2>
   </div>

 


</template>


<style scoped>


.item-header {
  display: flex;
  justify-content: left;
  align-items: center;
  background: rgba(238, 158, 215, 0.96);
  border: 1px solid #000;
  position: absolute;
  right: 8em;
  top: 15%;
  width: 65em;
  padding: 10px;
  height: 2.5em;
 
}

.item-header h1 {
  margin: 0;
  color: #2C2121;
  font-family: 'B612' sans-serif;
  font-size: 19px;
  font-style: normal;
  font-weight: 400;
  line-height: normal;
  align-items: left;
  text-align: left;
  justify-content: left;
  margin-left: 10px;
  left: 0;
}



.content-item {
  display: flex;
  flex-direction: column;
  border: 1px solid #000;
  position: absolute;
  right: 8em;
  top: 19.1%;
  width: 65em;
  padding: 10px;
  background: #FFF9F9;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  height: 75%;
  overflow-y: auto; 
  overflow-x: hidden;

}

</style>