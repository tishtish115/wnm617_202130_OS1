
const makeMap = async (target,center={lat: 37.735078,lng: -122.436844}) => {
   await checkData(()=>window.google);

   let map_el = $(target);

   // map = map_el.data("map");

   if(!map_el.data("map")) map_el.data(
      "map",
      new google.maps.Map(
         map_el[0],
         {
            center: center,
            zoom: 12,
            disableDefaultUI: true
         }
      )
   );

   return map_el;
}

const makeMarkers = (map_el,map_locs) => {
   let map = map_el.data("map");

   map_locs.forEach(o=>{
      new google.maps.Marker({
         position: o,
         map: map,
      });
   });
}