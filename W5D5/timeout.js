window.setTimeout(function (){
alert('HAMMERTIME');
},5000);


function hammerTime(time){
  this.setTimeout(function(){
    alert (`${time} is hammertime!`);
  });
}
