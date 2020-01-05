/*ここから*/
$(document).ready((function(){
url = location.href.slice( -5 );
console.log(url);
if(url !== "shoes") {
  console.log("func_sorting呼びません！")
}else{
  $(func_sorting = function(){
    // $(setTimeout(function(){
    // $("#go").on('click',function(e){
      // e.preventDefault();
      console.log("func_sorting!");
    // $("").on('click',function(e){
      $.ajax({
        type: 'GET',
        url: '/shoes',
        dataType: 'json'
      })
      .done(function(e){
        var tate = 9;
        var yoko = 7;
        // console.log(box.max_vertical);
        panel = document.getElementById('panel');
        panel.style.width = (tate * 100) + "px";
        // panel.style.width = boxesテーブル から取得したテーブルの よこ 幅分 × 100;
        panel.style.height = (yoko * 100) + "px";
        // panel.style.height = boxesテーブル から取得したテーブルの たて 幅分 × 100;
        for (var i=0;i<(tate * yoko);i++){
        // for (var i=0; i< たて×よこ ;i++){
          var div = document.createElement('div');
          div.className = "box empty";
          div.id = "box empty " + i;
          document.getElementById('panel').appendChild(div);
        }
      })
      .fail(function(){
        alert('error');
      });
  });


/*ここまで！*/



    // }
  // )
  $('#on').on('click',function(){
  console.log("靴の場所を登録");
  var tate = 9;
  var yoko = 7;
  var width_max = tate;
  var height_max = yoko;
  var width = document.getElementById('input input-width').value;
  var height = document.getElementById('input input-height').value;
  console.log(width);
  console.log(height);
  var cnt = 0;
  for(i=0;i < width - 1; i++){
    cnt++;
  }
  for(n=0;n < height - 1;n++){
    cnt += width_max;
  }
  console.log(cnt);
  document.getElementById("box empty " + cnt).style.backgroundColor = "red";
  });

  // var boxempty = document.getElementById("box empty 10");
  // console.log(boxempty);
  // boxempty.on('click',function(){
  //   boxempty.style.backgroundColor = 'yellow';
  // });


  document.getElementById('search').addEventListener('click',
  function(){
  document.getElementById('box empty 1').style.backgroundColor = 'red';
  });

  document.getElementById('reset').addEventListener('click',
  function(){
  console.log("reset");
  for(i=0;i<document.getElementsByClassName("box empty").length;i++){
    console.log(document.getElementsByClassName("box empty").length);
    var be = document.getElementsByClassName("box empty");
    for(i=0;i<be.length;i++){
      document.getElementById("box empty " + i).style.backgroundColor = white;
    }
  }
  });
}}));

// },1000));


// });
