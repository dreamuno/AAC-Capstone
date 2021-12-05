let subnav = document.getElementsByClassName('subnav')[0];
let subnavToggle = subnav.querySelector("[data-action='subnav-toggle']");


/**
 * Event Listener to display navigation dropdown in responsive view.
 * Adds and removes 'show' from classpath for CSS property.
 */
subnavToggle.addEventListener('click', () => {
    if (subnav.classList.contains('opened')) {
        subnav.classList.remove('opened');
    } else {
        subnav.classList.add('opened');
    }
});