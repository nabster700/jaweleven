<script>
      $(document).ready(function(){
      	$('.owl-carousel').owlCarousel({
      	    loop:false,
      	    margin:30,
      			autoplay:3000,
      	    responsiveClass:true,
      			dots : false,

      	    responsive:{
      	        0:{
      	            items:1,
      	            nav:false
      	        },
      			360:{
      	            items:1,
      	            nav:false
      	        },
      	        600:{
      	            items:2,
      	            nav:false
      	        },
      	        1000:{
      	            items:3,
      	            nav:false,
      	            loop:false
      	        }
      	    }
      	})
      });
</script>
<script>
   jQuery(document).ready(function($) {
       $('#gallery').magnificPopup({
    delegate: 'a',
    type: 'image',
    tLoading: '...',
    gallery: {
        enabled: true,
        navigateByImgClick: true,
        preload: [0, 1]
    }
    });
    if (!$('#gallery').find('div.item').length) {
     $('#ggwp').hide();
    }
   });
</script>
<div class="card [fixed]fxd[/fixed] mb-5 ">
   <div class="card-body">
      [not-group=5]
      <div class="dropdown float-right">
         <button class="text-black-50 btn btn-sm btn-light dropdown-toggle pt-1" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <i class="fa fa-angle-down" aria-hidden="true"></i>
         </button>
         <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2" style="font-size: 90%;">
            [add-favorites]
            <button class="dropdown-item" type="button">Добавить в закладки</button>
            [/add-favorites]
            [del-favorites]
            <button class="dropdown-item" type="button">Удалить из закладок</button>
            [/del-favorites]
            [group=1,2,3]
            <a class="dropdown-item" href="/admin.php?mod=editnews&action=editnews&id={news-id}" target="_blank">Редактировать</a>
            <a class="dropdown-item" onclick="ajax_prep_for_edit('{news-id}', 'full'); return false;" href="#">Быстрое редактирование</a>
            [/group]
            [complaint]
            <button class="dropdown-item" type="button">Пожаловаться</button>
            [/complaint]
            [print-link] <button class="dropdown-item" type="button">Распечатать</button> [/print-link]
         </div>
      </div>
      [/not-group]
      <h1 class="text-dark mb-0">{title}</h1>
      <p class="auth mt-1 mb-2" style="font-size: 13px;opacity: 0.7;"><i class="icon-puzzle"></i> {link-category}</p>
      {full-story} [pages]<br>{pages}[/pages] [poll]{poll}[/poll]
      <div class="main-content my-3" id="ggwp">
         <div class="owl-carousel owl-theme xfieldimagegallery skrinshoty" id="gallery">
            {poster}
         </div>
        </div>
      [edit-date]
      <div class="alert alert-warning mb-0 mt-3 p-2 pl-3 pr-3 f90" role="alert">
         Новость отредактировал: <b>{editor}</b> - {edit-date}<br>
         [edit-reason]Причина: <i>{edit-reason}</i>[/edit-reason]
      </div>
      [/edit-date]
   </div>
   <div class="card-footer">
      <ul class="list-inline m-0 text-muted isize">
         <li class="list-inline-item auth d-none d-sm-inline"> <img class="rounded" src="{foto}" class="sava"> {author}</li>
         <li class="list-inline-item"><i class="zmdi zmdi-calendar-check" style="font-size: 17px;color: #ac92ec8c;vertical-align: middle;"></i> {date=d.m.Y}</li>
         <li class="list-inline-item"><i class="zmdi zmdi-check-all" style="font-size: 17px;color: #4fc1e994;"></i> {views}</li>
         <li class="list-inline-item"><i class="zmdi zmdi-comment-outline" style="color: #F6BB42;"></i> {comments-num}</li>
         <li class="list-inline-item float-right">
            [rating]
            [rating-type-2]
            <a href="#" onclick="doRate('plus', '{news-id}'); return false;">
            <button class="p-0 pl-1 pr-1 btn btn-sm btn-light" aria-pressed="true">
            <i class="fa fa-heart-o text-danger" style="font-weight: bold;"></i>
            {rating}
            </button>
            </a>
            [/rating-type-2]
            [/rating]
         </li>
      </ul>
   </div>
</div>
[related-news]
<div class="row row-flex row-flex-wrap">
   {related-news}
</div>
[/related-news]
<div class="card w-100 mb-5">
   <div class="card-body pb-3">
      <section id="cd-timeline" class="cd-container">
         [not-allow-comm]
         <div class="cd-timeline-block">
            <div class="cd-timeline-img cd-movie">
               <img src="{THEME}/images/gear.svg" alt="Movie" style="background: #fff;" class="fa-spin">
            </div>
            <div class="cd-timeline-content">
               <h5>Комментарии к статье отключены администрацией.</h5>
               <p>Комментарии отключены..</p>
            </div>
         </div>
         [/not-allow-comm]
         [not-comments]
         <div class="cd-timeline-block">
            <div class="cd-timeline-img cd-movie">
               <img src="{THEME}/images/gear.svg" alt="Movie" style="background: #fff;" class="fa-spin">
            </div>
            <div class="cd-timeline-content">
               <h5>В данной публикации отсутствуют комментарии !</h5>
               <p>Перед публикацией, советую ознакомится с <a href="/index.php?do=rules" target="_blank">правилами!</a></p>
            </div>
         </div>
         {comments}
         [/not-comments]
         [comments]
         {comments}
         {navigation}
         [/comments]
          {addcomments}
      </section>
   </div>
</div>
