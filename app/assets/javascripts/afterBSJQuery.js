//= require_self
$("#sortButton").on("click", function () {
    var $wrapper = $('#my-competencies'),
        $articles = $wrapper.find('.evidence-card'),
        $attr = $('#sortSelect')[0].value;
        console.log($attr);
    [].sort.call($articles, function(a,b) {
        return  +$(b).attr($attr) - +$(a).attr($attr);
    });
    $articles.each(function(){
        $(this).appendTo($wrapper);
    });
});
$(function () {
    $('[data-toggle="popover"]').popover()
})
