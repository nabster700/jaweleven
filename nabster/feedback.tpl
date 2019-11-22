<div class="card mb-5 authbg">
   <div class="card-body text-center">
      <h4 class="card-title">Обратная связь</h4>
      <p class="m-0">Старница обратной связи. Заполнив форму ниже, вы сможете обратиться к администрации проекта. <br> Задать вопрос. Либо, предложить свою идею по улучшению проекта</p>
   </div>
</div>
<div class="card mb-5">
   <div class="card-body ">
      <ul class="timeline">
         [not-logged]
         <li>
            <span>Вы неавторизованный пользователь. <br><span class="f90 text-muted">Для того чтобы мы понимали кто прислал нам сообщение, вам необходимо ввести логин и электронный адрес.</span></span>
            <div class="row mb-3 mt-3">
               <div class="col-md-6">
                  <input placeholder="Ваше имя" type="text" maxlength="35" name="name" id="name" class="form-control" required>
               </div>
               <div class="col-md-6">
                  <input placeholder="Ваш E-mail" type="email" maxlength="35" name="email" id="email" class="form-control" required>
               </div>
            </div>
         </li>
         [/not-logged]
         <li style="display:none;">
            <label class="w-100">
            <span>Получатель </span> {recipient}
            </label>
         </li>
         <li>
            <div class="form-group mb-3">
               <span>Заголовок </span>
               <input placeholder="Тема сообщения" type="text" maxlength="45" name="subject" id="subject" class="form-control" required>
            </div>
         </li>
         <li>
            <div class="form-group mb-3">
               <span>Содержание</span>
               <textarea placeholder="Сообщение" name="message" id="message" rows="8" class="form-control" required></textarea>
            </div>
         </li>
		 [attachments]
         <li>
			<div class="form-group mb-3">
				<span>Прикрепить файлы:</span>
				<input name="attachments[]" type="file" multiple>
			</div>
         </li>
		 [/attachments]
         [recaptcha]
         <li>
            <span>Подтверждаем личность</span>
            <div>{recaptcha}</div>
         </li>
         [/recaptcha]
        [question]
          <li>
            <span>{question}</span>
            <input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="form-control" required>
         </li>
        [/question]
      [sec_code]
      <li>
      <div class="c-capcha mb-3">
         {code}
         <input placeholder="Повторите код" title="Введите код указанный на картинке" class="form-control" type="text" name="sec_code" id="sec_code" required>
      </div>
      </li>
      [/sec_code]
         <li>
            <ul class="pl-3">
               <li>Запрещены сообщения оскорбительного характера</li>
               <li>Запрещён Спам, Оффтоп, сообщения не по теме</li>
               <li>Запрещена реклама сторонних ресурсов/проектов</li>
            </ul>
            <p>При заполнении формы, просьба! Введите электронный адрес(почту) верно. В противном случае ответ на сообщение невозможен.</p>
         </li>
      </ul>
      <button class="btn btn-primary" type="submit" name="send_btn">Отправить</button>
   </div>
</div>
   <div class="card mb-5 authbg">
     <div class="card-body text-center">
       <h4 class="card-title">Я в соц. сетях</h4>
       <p class="m-0">Мои профили в социальных сетях. Через которые вы также можете связаться со мной.</p>
     </div>
   </div>
   
   <div class="row row-flex row-flex-wrap">
     <div class="col-md-4">
       <div class="card mb-5 w-100">
         <div class="card-body socb">
           <center><i class="fa fa-vk isoc" aria-hidden="true" style="color:#4a76a8;"></i></center>
           <a href="https://vk.com/posvencuks" target="_blank" class="mb-3"> <img src="https://pp.userapi.com/c636629/v636629548/b506/25MtnhrYQrQ.jpg?ava=1" alt="vk"> nabster</a>
         </div>
       </div>
     </div>
     <div class="col-md-4">
       <div class="card mb-5 w-100">
         <div class="card-body soct">
           <center><i class="fa fa-telegram isoc" aria-hidden="true" style="color:#29a0da;"></i></center>
           <a href="https://t.me/nabster" target="_blank" class="mb-3"> набстер</a>
           <a href="https://t.me/ndpru_nabster" target="_blank" class="mb-3"> канал набстер</a>
         </div>
       </div>
     </div>
     <div class="col-md-4">
       <div class="card mb-5 w-100">
         <div class="card-body socb">
           <center><i class="fa fa-twitter isoc" aria-hidden="true" style="color:#4a76a8;"></i></center>
           <a href="https://twitter.com/nabster800" target="_blank" class="mb-3"> <img src="https://pp.userapi.com/c636629/v636629548/b506/25MtnhrYQrQ.jpg?ava=1" alt="vk"> nabster800</a>
         </div>
       </div>
     </div>
   </div>
