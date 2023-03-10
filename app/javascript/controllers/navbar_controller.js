// Sticky navigation with Intersection Observer API
const header = document.querySelector('.header');
const navBar = document.querySelector('.navbar')

const stickyNav = function (entries) {
  const [entry] = entries;
  if(!entry.isIntersecting)
  navBar.classList.add('navbar-solid')
  else navBar.classList.remove('navbar-solid');
};

// Observing the header
const headerObserver = new IntersectionObserver(stickyNav, {
  root: null,
  treshold: 0,
});

headerObserver.observe(header);
