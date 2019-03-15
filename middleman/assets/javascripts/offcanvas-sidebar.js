window.onload = function() {
  let container    = document.querySelector('#canvas')
  let toggleButton = document.querySelector('.nav-button')
  
  toggleButton.addEventListener('click', (e) => {
    e.preventDefault();
    container.classList.toggle('show-nav');
  });
}
