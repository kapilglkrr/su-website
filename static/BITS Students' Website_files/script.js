// -----------------------------------------------------------------------------------
// http://wowslider.com/
// JavaScript Wow Slider is a free software that helps you easily generate delicious 
// slideshows with gorgeous transition effects, in a few clicks without writing a single line of code.
// Generated by WOW Slider 4.9
//
//***********************************************
// Obfuscated by Javascript Obfuscator
// http://javascript-source.com
//***********************************************
function ws_blinds(c,b,a){var g=jQuery;var e=c.parts||3;var f=g("<div>");f.css({position:"absolute",width:"100%",height:"100%",left:0,top:0,"z-index":8}).hide().appendTo(a);var h=[];for(var d=0;d<e;d++){h[d]=g("<div>").css({position:"absolute",height:"100%",width:Math.ceil(100/e)+1+"%",border:"none",margin:0,overflow:"hidden",top:0,left:Math.round(100*d/e)+"%"}).appendTo(f)}this.go=function(m,p,j){var l=p>m?1:0;if(j){if(j<=-1){m=(p+1)%b.length;l=0}else{if(j>=1){m=(p-1+b.length)%b.length;l=1}else{return -1}}}f.find("img").stop(true,true);f.show();var o=g("ul",a);if(c.fadeOut){o.fadeOut((1-1/e)*c.duration)}for(var n=0;n<h.length;n++){var k=h[n];g(b.get(m)).clone().css({position:"absolute",top:0,left:(!l?(-f.width()):(f.width()-k.position().left))+"px",width:"auto",height:"100%"}).appendTo(k).animate({left:-k.position().left+"px"},(c.duration/(h.length+1))*(l?(h.length-n+1):(n+2)),((!l&&n==h.length-1||l&&!n)?function(){o.css({left:-m+"00%"}).stop(true,true).show();f.hide().find("img").remove()}:null))}return m}};// -----------------------------------------------------------------------------------
// http://wowslider.com/
// JavaScript Wow Slider is a free software that helps you easily generate delicious 
// slideshows with gorgeous transition effects, in a few clicks without writing a single line of code.
// Generated by WOW Slider 4.9
//
//***********************************************
// Obfuscated by Javascript Obfuscator
// http://javascript-source.com
//***********************************************
jQuery("#wowslider-container1").wowSlider({effect:"blinds",prev:"",next:"",duration:20*100,delay:20*100,width:960,height:360,autoPlay:true,playPause:true,stopOnHover:false,loop:false,bullets:true,caption:true,captionEffect:"fade",controls:true,onBeforeStep:0,images:0});