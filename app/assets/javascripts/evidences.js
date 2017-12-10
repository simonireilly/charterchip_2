function myFunction(button_object) {
    // Declare variables
    var input, filter, ul, li, a, i;
    input = $(button_object).text();
    filter = input.replace(/\s/g,'').toUpperCase();
    console.log(filter);
    ul = document.getElementById("my-competencies");
    li = ul.getElementsByClassName('filter');

    // Loop through all list items, and hide those who don't match the search query

    for (i = 0; i < li.length; i++) {
        a = li[i];
        console.log(a.innerText.toUpperCase());
        if (a.innerText.replace(/\s/g,'').toUpperCase() === filter || filter == 'NONE') {
            a.parentNode.parentNode.parentNode.parentNode.parentNode.style.display = "";
        } else {
            a.parentNode.parentNode.parentNode.parentNode.parentNode.style.display = "none";
        }
    }


}
