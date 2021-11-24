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

<<<<<<< HEAD
/**
     * Creates the drop-down for the year
     * @class importSLO
     */
 var chYear = null;
 /**
  * Creates drop down for year and updates upon the DOM being loaded
  * @method onLoad
  */
 document.addEventListener("DOMContentLoaded", function() {
     chYear = new Choices(document.getElementById('year'),{shouldSort:false, removeItemButton:true});
     console.log(chYear);
     updateYears();    
 });
 /**
  * Calls the API to update the year choices for the search,
  * based upon the currently selected degree program
  * @method updateYears
  */
 function updateYears(){
     chYear.clearChoices()
     console.log(chYear)
     chYear.setChoices(async () => {
     try {
         var e = document.getElementById("dp");
         var dP = e.options[e.selectedIndex].value;
         console.log(e)
         console.log(dP)
         const items = await fetch("{% url 'makeReports:api-impt-years' %}"+'?pk='+dP);
         return items.json();
     } catch (err) {
         console.error(err);
     }
     });
 }
=======
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
            spanCount.innerHTML = MAX_VALUE - iframeChild.textContent.length + ' character(s) left';
            iframeParent.parentNode.insertBefore(spanCount, iframeParent.nextSibling);
            document.getElementsByClassName("char-count")[i].style.fontSize = "12px";
            iframeChild.addEventListener('keyup', function () {
                textCount = iframeChild.textContent.length;
                let color = "";
                textCount > MAX_VALUE ? color = '#b60000' : color = 'black';
                document.getElementsByClassName("char-count")[i].style.color = color;
                spanCount.innerHTML = MAX_VALUE - textCount + ' character(s) left';
            });
        }
    }, 200);
}
>>>>>>> 9502c66290af3cde67d86d96fd694851ce83a014
