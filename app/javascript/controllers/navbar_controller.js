// Sticky navbar changing color

const initialCoords = section1.getBoundingClientRect();
console.log(initialCoords);

window.addEventListener('scroll', function(){
  console.log(window.scrollY);
  if(this.window.scrollY > initialCoords.top) nav.clasList.add('navbar-white');
  else nav.clasList.remove('navbar-white');
})
