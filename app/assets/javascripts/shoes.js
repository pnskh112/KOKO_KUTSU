/*ここから*/
$(document).ready(function(){
url = location.href.slice( -10 );
console.log(url);
if(url !== "/shoes/new") {
  console.log("func_sorting呼びません！")
}else{
//   $(func_sorting = function(){
//     // $(setTimeout(function(){
//     // $("#go").on('click',function(e){
//       // e.preventDefault();
//       console.log("func_sorting!");
//     // $("").on('click',function(e){
//       $.ajax({
//         type: 'GET',
//         url: '/shoes',
//         dataType: 'json'
//       })
//       .done(function(e){
//         var tate = 9;
//         var yoko = 7;
//         // console.log(box.max_vertical);
//         panel = document.getElementById('panel');
//         panel.style.width = (tate * 100) + "px";
//         // panel.style.width = boxesテーブル から取得したテーブルの よこ 幅分 × 100;
//         panel.style.height = (yoko * 100) + "px";
//         // panel.style.height = boxesテーブル から取得したテーブルの たて 幅分 × 100;
//         for (var i=0;i<(tate * yoko);i++){
//         // for (var i=0; i< たて×よこ ;i++){
//           var div = document.createElement('div');
//           div.className = "box empty";
//           div.id = "box empty " + i;
//           document.getElementById('panel').appendChild(div);
//         }
//       })
//       .fail(function(){
//         alert('error');
//       });
//   });


// /*ここまで！*/



//     // }
//   // )
//   $('.box').on('click',function(){
//   console.log("靴の場所を登録");
//   var tate = 9;
//   var yoko = 7;
//   var width_max = tate;
//   var height_max = yoko;
//   var width = document.getElementById('input input-width').value;
//   var height = document.getElementById('input input-height').value;
//   console.log(width);
//   console.log(height);
//   var cnt = 0;
//   for(i=0;i < width - 1; i++){
//     cnt++;
//   }
//   for(n=0;n < height - 1;n++){
//     cnt += width_max;
//   }
//   console.log(cnt);
//   document.getElementById("box empty " + cnt).style.backgroundColor = "red";
//   });

//   // var boxempty = document.getElementById("box empty 10");
//   // console.log(boxempty);
//   // boxempty.on('click',function(){
//   //   boxempty.style.backgroundColor = 'yellow';
//   // });


//   document.getElementById('search').addEventListener('click',
//   function(){
//   document.getElementById('box empty 1').style.backgroundColor = 'red';
//   });

//   document.getElementById('reset').addEventListener('click',
//   function(){
//   console.log("reset");
//   for(i=0;i<document.getElementsByClassName("box empty").length;i++){
//     console.log(document.getElementsByClassName("box empty").length);
//     var be = document.getElementsByClassName("box empty");
//     for(i=0;i<be.length;i++){
//       document.getElementById("box empty " + i).style.backgroundColor = white;
//     }
//   }
//   });
// }
}});

// フォームのinputボタンが押された時に、その要素のクラス名もしくはid名を取得して、
// そこから正規表現でたて何段、よこ何列 の箱に靴を入れたかを取得
//  まずはちゃんと要素を取得できているか、console.logで確認→ok

// $(document).ready(function(){
window.onload = (function(){
  var box = document.getElementsByClassName("box")
  for(i=0;i<box.length;i++){
    var shoe_box = box[i].getAttribute("id");
    console.log(shoe_box);
    box[i].addEventListener('click', function(){

        console.log("反転！");
        
        console.log("たて:"+shoe_box.slice(4,5));
        console.log("よこ:"+shoe_box.slice(6,7));
        var user_vertical = shoe_box.slice(4,5);
        var user_side = shoe_box.slice(6,7);

        // $("#shoe_box").remove();
        
        
      //var shoe_box = box[i].getAttribute("id");
      //console.log(shoe_box);
    }
  )
}
});

  // window.onload = (function(){
  //   var box = document.getElementsByClassName("box")
  //   for(i=0;i<box.length;i++){
  //       console.log(box[i].getAttribute);
  //       box[i].addEventListener('click', function(){
  //         console.log(box[i]);
  //       var shoe_box = box[i].getAttribute("id");
  //       console.log(shoe_box);
  //     }
  //   )
  // }
  // });

// $(document).ready(function(){
//   url = location.href.slice( -10 );
//   console.log(url);
//   if(url !== "/shoes/new") {
//     console.log("func_sorting呼びません！")
//   }else{
//     console.log("q");
//   }});