var draft = document.getElementById("draft-btn")
var title = document.getElementById("post_title")
var description = document.getElementById("post_description")
// var draft = document.getElementById("draft-btn")
draft.addEventListener('click', function() {
  // var data = 'title='+title.value & 'description='+description.value
  $.ajax({
    url: "/draft",
    type: "POST",
    data: { post: {title: title.value, description: description.value}}
  })
})
