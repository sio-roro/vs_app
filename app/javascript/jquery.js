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


  
  
  
});

