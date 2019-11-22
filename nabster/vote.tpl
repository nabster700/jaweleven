<div class="card mb-5">
   <h6 class="card-header">{title}</h6>
   [votelist]
   <form method="post" name="vote">
   [/votelist]
   <ul class="list-group list-group-flush list-group-item list-group-item-action f90 text-muted">
      {list}
   </ul>
   [voteresult]
   <div class="card-footer">Проголосовало: {votes}</div>
   [/voteresult]
   [votelist]
   <div class="card-footer">
      <input type="hidden" name="vote_action" value="vote">
      <input type="hidden" name="vote_id" id="vote_id" value="{vote_id}">
      <div class="row">
         <div class="w-100 text-center">
            <button title="Голос" class="btn btn-secondary btn-sm text-muted" type="submit" onclick="doVote('vote'); return false;" >Голос</button>
            <button title="Результаты опроса" class="btn btn-secondary btn-sm text-muted" type="button" onclick="doVote('results'); return false;" >Результаты</button>
         </div>
      </div>
   </div>
   [/votelist]
</div>