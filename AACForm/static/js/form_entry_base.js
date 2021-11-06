let subnav = document.getElementsByClassName('subnav')[0];
let subnavToggle = subnav.querySelector("[data-action='subnav-toggle']");

subnavToggle.addEventListener('click', () => {
    if(subnav.classList.contains('opened')) {
        subnav.classList.remove('opened');
    } else {
        subnav.classList.add('opened');
    }
})