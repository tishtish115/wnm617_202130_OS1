
// Promise
const query = (options) => {
   return fetch('dat/api.php',{
      method:'POST',
      body:JSON.stringify(options)
   }).then(d=>d.json());
}


// Curried function(a function that returns a function)
const templater = f => a =>
	(Array.isArray(a)?a:[a])
   .reduce((r,o,i,a)=>r+f(o,i,a),'');

