<div class="card bg-light border border-secondary mt-3 shadow-none" style="border-width:2px!important;">
   <div class="card-body p-0">
      <div class="row m-0">
         <div class="col-md-5 p-3">
            <div class="vote_list">
               {list}
            </div>
            [not-voted]
            <div class="row mt-3">
               <div class="col-md-6">
                  <button type="submit" class="btn-block btn btn-sm btn-outline-info btn-block" style="border-width:1px!important;" title="Голосовать" onclick="doPoll('vote', '{news-id}'); return false;">Голосовать</button>
               </div>
               <div class="col-md-6">
                  <button type="button" class="btn-block btn btn-sm btn-secondary" title="Результаты" onclick="doPoll('results', '{news-id}'); return false;">Результаты</button>
               </div>
            </div>
            [/not-voted]
         </div>
         <div class="col-md-7 p-3 text-center">
            <h5 class="card-title mt-4">{QUESTION}</h5>
            <hr class="hr1">
            <p>{title}</p>
            [voted]
            <div class="text-muted f90">
               Всего {votes} [declination={votes}]голос|а|ов[/declination]
            </div>
            [/voted]
         </div>
      </div>
   </div>
</div>