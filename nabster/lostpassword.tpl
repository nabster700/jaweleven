<div class="card mb-3">
   <div class="card-body">
      <h5 class="card-title">Восстановление пароля</h5>
      <div class="form-group mb-3">
         <label for="lostname">Логин или E-mail</label>
         <input type="text" name="lostname" id="question_answer" class="form-control" required>
      </div>
      [recaptcha]
      <div>{recaptcha}</div>
      [/recaptcha]
      [sec_code]
      <div class="c-capcha mb-3">
         {code}
         <input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" class="form-control" required>
      </div>
      [/sec_code]
      <button class="btn btn-primary" name="submit" type="submit">Восстановить</button>
   </div>
</div>