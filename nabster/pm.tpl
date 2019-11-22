<div class="card mb-3">
   <div class="card-body">
      <h5 class="card-title">Личные сообщения</h5>
      <div class="row">
         <div class="col-md-7">
            <ul class="list-inline ">
               <li class="list-inline-item">[inbox]<button type="button" class="btn btn-sm btn-secondary">Входящие</button>[/inbox]</li>
               <li class="list-inline-item">[outbox]<button type="button" class="btn btn-sm btn-secondary">Отправленные</button>[/outbox]</li>
               <li class="list-inline-item">[new_pm]<button type="button" class="btn btn-sm btn-secondary">Создать сообщение</button>[/new_pm]</li>
            </ul>
         </div>
         <div class="col-md-5">
            <ul class="list-unstyled m-0">
               <li>Ящик заполнен на <b>{proc-pm-limit}%</b>  <small>({pm-limit} сообщений)</small></li>
               <li>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" style="width: {proc-pm-limit}%;" aria-valuenow="{proc-pm-limit}" aria-valuemin="0" aria-valuemax="100">{proc-pm-limit}%</div>
                  </div>
               </li>
            </ul>
         </div>
      </div>
      [pmlist]
      <hr/>
      <div class="pmlist">
         {pmlist}
      </div>
      [/pmlist]
      [newpm]
      <hr/>
      <h4>Создать сообщение</h4>
      <div class="form-group mb-3">
         <input placeholder="Имя адресата" type="text" name="name" value="{author}" class="form-control" required>
      </div>
      <div class="form-group mb-3">
         <input placeholder="Тема сообщения" type="text" name="subj" value="{subj}" class="form-control" required>
      </div>
      {editor}
      <input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" /> <label for="outboxcopy">Сохранить сообщение в папке "Отправленные"</label>
      [recaptcha]
      <div class="mb-3">{recaptcha}</div>
      [/recaptcha]
      [question]
      <div class="form-group mb-3">
         <label for="question_answer">Вопрос: {question}</label>
         <input placeholder="Ответ" type="text" name="question_answer" id="question_answer" class="form-control" required>
      </div>
      [/question]
      [sec_code]
      <div class="c-capcha mb-3">
         {sec_code}
         <input placeholder="Повторите код" title="Введите код указанный на картинке" class="form-control" type="text" name="sec_code" id="sec_code" required>
      </div>
      [/sec_code]<br>
      <button class="btn btn-primary" type="submit" name="add">Отправить</button>
      <button class="btn btn-secondary" type="button" onclick="dlePMPreview()">Предпросмотр</button>
      [/newpm]
      [readpm]
      <hr/>
      <div class="card bg-light">
         <div class="card-header">
            <div class="dropdown">
               <button class="btn btn-sm btn-light dropdown-toggle float-right" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <i class="fa fa-ellipsis-h text-muted"></i>
               </button>
               <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
                  [reply]<button class="dropdown-item" type="button">Ответить</button>[/reply]
                  [ignore]<button class="dropdown-item" type="button">Игнорировать</button>[/ignore]
                  [complaint]<button class="dropdown-item" type="button">Жалоба</button>[/complaint]
                  [del]<button class="dropdown-item" type="button">Удалить</button>[/del]
               </div>
            </div>
            <ul class="list-inline m-0">
               <li class="list-inline-item auth"><img class="commfoto rounded" src="{foto}"></li>
               <li class="list-inline-item auth" [online] id="online" [/online]>{author}</li>
               <li class="list-inline-item">{date}</li>
            </ul>
         </div>
         <div class="card-body">
            <h5 class="card-title">{subj}</h5>
            <p class="card-text">{text}</p>
            [signature]
            <hr />
            <div class="text-muted">{signature}</div>
            [/signature]
         </div>
      </div>
      [/readpm]
   </div>
</div>
