let nav = document.querySelector('nav');
let dropdown = nav.querySelector('.dropdown');
let dropdownToggle = nav.querySelector("[data-action='dropdown-toggle']");

/**
 * Event Listener to display additional nav-links in navbar.
 * Adds and removes 'opened' from classpath for CSS property.
 */
dropdownToggle.addEventListener('click', () => {
    if (dropdown.classList.contains('show')) {
        dropdown.classList.remove('show');
    } else {
        dropdown.classList.add('show');
    }
});

let navToggle = nav.querySelector("[data-action='nav-toggle']");

/**
 * Event Listener to display navigation dropdown in responsive view.
 * Adds and removes 'show' from classpath for CSS property.
 */
navToggle.addEventListener('click', () => {
    if (nav.classList.contains('opened')) {
        nav.classList.remove('opened');
    } else {
        nav.classList.add('opened');
    }
});


/**
 * Event Listener for entire webpage.
 * If dropdown is opened and there is a click event anywhere on the page, remove 'show' classpath.
 */
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

window.onload = function () {
    setTimeout(function () {
        const FRAME_LENGTH = document.getElementsByTagName('iframe').length;
        const MAX_VALUE = 1000;
        for (let i = 0; i < FRAME_LENGTH; i++) {
            const iframe = document.getElementsByTagName('iframe')[i];
            const iframeContent = iframe.contentWindow.document.body;
            const iframeChild = iframeContent.getElementsByClassName('note-editable')[0];
            const iframeParent = iframe.parentNode;
            const spanCount = document.createElement('span');
            let textCount = iframeChild.textContent.length;
            spanCount.className = "char-count";
            let showAnchor = false;
            spanCount.innerHTML = MAX_VALUE - iframeChild.textContent.length + ' character(s) left';
            iframeParent.parentNode.insertBefore(spanCount, iframeParent.nextSibling);
            document.getElementsByClassName("char-count")[i].style.fontSize = "12px";
            iframeChild.addEventListener('keyup', function () {
                let anchor = iframeChild.getElementsByTagName('a').length;
                textCount = iframeChild.textContent.length;
                let color = "";
                textCount > MAX_VALUE ? color = '#b60000' : color = 'black';
                document.getElementsByClassName("char-count")[i].style.color = color;
                console.log(anchor);
                textCount = MAX_VALUE - textCount;
                if (!showAnchor && anchor == 1)
                {
                    spanCount.innerHTML = textCount + ' character(s) left. Warning: External links are not recommended.';
                    showAnchor = true;
                }
                else if (showAnchor && anchor == 0)
                {
                    spanCount.innerHTML = textCount + ' character(s) left.';
                    showAnchor = false;
                }
                else if (showAnchor)
                {
                    spanCount.innerHTML = textCount + ' character(s) left. Warning: External links are not recommended.';
                }
                else
                {
                    spanCount.innerHTML = textCount + ' character(s) left.';
                    showAnchor = false;
                }            
            });
        }
    }, 200);
}
