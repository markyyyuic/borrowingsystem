
<script setup>
import { RouterLink } from 'vue-router';
const items = [
    {name: 'Pen Tablet', quantity: 2},
    {name: 'Adapter', quantity: 1},
    {name: 'Projector', quantity: 1},
];


const getItemImage = (itemName) => {
    const itemImageMap = {
    'Pen Tablet': '/tools/pentablet.png',
    'Projector': '/tools/projector.png',
    'Adapter': '/tools/adapter.png',
};
return itemImageMap[itemName] || ''
};

</script>

<template>
    <RouterLink to="/category">
    <button ><i class='bx bx-arrow-back'></i>BACK</button>
</RouterLink>
    <div class="container">
        
        <div class="confirmation-wrapper">
            <div class="col-1">
            <div class="header">
            <h1>CONFIRMATION</h1>
            <h2>Borrower Details</h2>
        </div>
            <div class="inputs">
                <input type="text" id="id" name="id" placeholder= "220000000419" readonly> 
            </div>

            <div class="inputs">
                <input type="text" id="name" name="name" placeholder= "MARK ANTHONY H. NISNEA" readonly> 
            </div>

            <div class="inputs">
                <input type="text" id="role" name="role" placeholder= "STUDENT" readonly> 
            </div>

            <div class="inputs">
                <input type="text" id="section" name="section" placeholder= "2-B" readonly> 
            </div>

            <div class="inputs">
                <input type="text" id="Year" name="Year" placeholder= "2ND YEAR" readonly> 
            </div>

    
        </div>
        
        <div class="col-2">
            <div class="headers">
                <h2>Borrowed Equipment</h2>
                <div class="pick-wrapper">
                <div v-for="(item, index) in items" :key="index" class="items">
                    <img :src="getItemImage(item.name)" alt="">
                    <div class="details">
                        <h1>{{ item.name }}</h1>
                        <h4>Quantity {{ item.quantity }}</h4>
                    </div>
                </div>
            </div>


            </div>
        </div>
        </div>

        <div class="terms">
            <input type="checkbox"><h1>I/We hereby acknowledged that I/we am/are responsible for any damage to and/or loss of equipment or injury to persons arising from its use. </h1>
        </div>
    </div>

</template>






<style scoped>


/* dummy datas of borrowed equipments */


html {
  width: 100%;
  height: 100%;
}


.container {
    margin: 0;
    padding: 0;
    background: rgba(238, 158, 215, 0.96);
    position: absolute;
    height: 100%;
    width: 100%;
    box-sizing: border-box;
    max-width: 100%;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    display: flex;
    
}
 button{
    position: absolute;
    margin: 0;
    padding: 0;
    margin-top: 15px;
    border: none;
    background: none;
    margin-left: 25px;
    color: #383333;
    font-family: 'Inria' sans-serif;
    font-size: 30px;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
    transition: transform 0.2s ease-in-out;
    z-index: 1;
}

button:hover {
    transform: scale(1.05);
}


.confirmation-wrapper {
    top: 7.5%;
    position: absolute;
    margin-top: 5px;
    border-radius: 20px;
    width: 90vw;
    height: 76vh;
    flex-shrink: 0;
    background: rgba(255, 255, 255, 0.72);
    box-shadow: 5px 4px 4px 0px rgba(0, 0, 0, 0.25);

}



/* COLUMN 1 */
.col-1 {
    margin: 0;
    padding: 0;
    position: relative;
    justify-content: center;
    align-items: center;
    display: flex;
    flex-direction: column;

}


.confirmation-wrapper .header {
    position: relative;
    margin-top: 15px;
    padding: 5px;
    justify-content: center;
    align-items: center;
    left: 180px;

}

.header h1 {
    color: #574949;
    font-family: 'Inter' sans-serif;
    font-size: 35px;
    font-style: bold;
    font-weight: 900;
    line-height: normal;
    display: flex;
 
}

.header h2 {
    color: #595454;
    font-family: 'Inter' sans-serif;
    font-size: 20px;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
}

.confirmation-wrapper .inputs {
    display: flex;
    position: relative;
    margin: 15px;
    margin-left: 55px;
    padding: 3px;
    left: 200px;
    bottom: 10px;
    
}

.inputs input  {
    width: 350px;
    height: 55px;
    border-radius: 15px;
    padding: 20px;
    background: rgba(255, 255, 255, 0.54);
    border: none;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);

}



/* COLUMN 2 */


.col-2 {
    position: relative;
    margin: 0;
    padding: 0;
    display: flex;
    background: #FFF;
    justify-content: center;
    align-items: center;
    flex-basis: 60%;
    flex-direction: column;
    margin-left: auto;
    margin-right: 80px;
    height: 58vh;
    width: 40vw;
    bottom: 80%;
}

.col-2 .headers{
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    bottom: 60%;
}

.col-2 .headers h2 {
    color: #595454;
    font-family: 'Inter' sans-serif;
    font-size: 24px;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
}





.terms {
    position: absolute;
    justify-content: center;
    display: flex;
    align-items: center;
}



.terms h1{
    position: relative;
    display: flex;
    font-size: 18px;
    color: #C34949;
    font-family: 'Inter' sans-serif;
    top: 15.6em;
    right: 50px;
}

.terms input {
    position: relative;
    top: 17.2em;
    right: 5%;
    display: flex;
}


.pick-wrapper {
    justify-content: center;
    position: relative;
    right: 43.3%;
    align-items: center;
    flex-wrap: wrap;
    top: 61.9%;
    height: 103.5%;
    background: lightgrey;
    width: 100%;
    
}

.items {
    position: relative;
    display: flex;
    padding: 10px;
    background: lightgray;

    

}

.items img{
    display: flex;
    position: relative;
    height: 100px;

}

.details {
    display: grid;
}

.details h1{
    position: relative;
    font-size: 15px;
    padding: 15px;
}

.details h4{
    position: relative;
    font-size: 20px;
    padding: 15px;
}



</style>