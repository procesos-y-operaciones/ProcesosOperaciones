(function(){$(function(){var n;return $(".clickable-row").click(function(){return window.location=$(this).data("href")}),n=function(){var n,r,e,t,a,i;if(t=parseInt($("#phases_number_hid").val())||0,0<(e=parseInt($("#phases_number").val())||0)-t)for(n=0,a=e-t-1;0<=a?n<=a:a<=n;0<=a?++n:--n)$("#phases_butt").trigger("click");if(e-t<0)for($("#phases_container").empty(),r=0,i=e-1;0<=i?r<=i:i<=r;0<=i?++r:--r)$("#phases_butt").trigger("click");return $("#phases_number_hid").val(e)},$("#phases_number").change(function(){return n()}),n()})}).call(this);