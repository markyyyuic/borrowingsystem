<script setup>
import Panelboard from './Panelboard.vue';

const tools = [

  { name: "HDMI", Quantity: "1", status: "Available" },
  { name: "Extension Wire", Quantity: "5", status: "Available" },
  { name: "Adapter", Quantity: "0", status: "Not Available" },
  { name: "Projector", Quantity: "2", status: "Available" },
  { name: "G.WIRE", Quantity: "0", status: "Not Available" },
  { name: "VGA to HDMI", Quantity: "8", status: "Available" },
  { name: "Crimping Tool", Quantity: "4", status: "Available" },

]


</script>

<template>
 <Panelboard />

  
   <div class="item-header">
    <h1>Available Tools</h1>
   </div>

   <div class="content-item">
    <h2>Show <input type="number">entries</h2>




  <div class="table">
    <table>
      <thead>
      <tr>
        <th>Equipment</th>
        <th>Quantity</th>
        <th>Availability</th>
    
      </tr>
    </thead>
    <tbody>
      <tr v-for="tools in tools" :key="tools.name"> 
        <td>{{ tools.name }}</td>
        <td>{{ tools.Quantity }}</td>
        <td>{{ tools.status }}</td>
      </tr>
    </tbody>
    </table>

  </div>

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
  height: 3.5em;
 
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
  text-align: center;
  margin-bottom: 7px;
}



.content-item {
  display: flex;
  flex-direction: column;
  border: 1px solid #000;
  position: absolute;
  right: 8em;
  top: 21.1%;
  width: 65em;
  padding: 10px;
  background: #FFF9F9;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  height: 75%;
  overflow-y: auto; 
  overflow-x: hidden;

}

.content-item h2 {
  margin: 10px;
  top: 10px;
  font-size: 1em;

}

.content-item h2 i {
  font-size: 2em;
  margin: 10px;
  display: inline;
  margin-top: 20px;
  vertical-align: middle; /* Add this property */
}





 .table {
  width: 100vw;
  display: flex;
  height: 100vh;
  background: #FFFDFD;;


}

.table table {
  width: 66.8%;
  border: 1px solid black;
  text-align: center;
  justify-content: center;
  align-items: center;
  padding: 50px;
}

.table table thead {
  height: 15%;
}

.table table tr td {
  color: black;
  font-size: 18px;
  font-style: normal;
  font-weight: 400;
  line-height: normal;
}

.table table tr th {
  color: black;
  font-size: 18px;
  font-style: normal;
  font-weight: 400;
  line-height: normal;
}

.table .data-hover:hover {
  background: lightgrey;
}

.content-item h2 input {
  width: 5%;
}
</style>