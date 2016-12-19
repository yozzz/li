$(document).ready(function(){
  $('.copy').click(function(){
    var link = $('a');
    copyToClipboard(link);
  })
})
