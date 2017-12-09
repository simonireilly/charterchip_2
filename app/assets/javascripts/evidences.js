function myFunction() {
    // Declare variables
    var input, filter, ul, li, a, i;
    input = document.getElementById('myInput');
    filter = input.value.toUpperCase();
    ul = document.getElementById("my-competencies");
    li = ul.getElementsByClassName('filter');

    // Loop through all list items, and hide those who don't match the search query

    for (i = 0; i < li.length; i++) {
        a = li[i];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1 || filter == 'NONE') {
            a.parentNode.parentNode.parentNode.parentNode.parentNode.style.display = "";
        } else {
            a.parentNode.parentNode.parentNode.parentNode.parentNode.style.display = "none";
        }
    }


}
