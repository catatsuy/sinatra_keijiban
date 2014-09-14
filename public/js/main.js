$(function() {
  $('.add-star').click(function(){
    var $this = $(this);
    var post_id = $this.attr('data-post-id');
    $.ajax({
      url: '/star?post_id=' + post_id,
      success: function(data) {
        alert('スターを付けました');
      },
      error: function(data) {
        alert('失敗しました');
      }
    });
  });
});