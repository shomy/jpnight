Pace.on('done', function(){
  $('.wrap').fadeIn(400);
});

jQuery(function($){
	$('.tab').click(function(){
		$('.is-active').removeClass('is-active');
		$(this).addClass('is-active');
		$('.is-show').removeClass('is-show');
        // クリックしたタブからインデックス番号を取得
		const index = $(this).index();
        // クリックしたタブと同じインデックス番号をもつコンテンツを表示
		$('.panel').eq(index).addClass('is-show');
    $('.panel div').css('display','block')
	});
});


$(document).on('ready page:load', function(){
  $('#guide-form').hide();
  $('#guest-form').hide();

  $('#resi-btn-guide').on('click', function(){
   $('#common-form').hide();
   $('#guide-form').show();
　});

  $('#resi-btn-guest').on('click', function(){
   $('#common-form').hide();
   $('#guest-form').show();
　});

　$('#resiback').on('click', function(){
    $('#guide-form').hide();
    $('#guest-form').hide();
    $('#common-form').show();
　});
});

$(document).on ('turbolinks:load', function() {
    $("#content div").hide(); // Initially hide all content
    $("#tabsgroup li:first").attr("id","current"); // Activate first tab
    $("#content div:first").fadeIn(); // Show first tab content

    $('#mypage a').click(function(e) {
        e.preventDefault();
        $("#content div").hide(); //Hide all content
        $("#tabsgroup li").attr("id",""); //Reset id's
        $(this).parent().attr("#id","current"); // Activate this
        $('#' + $(this).attr('title')).fadeIn(); // Show content for current tab
    });
})();


//ファイルのアップロードとプレビューの処理　同じ処理を4回書いているのでまとめたい（＞もっちー）
$(function(){
  $('#img1').change(function(e){
    //ファイルオブジェクトを取得する
    var file = e.target.files[0];
    var reader = new FileReader();

    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }

    //アップロードした画像を設定する
    reader.onload = (function(file){
      return function(e){
        $("#mypageface-icon").attr("src", e.target.result);
        $("#mypageface-icon").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);

  });
});

$(function(){
  $('#img2').change(function(e){
    //ファイルオブジェクトを取得する
    var file = e.target.files[0];
    var reader = new FileReader();

    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }

    //アップロードした画像を設定する
    reader.onload = (function(file){
      return function(e){
        $("#preview2").attr("src", e.target.result);
        $("#preview2").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);

  });
});

$(function(){
  $('#img3').change(function(e){
    //ファイルオブジェクトを取得する
    var file = e.target.files[0];
    var reader = new FileReader();

    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }

    //アップロードした画像を設定する
    reader.onload = (function(file){
      return function(e){
        $("#preview3").attr("src", e.target.result);
        $("#preview3").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);

  });
});

$(function(){
  $('#img4').change(function(e){
    //ファイルオブジェクトを取得する
    var file = e.target.files[0];
    var reader = new FileReader();

    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }

    //アップロードした画像を設定する
    reader.onload = (function(file){
      return function(e){
        $("#preview4").attr("src", e.target.result);
        $("#preview4").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);

  });
});

$(function(){
  $('#img5').change(function(e){
    //ファイルオブジェクトを取得する
    var file = e.target.files[0];
    var reader = new FileReader();

    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }

    //アップロードした画像を設定する
    reader.onload = (function(file){
      return function(e){
        $("#preview5").attr("src", e.target.result);
        $("#preview5").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);

  });
});
