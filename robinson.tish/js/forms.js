
   /*Change to match your own*/


const checkSignupForm = () => {
   let email = $("#signup-email").val();
   let password = $("#signup-password").val();
   let confirm = $("#signup-confirm").val();

   if(password!==confirm) {
      throw "Passwords don't match";
      return;
   } else {
      query({
         type:"insert_user",
         params:[email,password]
      }).then(d=>{
         if(d.error) {
            throw d.error;
         }
         console.log(d)
         sessionStorage.userId = d.id;
         $("#signup-form")[0].reset();
         $.mobile.navigate("#signup-second-page");
      })
   }
}

const checkSignupSecondForm = () => {
   let username = $("#signup-second-username").val();
   let name = $("#signup-second-name").val();

   query({
      type:"update_user_initial",
      params:[username,name,sessionStorage.userId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      console.log(d)
      $("#signup-second-form")[0].reset();
      $.mobile.navigate("#recent-page");
   })
   
}
const checkUserEditForm = () => {
   let username = $("#user-edit-username").val();
   let name = $("#user-edit-name").val();
   let email = $("#user-edit-email").val();

   query({
      type:"update_user",
      params:[username,name,email,sessionStorage.userId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.go(-1);
   })
}
const checkUserPasswordForm = () => {
   let oldpassword = $("#user-edit-old-password").val();
   let password = $("#user-edit-new-password").val();
   let confirm = $("#user-edit-confirm-password").val();

   if(password!==confirm)
      throw "New Passwords don't match";
   query({
      type:"update_user_password",
      params:[password,sessionStorage.userId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.go(-1);
   })
}







const checkAnimalAddForm = () => {
   let name = $("#animal-add-name").val();
   let type = $("#animal-add-type").val();
   let breed = $("#animal-add-breed").val();
   let description = $("#animal-add-description").val();

   query({
      type:"insert_animal",
      params:[sessionStorage.userId,name,type,breed,description]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      console.log(d)
      $("#animal-add-form")[0].reset();
      sessionStorage.animalId = d.id;
      window.history.go(-1);
   })
}
const checkAnimalEditForm = () => {
   let name = $("#animal-edit-name").val();
   let type = $("#animal-edit-type").val();
   let breed = $("#animal-edit-breed").val();
   let description = $("#animal-edit-description").val();

   query({
      type:"update_animal",
      params:[name,type,breed,description,sessionStorage.animalId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.go(-1);
   })
}





const checkLocationAddForm = () => {
   let animal_id = $("#location-choose-animal").val();
   let lat = +$("#location-lat").val();
   let lng = +$("#location-lng").val();
   let description = $("#location-description").val();

   query({
      type:"insert_location",
      params:[animal_id,lat,lng,description]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.go(-1);
   })
}