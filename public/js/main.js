$(function() {
  $('.add-star').click(function(){
    var $this = $(this);
    var post_id = $this.attr('data-post-id');
    console.log(post_id);
  });
});