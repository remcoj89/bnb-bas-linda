
// cookie message
// get elements
const header = document.querySelector('.header');
const message = document.createElement('div');

// creating elements
message.classList.add('cookie-message')
message.innerHTML = 'Wij gebruiken cookies om uw gebruikers ervaring te verbeteren en analyze. <button class="button-cookie btn-close-cookie"> Akkoord! </button>'

// message
header.prepend(message);

// closing the message
document.querySelector('.btn-close-cookie').addEventListener('click', function() {
  message.remove();
})

