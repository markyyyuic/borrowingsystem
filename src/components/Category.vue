<template>

 <div class="equip-bgm">
  <router-link to="/about"> 
    <button><img src="../assets/backbutton.png" alt="">CHOOSE EQUIPMENTS
  </button>
  </router-link>
 

  


  
    <div class="item-wrapper">
        <div class="items" onclick="highlightItems(this)">
        <img src="../assets/extensionwire.png" alt="">
    <div class="item-details">
        <h1> Extension Wire</h1>
        <h2>QUANITY: 2</h2>
    
    </div>
</div>


<div class="items" onclick="highlightItems(this)">
        <img src="../assets/hdmi.png" alt="">
    <div class="item-details">
        <h1>HDMI</h1>
        <h2>QUANITY: 3</h2>
    
    </div>
</div>




<div class="items" onclick="highlightItems(this)">
        <img src="../assets/projector.png" alt="">
    <div class="item-details">
        <h1>Projector</h1>
        <h2>QUANITY: 1</h2>
    
    </div>
</div>



<div class="items" onclick="highlightItems(this)">
        <img src="../assets/crimping.png" alt="">
    <div class="item-details">
        <h1>Crimping Tools</h1>
        <h2>QUANITY: 1</h2>
    
    </div>
</div>


<!-- new added list -->
<div class="items" onclick="highlightItems(this)">
        <img src="../assets/vgatohdmi.png" alt="">
    <div class="item-details">
        <h1>VGA to HDMI</h1>
        <h2>QUANITY: 1</h2>
    
    </div>
</div>

<div class="items" onclick="highlightItems(this)">
        <img src="../assets/Gwire.png" alt="">
    <div class="item-details">
        <h1>G. WIRE</h1>
        <h2>QUANITY: 1</h2>
    
    </div>
</div>


<div class="items" onclick="highlightItems(this)">
        <img src="../assets/adapter.png" alt="">
    <div class="item-details">
        <h1>Adapter</h1>
        <h2>QUANITY: 1</h2>
    
    </div>
</div>


<div class="items" onclick="highlightItems(this)">
        <img src="../assets/longt.png" alt="">
    <div class="item-details">
        <h1>Long table</h1>
        <h2>QUANITY: 1</h2>
    
    </div>
</div>


<div class="items" onclick="highlightItems(this)">
        <img src="../assets/puncher.png" alt="">
    <div class="item-details">
        <h1>Puncher</h1>
        <h2>QUANITY: 1</h2>
    
    </div>
</div>



<div class="items" onclick="highlightItems(this)">
        <img src="../assets/pentablet.png" alt="">
    <div class="item-details">
        <h1>Pen Tablet</h1>
        <h2>QUANITY: 1</h2>
    
    </div>
</div>


 </div>


    <button class="nextbtn">NEXT</button>

 </div>

</template>

<script>



</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Inria+Sans:wght@300&family=Poppins:wght@800&display=swap');

.equip-bgm {
  height: 100vh;
  width: 100vw;
  background: rgba(250, 195, 228, 0.96);
}

.equip-bgm button {
  border: none;
  background: none;
  margin-left: 45px;
  margin-top: 10px;
  font-size: 25px;
  text-transform: capitalize;
  padding: 10px;
  color: #756767;
}

.equip-bgm img:hover {
  background: rgb(57, 56, 56);
  border-radius: 50px;
  border-width: 9px;

}

.item-wrapper {
    width: 80vw;
    max-height: 75vh; 
    overflow: auto; 
    background: rgba(253, 250, 250, 0.55);
    margin: auto;
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
    gap: 20px;
    justify-content: flex-start;
    align-items: flex-start;
    border-radius: 10px;
    padding: 25px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  }

.item-wrapper .items {
  display: grid;
  grid-template-rows: auto auto auto;
  text-align: center;
  position: relative;
  border-radius: 2px;
  margin: 10px;
}

.items img {
  width: 100%;
  height: 150px;
  border: 1px solid #000;
}

.item-wrapper .item-details {
margin-top: 10px;
  text-align: center;
  position: relative;
}

.item-wrapper .item-details h1,
.item-wrapper .item-details h2 {
  font-size: 20px;
  border-radius: 20px;
  background: #a49999;
  color: #000;
}

.equip-bgm .nextbtn {
  top: 3px;
  position: relative;
  justify-content: center;
  align-items: center;
  text-align: center;
  border-radius: 25px;
  border: 1px solid rgba(0, 0, 0, 0.60);
  background: #A49999;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  width: 258px;
    height: 76px;
    flex-shrink: 0;
    left: 1050px;
}

.nextbtn:hover {
    background-color: grey;

}

</style>