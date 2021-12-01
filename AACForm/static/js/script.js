let nav = document.querySelector('nav');
let dropdown = nav.querySelector('.dropdown');
let dropdownToggle = nav.querySelector("[data-action='dropdown-toggle']");

dropdownToggle.addEventListener('click', () => {
    if (dropdown.classList.contains('show')) {
        dropdown.classList.remove('show');
    } else {
        dropdown.classList.add('show');
    }
});

let navToggle = nav.querySelector("[data-action='nav-toggle']");

navToggle.addEventListener('click', () => {
    if (nav.classList.contains('opened')) {
        nav.classList.remove('opened');
    } else {
        nav.classList.add('opened');
    }
});

document.addEventListener('click', function (e) {
    if (!e.target.closest(`.dropdown`)) {
        dropdown.classList.remove('show');
    }
});

function showhide(id) {
    var e = document.getElementById(id);
    e.style.display = (e.style.display == 'block') ? 'none' : 'block';
}

/**
     * Creates the drop-down for the year
     * @class importSLO
     */
var chYear = null;
/**
 * Creates drop down for year and updates upon the DOM being loaded
 * @method onLoad
 */
document.addEventListener("DOMContentLoaded", function () {
    chYear = new Choices(document.getElementById('year'), { shouldSort: false, removeItemButton: true });
    console.log(chYear);
    updateYears();
});
/**
 * Calls the API to update the year choices for the search,
 * based upon the currently selected degree program
 * @method updateYears
 */
function updateYears() {
    chYear.clearChoices()
    console.log(chYear)
    chYear.setChoices(async () => {
        try {
            var e = document.getElementById("dp");
            var dP = e.options[e.selectedIndex].value;
            console.log(e)
            console.log(dP)
            const items = await fetch("{% url 'makeReports:api-impt-years' %}" + '?pk=' + dP);
            return items.json();
        } catch (err) {
            console.error(err);
        }
    });
}
