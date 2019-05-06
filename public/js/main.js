$(function(){

  var joke = setInterval(function(){
    $.get("http://api.icndb.com/jokes/random", function(data) {
      $("#joke").html(data.value.joke); 
      console.log(data.value.joke);
    });
  }, 3000);

  });
