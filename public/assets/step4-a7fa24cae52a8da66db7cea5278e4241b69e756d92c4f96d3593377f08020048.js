(function(){$(function(){return setInterval(function(){return $.getJSON("/step/"+$("#evaluation_id").val(),function(t){if(console.log(t.step),5===t.step)return location.reload()})},1e4)})}).call(this);