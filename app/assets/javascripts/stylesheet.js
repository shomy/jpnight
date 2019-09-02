Pace.on('done', function(){
  $('.wrap').fadeIn(400);
});

//ラジオボタンリセット
function resetradio() {
    for (i = 1; i <= 6; i++) {
        document.getElementById('radio' + i).checked = false;
    }
}

function resetcheckboxl() {
    for (i = 1; i <= 3; i++) {
        document.getElementById('checkboxl' + i).checked = false;
    }
}

//複数選択セレクトボックス

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

$( document ).on ('turbolinks:load', (function(){
  $('.panel div').css('display','block')
}));

jQuery(function($){
	$('.regi').click(function(){
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

$( document ).on ('turbolinks:load', (function(){
  $('.panel div').css('display','block')
}));


$(document).on ('turbolinks:load', (function() {
  $fileField = $('#files')

  // 選択された画像を取得し表示
  $($fileField).on('change', $fileField, function(e) {
    file = e.target.files[0]
    reader = new FileReader(),
    $preview = $("#img_field");

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
          src: e.target.result,
          width: "100%",
          class: "preview",
          title: file.name
        }));
      };
    })(file);
    reader.readAsDataURL(file);
  });
}));

$(document).on ('turbolinks:load', (function() {
  $fileField = $('#file')

  // 選択された画像を取得し表示
  $($fileField).on('change', $fileField, function(e) {
    file = e.target.files[0]
    reader = new FileReader(),
    $preview = $("#face_img_field");

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
          src: e.target.result,
          width: "100%",
          class: "face_preview",
          title: file.name
        }));
      };
    })(file);
    reader.readAsDataURL(file);
  });
}));
