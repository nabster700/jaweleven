<div class="card w-100 mb-5 d-none d-md-block">
	<div class="card-body">

    <form role="form" method="get" action=''>
		<div class="input-group">
    		<input id="story" name="story" class="form-control" type="search" placeholder="Поиск по сайту.." aria-label="Поиск..">
    		<input type="hidden" name="do" value="search">
      		<input type="hidden" name="subaction" value="search">
    		<div class="input-group-append">
      			<button class="btn btn-secondary" type="submit">
        			<i class="fa fa-search"></i>
      			</button>
    		</div>
  		</div>
  	</form>

	</div>
</div>

<div class="card mb-5 f90 d-none d-md-block">
	<h6 class="card-header px-3"><i class="fa fa-bars mr-2 text-info" aria-hidden="true"></i>Навигация</h6>
	<div class="list-group list-group-flush">
		<div id="jquery-accordion-menu" class="jquery-accordion-menu">
  		{catmenu}
		</div>
	</div>
</div>
        
<div class="card mb-5 f90">
	<h6 class="card-header px-3"><i class="fa fa-paper-plane mr-2 text-info" aria-hidden="true"></i>Лучшие новости</h6>
	<div class="list-group list-group-flush">
		{topnews}
	<a href="/index.php?do=lastnews" class="list-group-item list-group-item-action" style="padding: 10px;">
	<div class="media">
	  <img class="d-flex mr-2 align-self-center" src="{THEME}/images/news.svg" style="width: 24px;height: 24px;object-fit: cover;margin: 0 5px 0 0;">
	  <div class="media-body text-muted"  style="font-size: 0.9rem;">
	    <div class="mt-0"><b style="font-family: arial;"><i class="fa fa-share" aria-hidden="true"></i> Все публикации..</b></div>
	    Полный список публикаций
	  </div>
	</div>
	</a>
	</div>
</div>

<div class="card mb-5 f90">
  <h6 class="card-header px-3"><i class="fa fa-comments mr-2 text-info" aria-hidden="true"></i>Комментарии</h6>
	<div class="list-group list-group-flush">
	{customcomments template="lastcomments_block" available="global" from="0" limit="5" order="date" sort="desc" cache="no"}
	<a href="/index.php?do=lastcomments" class="list-group-item list-group-item-action" style="padding: 10px;">
	<div class="media">
	  <img class="d-flex mr-2 align-self-center" src="{THEME}/images/coms.svg" style="width: 24px;height: 24px;object-fit: cover;margin: 0 5px 0 0;">
	  <div class="media-body text-muted"  style="font-size: 0.9rem;">
	    <div class="mt-0"><b style="font-family: arial;"><i class="fa fa-share" aria-hidden="true"></i> Все комментарии..</b></div>
	    Полный список последних комментариев
	  </div>
	</div>
	</a>
	</div>
</div>

{vote}

<div class="card mb-5 f90">
	<h6 class="card-header px-3"><i class="fa fa-bar-chart mr-2 text-info" aria-hidden="true"></i>Статистика</h6>
	<div class="list-group list-group-flush">
{include file="engine/modules/mainstats.php"}
	</div>
</div>
        
<div class="card mb-5 f90">
	<h6 class="card-header px-3"><i class="fa fa-tags mr-2 text-info" aria-hidden="true"></i>Теги</h6>
	<div class="card-body p-2 text-center">
		{tags}
	</div>
</div>

<div class="card w-100 mb-5 text-white bgpath bg-secondary f09">
	<div class="card-body">
		<div class="spinner-grow spinner-grow-sm float-right" role="status">
  			<span class="sr-only">Loading...</span>
		</div>
		<p class="m-0"> Нашли ошибку? <br>
  Вы можете сообщить об этом администрации.<br>
  Выделив текст нажмите CTRL+Enter</p>
	</div>
</div>
