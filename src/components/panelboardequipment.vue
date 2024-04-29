<template>
  <Panelboard />
  <div class="header-container">
      <h1>Manage Tools</h1>
  </div>
  <div class="equipment-container">
      <div class="option-buttons">

<!-- ADD TOOL SECTION -->
          <Button type="button"  style="background-color: yellowgreen;" label="Add" @click="visible = true" />

          <Dialog v-model:visible="visible" modal header="Add a tool" :style="{ width: '25rem' }">
    <span class="p-text-secondary block mb-5"  style="margin-left: 45%; ;" >Fill up </span>
    <form>
      <div class="flex align-items-center gap-3 mb-3">
        <label for="itemName"  class="font-semibold w-6rem" >Item Name:</label>
        <InputText type="text" v-model="itemName" id="itemName" class="flex-auto" style="margin-left: 10px;" autocomplete="off" required />
      </div>

      <div class="flex align-items-center gap-3 mb-5">
        <label for="itemStatus" class="font-semibold w-6rem" style="color: black; margin-left: -10px;">Change Status:</label>
        <select v-model="itemStatus" name="itemStatus" id="itemStatus" style="height: 43.2px; width: 195.2px;" class="font-semibold w-6rem">
          <option style="height: 43.2px; width: 195.2px;" value="Available">Available</option>
          <option style="height: 43.2px; width: 195.2px;" value="Not Available">Not Available</option>
        </select>
      </div>

      <div class="flex align-items-center gap-3 mb-5">
        <label for="itemQuantity" class="font-semibold w-6rem" style="color: black; margin-left: 25px; ">Quantity:</label>
        <InputText v-model="itemQuantity" type="number" id="itemQuantity" class="flex-auto" autocomplete="off" />
      </div>
      <div class="flex justify-content-end gap-2">
        <Button type="button" style="background-color: red" label="Cancel" severity="secondary" @click="visible = false"></Button>
        <Button type="submit" style="background-color: green" label="Add" @click.prevent="submitForm"></Button>
      </div>
    </form>
  </Dialog>

<div v-if="successMessage" class="success-message">
    {{ successMessage }}
    
  </div>
<!-- DELETE TOOL -->
  <Button type="button" style="background-color: red;" label="Remove a tool" @click="deletevisible = true" />
      <Dialog v-model:visible="deletevisible" modal header="Remove a tool" :style="{ width: '25rem' }">
        <span class="p-text-secondary block mb-5">Enter tool ID to delete:</span>
        <div class="flex align-items-center gap-3 mb-3">
          <label for="equipmentID" class="font-semibold w-6rem">Tool ID:</label>
          <InputText v-model="equipmentID" id="equipmentID" class="flex-auto" autocomplete="off" />
        </div>
        <div class="flex justify-content-end gap-2">
          <Button type="button" style="background-color: red" label="Cancel" severity="secondary" @click="deletevisible = false"></Button>
          <Button type="button" style="background-color: green" label="Delete" @click="deleteTool"></Button>
        </div>
      </Dialog>

      <!-- EDIT TOOL -->
      <div class="card flex justify-content-center">
    <Button label="Edit a tool" @click="editingvisible = true" />
    <Dialog v-model:visible="editingvisible" modal header="Edit a tool" :style="{ width: '25rem' }">
        <span class="p-text-secondary block mb-5" style="text-align: center; margin-left: 45%;">Edit a tool</span>


        <div class="flex align-items-center gap-3 mb-3">
            <label for="editEquipmentID" class="font-semibold w-6rem">Enter Item ID:</label>
            <InputText v-model="editEquipmentID" id="editEquipmentID" name="editEquipmentID" style="margin-left: 5%;" class="flex-auto" autocomplete="off" />
        </div>


        <div class="flex align-items-center gap-3 mb-3">
        <label for="edititemName" class="font-semibold w-6rem">Rename Item:</label>
        <InputText v-model="edititemName" id="edititemName" name="edititemName" class="flex-auto" style="margin-left: 5%;" autocomplete="off" />
    </div>


        
    <div class="flex align-items-center gap-2 mb-4">
        <label for="edititemStatus" class="font-semibold w-6rem" style="color: black; margin-left: -3%;">Change Status:</label>
        <select v-model="edititemStatus" name="edititemStatus" id="edititemStatus" style="height: 43.2px; width: 195.2px; margin-left: 5%;" class="font-semibold w-6rem">
            <option style="height: 43.2px; width: 195.2px;" value="Available">Available</option>
            <option style="height: 43.2px; width: 195.2px;" value="Not Available">Not Available</option>
        </select>
    </div>

    <div class="flex align-items-center gap-3 mb-5">
        <label for="edititemQuantity" class="font-semibold w-6rem">Change Quantity:</label>
        <InputText v-model="edititemQuantity" id="edititemQuantity" name="edititemQuantity" class="flex-auto" style="margin-left: 5%;" autocomplete="off" />
    </div>

        <div class="flex justify-content-end gap-2">
            <Button type="button" label="Cancel" severity="secondary" @click="cancelEdit"></Button>
            <Button type="button" label="Save" @click="saveChanges"></Button>
        </div>
    </Dialog>
</div>
    </div>

    

  </div>
</template>

<script setup>
import Panelboard from './Panelboard.vue';
import { ref } from 'vue';
import Button from "primevue/button"
import InputText from "primevue/inputtext";
import Dialog from "primevue/dialog";
import axios from 'axios';


const deletevisible = ref(false);
const visible = ref(false);


const isFormOpen = ref(false);

const openForm = () => {
  isFormOpen.value = true;
};

const closeForm = () => {
  isFormOpen.value = false;
};

const dialogVisible = ref(false); // Renamed to dialogVisible

const showDialog = () => {
  dialogVisible.value = true;
};

const hideDialog = () => {
  dialogVisible.value = false;
};



const successMessage = ref('');
const itemName = ref('');
const itemStatus = ref('');
const itemQuantity = ref(0);
const equipmentID = ref('')




const submitForm = async () => {
  try {
    const formData = new FormData();
    formData.append('itemName', itemName.value);
    formData.append('itemStatus', itemStatus.value);
    formData.append('itemQuantity', itemQuantity.value);
    
    const response = await axios.post('http://127.0.0.1:8000/api/equipments/add_equipments', formData);
    
    console.log('Form submitted successfully:', response.data);
    // Set success message directly without using a ref
    submitForm.successMessage = 'Successfully added!';

    setTimeout(() => {
      // Clear success message after 3 seconds
      submitForm.successMessage = '';
    }, 3000);

    setTimeout(() => {
      visible.value = false;
    }, 1000);

    
    // Clear input fields after successful submission
    itemName.value = '';
    itemQuantity.value = 0;
  } catch (error) {
    console.error('Error submitting form:', error);
  }
};
submitForm.successMessage = ''; // Reactive variable to hold success message

const deleteTool = async () => {
  try {
    // Send a DELETE request to the server to delete the equipment with the specified ID
    const response = await axios.delete(`http://127.0.0.1:8000/api/equipments/delete_equipment?equipmentID=${equipmentID.value}`);
    
    // Log a success message and update the successMessage value
    console.log('Form deleted successfully:', response.data);
    successMessage.value = 'Successfully edited!'; // This message seems incorrect, should be 'Successfully deleted!'

    // Hide the delete dialog after 1 second
    setTimeout(() => {
      deletevisible.value = false;
    }, 1000);

    // Clear the equipment ID field
    equipmentID.value = '';
  } catch (error) {
    // Log an error if the request fails
    console.error('Error deleting tool:', error);
  }
};


// EDIT TOOL
const editingvisible = ref(false)
const edititemName = ref('');
const edititemStatus = ref('');
const edititemQuantity = ref('');
const editEquipmentID = ref('');



const saveChanges = async () => {
  try {
    // Check if all required fields are filled
    if (!edititemName.value || edititemStatus.value === 'Choose Status' || !edititemQuantity.value) {
      console.error('All fields are required');
      return;
    }

    const formData = new FormData();
    formData.append('edititemName', edititemName.value);
    formData.append('edititemStatus', edititemStatus.value);
    formData.append('edititemQuantity', edititemQuantity.value);

    const response = await axios.put(
      `http://127.0.0.1:8000/api/equipments/edit_equipments?editEquipmentID=${editEquipmentID.value}`,
      formData
    );
    console.log('Tool updated successfully:', response.data);
    // Close the dialog after successful save
    editingvisible.value = false;
    // Reset edit form fields
    editEquipmentID.value = '';
    edititemName.value = '';
    edititemStatus.value = '';
    edititemQuantity.value = '';
  } catch (error) {
    console.error('Error updating tool:', error);
    // Handle error display or logging
  }
};

const cancelEdit = () => {
    editingvisible.value = false;
    // Reset edit form fields
    editEquipmentID.value = '';
    edititemName.value = '';
    edititemStatus.value = '';
    edititemQuantity.value = '';
};

</script>


<style scoped>


.success-message {
  background-color: #4CAF50;
  color: white;
  text-align: center;
  padding: 10px;
  margin-top: 10px;
  position: relative;
}

.p-dialog {
  /* Your styles here */
  background-color: black;
}

/* Target elements within the p-dialog component */
.p-dialog .p-dialog-content {
  /* Your styles here */
  color: rgb(187, 14, 14);
}

/* Target specific elements within the p-dialog component */
.p-dialog .p-dialog-header {
  /* Your styles here */
  font-size: 20px;
}

.header-container {

  display: flex;
  justify-content: left;
  align-items: center;
  background: rgba(238, 158, 215, 0.96);
  border: 1px solid #000;
  position: absolute;
  right: 150px;
  top: 15%;
  width: 65%;
  padding: 10px;
  height: 2.5em;
}

.header-container h1 {
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
}

.equipment-container {

  display: flex;
  flex-direction: column;
  border: 1px solid #000;
  position: absolute;
  right: 150px;
  top: 19.1%;
  width: 65%;
  padding: 10px;
  background: #FFF9F9;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  height: 75%;
  overflow-y: auto; 
  overflow-x: hidden;

}

.option-buttons {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin: 10px;
}

.option-buttons .open-button {
  text-decoration: none;
  color: #000;
  padding: 10px;
  margin: 0 10px;
  color: #302D2D;
  font-family: 'Inter' sans-serif;
  font-size: 15px;
  font-style: normal;
  font-weight: 700;
  line-height: normal;
}

.items-container {
  width: 80vw;
  max-height: 75vh;
  margin: auto;
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
  gap: 20px;
  align-content: flex-start; /* Adjusted property */
  border-radius: 10px;
  padding: 25px;
  justify-content: flex-start;

}
.items {
  display: grid;
  grid-template-rows: auto auto auto;
  text-align: center;
  position: relative;
  border-radius: 2px;
  margin: 10px;
  cursor: pointer;
}

.items img {
  width: 80%;
  height: 150px;
  border: 1px solid #000;
  border-radius: 5px;

}

.items img:hover {
  border-radius: 4px;
  border: 2px solid red;

}



.item-details h1, h2, h3 {
  font-size: 13px;
  margin: 0; /* Remove default margin */
  padding: 5px;
  font-weight: 400;
}


/* NAV-BOXES */





</style>