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

<div id="jquery-accordion-menu" class="jquery-accordion-menu mb-5 d-none d-md-block">
  {catmenu}
</div>

<div class="card mb-5 f90">
	<h6 class="card-header">Лучшие новости</h6>
	<div class="list-group list-group-flush">
		{topnews}
	</div>
</div>

<div class="card mb-5 f90">
  <h6 class="card-header">Комментарии</h6>
	<div class="list-group list-group-flush">
	{customcomments template="lastcomments" available="global" from="0" limit="5" order="date" sort="desc" cache="no"}
	<a href="/index.php?do=lastcomments" class="list-group-item list-group-item-action" style="padding: 10px;">
	<div class="media">
	  <img class="d-flex mr-2 rounded" src="{THEME}/images/coms.svg" style="width: 24px;height: 24px;object-fit: cover;margin: 0 5px 0 0;">
	  <div class="media-body text-muted" style="font-size: 84%;overflow: auto;">
	    <div class="mt-0"><b style="font-family: arial;"><i class="fa fa-share" aria-hidden="true"></i> Все комментарии..</b></div>
	    Полный список последних комментариев
	  </div>
	</div>
	</a>
	</div>
</div>

{vote}

{include file="engine/modules/mainstats.php"}

<div class="card mb-5 f90">
	<h6 class="card-header">Теги</h6>
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