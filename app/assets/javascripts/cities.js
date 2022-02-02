var country = document.getElementById("user_country");
var state = document.getElementById("user_state");

country.addEventListener("change", function(){
  $.ajax({
    url: "/state?country=" + country.value,
    type: "GET"
  })
})

state.addEventListener("change", function(){
  $.ajax({
    url: "/cities?country=" + country.value + "&state=" + state.value,
    type: "GET"
  })
})
