
window.onload = function() {
  // let container    = document.querySelector('.canvas')
  let toggleButton = document.querySelector('.nav-button')
  // let asideContainer = document.querySelector('.sidebar')
  // let overlay = document.querySelector('.overlay')
  // let header = document.querySelector('.header')
  
  let body = document.body
  
  toggleButton.addEventListener('click', (e) => {
    e.preventDefault();
    body.classList.toggle('js-show-nav');
    // container.classList.toggle('show-nav');
    // asideContainer.classList.toggle('show-nav');
    // overlay.classList.toggle('show');
  });
}
