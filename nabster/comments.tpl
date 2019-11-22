<div style="font-size: 14px;" class="cd-timeline-block mb-3">
   <div class="cd-timeline-img cd-picture rounded" [online] style="border-color:#8CC152!important;" [/online] [online]data-toggle="tooltip" data-placement="top" title="В сети"[/online]>
   [profile]<img class="rounded" src="{foto}" alt="{login}">[/profile]
</div>
<div class="cd-timeline-content p-2">
   <div class="com-head">
      <div class="comm-title text-truncate">{author} [commentsgroup=5]<span> <i class="fa fa-circle" style="font-size: 3px;vertical-align: middle;" aria-hidden="true"></i> Гость</span>[/commentsgroup] <span><i class="fa fa-circle" style="font-size: 3px;vertical-align: middle;" aria-hidden="true"></i> {date}</span></div>
   </div>
   <div class="com-body">
      <p class="m-0">{comment}</p>
      [signature]
      <hr />
      <div class="text-muted">{signature}</div>
      [/signature]
      <div style="padding: 1px 4px 1px 4px;" class="btn-group float-right" role="group">
         [rating]
         [rating-type-2]
         [rating-plus]
         <button class="p-0 pl-1 pr-1 btn btn-sm btn-light" aria-pressed="true">
         {rating}
         <i class="fa fa-heart-o text-danger" style="font-weight: bold;"></i>
         </button>
         [/rating-plus]
         [/rating-type-2]
         [/rating]
         <div class="btn-group ml-1 mr-1" role="group">
            <button id="btnGroupDrop1" type="button" class="p-0 pl-2 pr-2 btn btn-sm btn-light lik" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="icon-options" aria-hidden="true"></i>
            </button>
            <div class="dropdown-menu f90" aria-labelledby="btnGroupDrop1">
               [fast]<button class="dropdown-item" type="button">Цитировать</button>[/fast]
               [com-edit]<button class="dropdown-item" type="button">Изменить</button>[/com-edit]
               [com-del]<button class="dropdown-item" type="button">Удалить</button>[/com-del]
               [complaint]<button class="dropdown-item" type="button">Жалоба</button>[/complaint]
            </div>
         </div>
         [reply]
         <button class="p-0 pl-2 pr-2 btn btn-sm btn-light" aria-pressed="true">
         <i class="icon-action-undo" aria-hidden="true"></i>
         </button>
         [/reply]
      </div>
   </div>
</div>
</div>
