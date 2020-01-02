$(function(){
  $("#go").click(
  function(){
    panel = document.getElementById('panel');
    panel.style.width = '400px';
    panel.style.height = '600px';
    for (var i=0;i<24;i++){
      var div = document.createElement('div');
      div.className = "box empty";
      div.id = "box empty " + i;
      document.getElementById('panel').appendChild(div);
    }
  
  }
  )});




// document.getElementById('panel').addEventListener('',
// function(){
//   console.log("panel");
// })


// document.getElementById('on').addEventListener('click',
// function(){
// console.log("靴の場所を登録");
// var width_max = 4;
// var height_max = 6;
// var width = document.getElementById('input input-width').value;
// var height = document.getElementById('input input-height').value;
// console.log(width);
// console.log(height);
// var cnt = 0;
// for(i=0;i < width - 1; i++){
//   cnt++;
// }
// for(n=0;n < height - 1;n++){
//   cnt += width_max;
// }
// console.log(cnt);
// document.getElementById("box empty " + cnt).style.backgroundColor = "red";
// });

// var boxempty = document.getElementById("box empty 10");
// console.log(boxempty);
// var myfunc = function(){
//   boxempty.style.backgroundColor = 'yellow';
// }


// document.getElementById('search').addEventListener('click',
// function(){
// document.getElementById('box empty 1').style.backgroundColor = 'red';
// });

// document.getElementById('reset').addEventListener('click',
// function(){
// console.log("reset");
//  for(i=0;i<document.getElementsByClassName("box empty").length;i++){
//   console.log(document.getElementsByClassName("box empty").length);
//   var be = document.getElementsByClassName("box empty");
//   for(i=0;i<be.length;i++){
//     document.getElementById("box empty " + i).style.backgroundColor = 'white';
//   }
//  }
// });
