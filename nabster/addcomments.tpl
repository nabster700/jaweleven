<div class="cd-timeline-block">
   <div class="cd-timeline-img cd-picture rounded">
      <img class="rounded" src="{foto}" alt="{login}">
   </div>
   <div class="cd-timeline-content">
      <div class="com-head">
         <h2 class="comm-title text-truncate acom mb-3" style="font-weight:normal;"> Твой комментарий..</h2>
      </div>
      <div class="com-body">
         [not-logged]   
         <div class="mb-2">
            <input placeholder="Ваше имя" type="text" name="name" id="name" class="form-control" required>
         </div>
         [/not-logged]
         <div class="mb-2">{editor}</div>
         [recaptcha]
         <div class="float-right">{recaptcha}</div>
         [/recaptcha]
         [question]
         <label for="question_answer">{question}</label>
         <input placeholder="Ответ" type="text" name="question_answer" id="question_answer" class="form-control" required>
         [/question]<br>
      [sec_code]
      <div class="c-capcha mb-3">
         {sec_code}
         <input placeholder="Повторите код" title="Введите код указанный на картинке" class="form-control" type="text" name="sec_code" id="sec_code" required>
      </div>
      [/sec_code]<br>
         <div class="btn-group">
            <button type="submit" name="Готово" class="btn btn-primary btn-sm">Отправить</button>
         </div>
      </div>
   </div>
</div>
