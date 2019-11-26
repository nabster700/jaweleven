<div class="card [fixed]fxd[/fixed] mb-5">
  <div class="card-body">
    <div class="row">
        <div class="col-md-4">
            <a href="{full-link}">
              [ifxfvalue panel="Предупреждение"]
              <div role="status" style="position: absolute;margin: 10px;">
                <span class="badge badge-warning">[xfvalue_panel]</span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Важное"]
              <div role="status" style="position: absolute;margin: 10px;">
                <span class="badge badge-primary">[xfvalue_panel]</span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Выполнено"]
              <div role="status" style="position: absolute;margin: 10px;">
                <span class="badge badge-success">[xfvalue_panel]</span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Внимание"]
              <div role="status" style="position: absolute;margin: 10px;">
                <span class="badge badge-danger">[xfvalue_panel]</span>
              </div>
                [/ifxfvalue]

              [ifxfvalue panel="Информация"]
              <div role="status" style="position: absolute;margin: 10px;">
                <span class="badge badge-info">[xfvalue_panel]</span>
              </div>
              [/ifxfvalue]
                <img class="img-fluid rounded mb-3 mb-md-0 w-100" src="{image-1}" alt="{title}" style="max-height: 190px;object-fit: cover;">
            </a>
        </div>
         <div class="col-md-8 pl-md-0">
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
            <a class="dropdown-item" onclick="ajax_prep_for_edit('{news-id}', 'full'); return false;" href="#">Быстрое редактирование</a>
            [/group]
                  [complaint]
                  <button class="dropdown-item" type="button">Пожаловаться</button>
                  [/complaint]
               </div>
            </div>
            [/not-group]
            <h4 class="shtitle m-0"><a href="{full-link}" class="text-dark">[poll] <i class="zmdi zmdi-sort-amount-desc text-muted" data-toggle="tooltip" data-placement="top" title="Опрос"></i> [/poll]{title}</a></h4>
            <p class="auth mt-1" style="font-size: 13px;opacity: 0.7;"><i class="icon-puzzle"></i> {link-category}</p>
            <div class="noimg" style="color: #6b6e84;font-size: 0.9rem;">{short-story limit="200"}</div>
            [tags]
            <div class="tags">{tags}</div>
            [/tags]
            [edit-date]
            <button class="btn btn-sm btn-outline-warning mt-2" type="button" data-toggle="collapse" data-target="#edit" aria-expanded="false" aria-controls="edit" style="padding: 0 6px 2px 6px;font-size: 80%;">
            Изменено! <i class="fa fa-caret-down" aria-hidden="true"></i>
            </button>
            [/edit-date]
         </div>
         [edit-date]
         <div class="col-md-12">
            <div class="collapse" id="edit">
               <div class="alert alert-warning mb-0 mt-3 p-2 pl-3 pr-3 f90" role="alert">
                  Новость отредактировал: <b>{editor}</b> - {edit-date}<br>
                  [edit-reason]Причина: <i>{edit-reason}</i>[/edit-reason]
               </div>
            </div>
         </div>
         [/edit-date]
      </div>
   </div>
   <div class="card-footer">
      <ul class="list-inline m-0 text-muted f90 isize">
         <li class="list-inline-item auth d-none d-sm-inline"> <img class="rounded" src="{foto}" class="sava"> {author}</li>
         <li class="list-inline-item"><i class="zmdi zmdi-calendar-check" style="font-size: 17px;color: #ac92ec8c;vertical-align: middle;"></i> {date=d.m.Y}</li>
         <li class="list-inline-item"><i class="zmdi zmdi-check-all" style="font-size: 17px;color: #4fc1e994;"></i> {views}</li>
         <li class="list-inline-item"><i class="zmdi zmdi-comment-outline" style="color: #F6BB42;"></i> {comments-num}</li>
          <li class="list-inline-item float-right mr-1">
            [rating]
            [rating-type-2]
            <a href="#" onclick="doRate('plus', '{news-id}'); return false;">
            <button class="p-0 pl-1 pr-1 btn btn-sm btn-light" aria-pressed="true">
            {rating}
            <i class="fa fa-heart-o text-danger" style="font-weight: bold;"></i>
            </button>
            </a>
            [/rating-type-2]
            [/rating]
         </li>
      </ul>
   </div>
</div>
