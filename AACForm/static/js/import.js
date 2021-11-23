/**
 * Creates the drop-down for the year
 * @class importSLO
 */
/**
 * Creates drop down for year and updates upon the DOM being loaded
 * @method onLoad
 */
document.addEventListener("DOMContentLoaded", function () {
    getYears();
});

/**
 * Calls the API to update the year choices for the search,
 * based upon the currently selected degree program
 * @method updateYears
 */
function getYears(event) {
    try {
        const e = document.getElementById("dp");
        const dP = e.options[e.selectedIndex].value;
        const year = document.getElementById("year");
        while (year.options.length > 0) {
            year.remove(0);
        }
        $.ajax({
            type: "GET",
            url: "/api/import/years/",
            data: {
                "pk": dP
            },
            success: function (response) {
                const items = response;
                for (let i = 0; i < items.length; i++) {
                    const opt = items[i].value;
                    const el = document.createElement("option");
                    el.textContent = opt;
                    el.value = opt;
                    year.appendChild(el);
                    sortSelect(year);
                }

            },
            error: function (response) {
                console.log("ERROR");
            }
        });
    } catch (err) {
        console.error(err);
    }
}

function sortSelect(selElem) {
    const tmpAry = new Array();
    for (let i = 0; i < selElem.options.length; i++) {
        tmpAry[i] = new Array();
        tmpAry[i][0] = selElem.options[i].text;
        tmpAry[i][1] = selElem.options[i].value;
    }
    tmpAry.sort();
    while (selElem.options.length > 0) {
        selElem.options[0] = null;
    }
    for (let i = 0; i < tmpAry.length; i++) {
        const op = new Option(tmpAry[i][0], tmpAry[i][1]);
        selElem.options[i] = op;
    }
    return;
}