
const RecentPage = async () => {
   let locations = await query({
      type:'recent_locations',
      params:[sessionStorage.userId]
   });
   console.log(locations)

   let valid_animals = locations.result.reduce((r,o)=>{
      o.icon = o.img;
      if(o.lat && o.lng) r.push(o);
      return r;
   },[]);

   let map_el = await makeMap("#recent-page .map");
   makeMarkers(map_el,valid_animals);

   map_el.data("markers").forEach((o,i)=>{
      o.addListener("click",function(){

         /* SIMPLE EXAMPLE */
         /*sessionStorage.animalId = valid_animals[i].animal_id;
         $.mobile.navigate("#animal-profile-page");*/

         /* INFOWINDOW EXAMPLE */
         /*map_el.data("infoWindow")
            .open(map_el.data("map"),o)
         map_el.data("infoWindow")
            .setContent(makeAnimalPopup(valid_animals[i]))*/

         /* ACTIVATE EXAMPLE */
         $("#recent-drawer")
            .addClass("active")
            .find(".modal-body")
            .html(makeAnimalPopup(valid_animals[i]))
      })
   })
}







const ListPage = async () => {
   let animals = await query({
      type:'animals_by_user_id',
      params:[sessionStorage.userId]
   });

   console.log(animals)

   animal_template = animals.result.length?
      makeAnimalList(animals.result):
      `<div class="animallist-item"><div class="animallist-description">No animals yet. Try adding some.</div></div>`

   $("#list-page .animallist").html(animal_template);
}







const UserProfilePage = async () => {
   let user = await query({
      type:'user_by_id',
      params:[sessionStorage.userId]
   });

   $("#user-profile-page .profile")
      .html(makeUserProfile(user.result[0]));
}

const UserEditPage = async () => {
   let user = await query({
      type:'user_by_id',
      params:[sessionStorage.userId]
   });

   $("#user-edit-form")
         .html(makeUserProfileUpdateForm(user.result[0]));
}

const UserPasswordPage = async () => {
   let user = await query({
      type:'user_by_id',
      params:[sessionStorage.userId]
   });

   $("#user-password-form")
         .html(makeUserPasswordUpdateForm(user.result[0]));
}







const AnimalProfilePage = async () => {
   query({
      type:'animal_by_id',
      params:[sessionStorage.animalId]
   }).then(r=>{
      let animal = r.result[0];
      console.log("ANIMAL DATA", animal)

      if(!$("#animal-profile-page .active").length) {
         $("#animal-profile-page .animal-nav li:first-child").addClass("active")
         $("#animal-profile-page .animal-bottom-section:first-child").addClass("active")
      }

      $("#animal-profile-page .animal-top")
         .css({backgroundImage:`url(${animal.img})`})
      $("#animal-profile-page .animal-info")
         .html(makeAnimalInfo(animal));
   });
   

   query({
      type:'locations_by_animal_id',
      params:[sessionStorage.animalId]
   }).then(async (r)=>{
      console.log("ANIMAL LOCATIONS", r.result)
      let map_el = await makeMap("#animal-profile-page .map");
      makeMarkers(map_el,r.result)
   });
}

const AnimalEditPage = async () => {
   let animal = await query({
      type:'animal_by_id',
      params:[sessionStorage.animalId]
   });

   $("#animal-edit-form")
      .html(
         makeAnimalProfileUpdateForm(animal.result[0])
      );
}

const AnimalAddPage = async () => {

   $("#animal-add-form .form-elements")
      .html(
         makeAnimalProfileUpdateForm({
            name:"",
            type:"",
            breed:"",
            description:""
         },"animal-add")
      );
}





const ChooseAnimalPage = async () => {
   let d = await query({
      type:'animals_by_user_id',
      params:[sessionStorage.userId]
   });

   $("#location-choose-animal")
      .html(FormSelectOptions(d.result))
}
const ChooseLocationPage = async () => {
   let map_el = await makeMap("#choose-location-page .map");
   makeMarkers(map_el,[])

   map_el.data("map").addListener("click",function(e){
      console.log(e)
      $("#location-lat").val(e.latLng.lat())
      $("#location-lng").val(e.latLng.lng())
      makeMarkers(map_el,[{
         lat:e.latLng.lat(),
         lng:e.latLng.lng(),
         // icon:
      }])
   })
}