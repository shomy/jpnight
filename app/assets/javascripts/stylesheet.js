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

window.onload(function(){
  $('.panel div').css('display','block')
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

$(function(){
  $fileField = $('#file')

  // 選択された画像を取得し表示
  $($fileField).on('change', $fileField, function(e) {
    file = e.target.files[0]
    reader = new FileReader(),
    $preview = $("#preview");

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
});
