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