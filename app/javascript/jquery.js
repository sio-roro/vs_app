 $(function(){
  
  $('.top1').hide().stop(true).fadeIn(2000)
  $('.post').each(function(){
    var target = $(this).data('target');
    var id=document.getElementById(target);
    var one=document.getElementById("one-"+id.innerHTML);
    var oneNumber=Number(one.innerHTML);
    var two=document.getElementById("two-"+id.innerHTML);
    var twoNumber=Number(two.innerHTML);

    var bar1=document.getElementById("barOne-"+id.innerHTML)
    var bar2=document.getElementById("barTwo-"+id.innerHTML)
    var sum=oneNumber+twoNumber;
    

    $(bar1).css('width',(oneNumber/sum)*100+"%").hide().stop(true).animate( { width: 'toggle' }, 'slow' );
    $(bar2).css('width',(twoNumber/sum)*100+"%").hide().stop(true).animate( { width: 'toggle' }, 'slow' );
    

    return true;
  })

  

  $('#flash').hide().slideDown("slow");
  setTimeout(function(){
    $('#flash').slideUp();
},2000);
  
  
$('.tab').click(function(){
  $('.is-active').removeClass('is-active');
  $(this).addClass('is-active');
  $('.is-show').removeClass('is-show');
      // クリックしたタブからインデックス番号を取得
  const index = $(this).index();
      // クリックしたタブと同じインデックス番号をもつコンテンツを表示
  $('.user-main-index').eq(index).addClass('is-show');
});



$('#id-top2').hide();
$('#vs-v').hide();
$('#vs-s').hide();

$(window).scroll(function(){
  var obj2_t_pos=$('#id-top2').offset().top;
  var objv_t_pos=$('#vs-v').offset().top;
  var objs_t_pos=$('#vs-s').offset().top;

  var scr_count=$(document).scrollTop()+ (window.innerHeight/2);
  if (scr_count>obj2_t_pos){
    $('#id-top2').fadeIn(2000);
  }
  if (scr_count>objv_t_pos+1600){
    $('#vs-v').animate({'width': 'toggle'},'slow');

  }
  if (scr_count>objs_t_pos+1600){
    $('#vs-s').animate({'width': 'toggle'},'slow');

  }
})
  
  
  
});

