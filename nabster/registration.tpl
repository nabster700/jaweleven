<div class="card mb-3">
   <div class="card-body">
      <h5 class="card-title">[registration]Регистрация[/registration][validation]Продолжение регистрации[/validation]</h5>
      <p class="card-text">
         [registration]
         Регистрация на нашем сайте позволит Вам быть его полноценным участником.
         Вы сможете добавлять новости на сайт, оставлять свои комментарии, просматривать скрытый текст и многое другое.<br>
         <br>В случае возникновения проблем с регистрацией, обратитесь к <a href="/index.php?do=feedback">администратору</a> сайта.
         [/registration]
         [validation]
         Ваш аккаунт был зарегистрирован на нашем сайте,
         однако информация о Вас является неполной, поэтому ОБЯЗАТЕЛЬНО заполните дополнительные поля в Вашем профиле.<br>
         [/validation]
      </p>
      <hr/>
      [registration]
      <div class="form-group mb-3">
         <label for="name">Логин</label>
         <div id="result-registration" style="font-size: 80%;"></div>
         <input type="text" name="name" class="form-control" id="name" required>
         <button class="btn btn-sm btn-outline-secondary float-right mt-1" title="Проверить" onclick="CheckLogin(); return false;">Проверить</button>
      </div>
      <div class="form-group mb-3">
         <label for="password1">Пароль</label>
         <input type="password" name="password1" id="password1" class="form-control" required>
      </div>
      <div class="form-group mb-3">
         <label for="password2">Повторите пароль</label>
         <input type="password" name="password2" id="password2" class="form-control" required>
      </div>
      <div class="form-group mb-3">
         <label for="email">E-mail</label>
         <input type="email" name="email" id="email" class="form-control" required>
      </div>
      [question]
      <div class="form-group mb-3">
         <label for="question_answer">{question}</label>
         <input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="form-control" required>
      </div>
      [/question]
      [recaptcha]
      <div class="mb-3">{recaptcha}</div>
      [/recaptcha]
      [/registration]
      [validation]
      <div class="form-group mb-3">
         <label for="fullname">Ваше имя</label>
         <input type="text" id="fullname" name="fullname" class="form-control">
      </div>
      <div class="form-group mb-3">
         <label for="land">Место жительства</label>
         <input type="text" id="land" name="land" class="form-control">
      </div>
      <div class="form-group mb-3">
         <label for="image">О себе</label>
         <textarea id="info" name="info" rows="5" class="form-control"></textarea>
      </div>
      <div class="form-group mb-3">
         <label for="image">Аватар</label>
         <input type="file" id="image" name="image" class="form-control">
      </div>
      <div class="form-group mb-3">
         <table class="xfields">
            {xfields}
         </table>
      </div>
      [/validation]
   </div>
</div>
<div class="form_submit">
   [registration]
   [sec_code]
   <div class="c-capcha">
      {reg_code}
      <input placeholder="Повторите код" class="form-control" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" required>
   </div>
   [/sec_code]
   [/registration]
   <button class="btn btn-success" name="submit" type="submit">Зарегистрироваться</button>
</div>