<div class="card [fixed]fxd[/fixed] mb-2">
  <div class="card-body">
    <div class="row">
         <div class="col-md-12">
            [not-group=5]
            <div class="dropdown float-right">
               <button class="btn btn-sm btn-light dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                  [/group]
                  [complaint]
                  <button class="dropdown-item" type="button">Пожаловаться</button>
                  [/complaint]
               </div>
            </div>
            [/not-group]
            <h4 class="shtitle" style="margin-bottom: 1.1rem;"><a href="{full-link}" class="text-dark">[poll] <i class="zmdi zmdi-sort-amount-desc text-muted" data-toggle="tooltip" data-placement="top" title="Опрос"></i> [/poll]{title}</a></h4>
            <div class="noimg" style="color: #6b6e84;font-size: 0.9rem;">{short-story limit="200"}</div>
         </div>
      </div>
   </div>
</div>
