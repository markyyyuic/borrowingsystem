<script setup>

import Panelboard from './Panelboard.vue';

const options = [
  { name: 'Jan', percentage: 80 },
  { name: 'Feb', percentage: 40 },
  { name: 'Mar', percentage: 60 },
  { name: 'Apr', percentage: 20 },
  { name: 'May', percentage: 45 },
  { name: 'Jun', percentage: 80 },
  { name: 'Jul', percentage: 40 },
  { name: 'Aug', percentage: 85 },
  { name: 'Sep', percentage: 45 },
  { name: 'Oct', percentage: 55 },
  { name: 'Nov', percentage: 10 },
  { name: 'Dec', percentage: 20 },
];

</script>

<template>
  <Panelboard />
  <div class="chart-container">
    <div class="chart">
        <h1>Monthly Acquired Equipment</h1>
      <ul class="bars">
        <li v-for="(option, index) in options" :key="index">
          <div class="bar" :style="{ height: option.percentage + '%', background: (index % 2 === 0) ? '#AA69EB' : '#9F99A6' }"></div>
          <span>{{ option.name }}</span>
        </li>
      </ul>
    </div>
</div>


<div class="chart-container2">
    <div class="chart2">
        <h1>Most Borrowed Equipment</h1>
      <ul class="bars2">
        <li v-for="(option, index) in options" :key="index">
          <div class="bar2" :style="{ height: option.percentage + '%', background: (index % 2 === 0) ? '#5395F8' : '#9F99A6' }"></div>
          <span>{{ option.name }}</span>
        </li>
      </ul>
    </div>
</div>

<div class="box-1">
  <div class="card">
  <div class="front">
    <h2>EQUIPMENT</h2>
  </div>
  <div class="back">
    <p>Go to Equipment section where you can add, 
      remove and edit equipments</p>
  </div>
</div>
</div>


<div class="box-2">
  <div class="card2">
  <div class="front2">
    <h2>RECORDS</h2>
  </div>
  <div class="back2">
    <p>You can see here the history of request 
      and borrowed items</p>
  </div>
</div>
</div>


</template>

<style scoped>
.chart-container {
  position: absolute;
  height: 370px; /* Set a fixed height */
  width: 37%;
  top: 15%;
  display: flex;
  left: 23.5%;
  justify-content: center;
  align-items: center;
  border: 2px solid black;
  border-radius: 25px;
  overflow: hidden;
}

.chart h1 {
    position: relative;
    top: -30px;
    margin: 0;
    color: #000;
    font-family: 'Mitr' sans-serif;
    font-size: 20px;
    font-style: normal;
    font-weight: 400;
    line-height: 150%; /* 36px */
    letter-spacing: -0.456px;   
}

.chart {
  width: 600px;
  height: 300px;
  display: block;
  position: relative;
  left: 5%;
}

.bars {
    position: relative;
  margin: 0;
  padding: 0;
  display: inline-block;
  width: 500px;
  height: 300px;
  border-radius: 5px;
  border-bottom: 5px solid #747474;
  border-left: 5px solid #747474;
  padding: 10px;
  bottom: 20px;
}

.bars li {
  display: table-cell;
  width: 100px;
  height: 300px;
  position: relative;
  
}

.bars span {
  width: 100%;
  position: absolute;
  bottom: -10px;
  text-align: center;
  font-size: 10px;
  right: 1px;
  
}

.bars .bar {
  display: block;
  width: 35px;
  position: absolute;
  bottom: 15px;
  margin-left: 5px;
  text-align: center;
  transition: 0.5s;
  transition-property: background, box-shadow;
  border-radius: 3px; 
}

.bars .bar:hover {
  background: #275f4f;
  box-shadow: 0 0 10px 0 rgba(22, 85, 67, 0.5);
  cursor: pointer;
}

.bars .bar:before {
  color: #fff;
  content: attr(data-percentage);
  position: relative;
  bottom: 20px;
}



/* FOR CHART 2 CSS */

.chart-container2 {
  position: absolute;
  height: 370px; /* Set a fixed height */
  width: 37%;
  top: 15%;
  display: flex;
  left: 61.5%;
  justify-content: center;
  align-items: center;
  border: 2px solid black;
  border-radius: 25px;
  overflow: hidden;
}

.chart2 h1 {
    position: relative;
    top: -30px;
    margin: 0;
    color: #000;
    font-family: 'Mitr' sans-serif;
    font-size: 20px;
    font-style: normal;
    font-weight: 400;
    line-height: 150%; /* 36px */
    letter-spacing: -0.456px;   
}

.chart2 {
  width: 600px;
  height: 300px;
  display: block;
  position: relative;
  left: 5%;
}

.bars2 {
  position: relative;
  margin: 0;
  padding: 0;
  display: inline-block;
  width: 500px;
  height: 300px;
  border-radius: 5px;
  border-bottom: 5px solid #747474;
  border-left: 5px solid #747474;
  padding: 10px;
  bottom: 20px;
}

.bars2 li {
  display: table-cell;
  width: 100px;
  height: 300px;
  position: relative;
  
}

.bars2 span {
  width: 100%;
  position: absolute;
  bottom: -10px;
  text-align: center;
  font-size: 10px;
  right: 1px;
  
}

.bars2 .bar2 {
  display: block;
  width: 35px;
  position: absolute;
  bottom: 15px;
  margin-left: 5px;
  text-align: center;
  transition: 0.5s;
  transition-property: background, box-shadow;
  border-radius: 3px; 
}

.bars2 .bar2:hover {
  background: #275f4f;
  box-shadow: 0 0 10px 0 rgba(22, 85, 67, 0.5);
  cursor: pointer;
}

.bars2 .bar2:before {
  color: #1b1818;
  content: attr(data-percentage);
  position: relative;
  bottom: 20px;
}


/* BOX NAVIGATIONS */


.box-1 {
  display: flex;
  position: absolute;
  justify-content: center;
  bottom: 10px; 
  width: 20%; 
  left: 23%;
  height: 30%;
  border-radius: 2rem;
  align-items: center;
 
}

.box-1:hover > .card {
  cursor: pointer;
  transform: rotateY(180deg);
}

.card {
  height: 100%;
  width: 100%;
  position: relative;
  transition: transform 2500ms;
  transform-style: preserve-3d ;
  
}


.front, .back {
  position: absolute;
  width: 100%;
  height: 100%;
  border-radius: 2rem;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  backface-visibility: hidden;
  border: 1px solid black;
}

.front {
  background: rgba(226, 191, 242, 0.63);
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  color: #1A1111;
  font-family: 'Cairo' sans-serif;
  font-style: normal;
  font-weight: 700;
}



.back{
  background: rgba(226, 191, 242, 0.63);
  transform: rotateY(180deg);
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  text-align: center;
  font-size: 20px;
  color: #1A1111;
  font-family: 'Cairo' sans-serif;
  font-style: normal;
  font-weight: 700;
}


/* box 2 */

.box-2 {
  display: flex;
  position: absolute;
  justify-content: center;
  bottom: 10px; 
  width: 20%; 
  left: 50%;
  height: 30%;
  border-radius: 2rem;
  align-items: center;
 
}

.box-2:hover > .card2 {
  cursor: pointer;
  transform: rotateY(180deg);
}

.card2 {
  height: 100%;
  width: 100%;
  position: relative;
  transition: transform 2500ms;
  transform-style: preserve-3d ;
  
}

.front2, .back2 {
  position: absolute;
  width: 100%;
  height: 100%;
  border-radius: 2rem;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  backface-visibility: hidden;
  border: 1px solid black;
}


.front2 {
  background: rgba(212, 209, 209, 0.61);
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  color: #1A1111;
  font-family: 'Cairo' sans-serif;
  font-style: normal;
  font-weight: 700;
}

.back2 {
  background: rgba(212, 209, 209, 0.61);
  transform: rotateY(180deg);
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  text-align: center;
  font-size: 20px;
  color: #1A1111;
  font-family: 'Cairo' sans-serif;
  font-style: normal;
  font-weight: 700;
}



</style>
