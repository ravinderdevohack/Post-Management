var title = document.getElementById("post_title")
var description = document.getElementById("post_description")
var file = document.getElementById("post_file")

var draft = document.getElementById("draft-btn")
draft.addEventListener('click', function() {
  alert('Post save as draft');
  // var data = 'title='+title.value & 'description='+description.value
  $.ajax({
    url: "/draft",
    type: "POST",
    data: { post: {title: title.value, description: description.value}}
  })
})
