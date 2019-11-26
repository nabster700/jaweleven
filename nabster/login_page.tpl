		<script>
		  window.fbAsyncInit = function() {
 		   FB.init({
  		    appId      : '556822531129674',
     		 xfbml      : true,
   		   version    : 'v2.1'
		    });
 		 };

 		 (function(d, s, id){
  		   var js, fjs = d.getElementsByTagName(s)[0];
  		   if (d.getElementById(id)) {return;}
  		   js = d.createElement(s); js.id = id;
  		   js.src = "//connect.facebook.net/en_US/sdk.js";
   		  fjs.parentNode.insertBefore(js, fjs);
  		 }(document, 'script', 'facebook-jssdk'));
		</script>
<div class="card mb-3">
   <div class="card-body">
      <h5 class="card-title">Авторизация на сайте</h5>
      <p class="card-text">
Пользователи нашего сайта могут делать записи в блог, делиться и обмениваться опытом, а также комментировать существующие записи. Если Вы еще не зарегистрированы, то Вы можете пройти процесс регистрации самостоятельно или присоедениться к нам с помощью социальных сетей.
      </p>
      <hr/>
		<div class="card mb-3">
       <div class="row mb-2">
         <div class="col-md-12 px-2">
            <a class="btn btn-dark mb-2 px-2" href="{google_url}" role="button"><i class="fa fa-google pr-2" style="color: #1da1f2;"></i> google</a>
            <a class="btn btn-dark mb-2 px-2" href="{vk_url}" role="button"><i class="fa fa-vk pr-2" style="color: #4a76a8;"></i> ВКонтакте</a>
         </div>
      </div>
		</div>
      <div class="form-group mb-3">
         <label for="name">Логин*</label>
         <div id="result-registration" style="font-size: 80%;"></div>
         <input type="text" name="login_name" class="form-control" required>
      </div>
      <div class="form-group mb-3">
         <label for="password1">Пароль*</label>
         <input type="password" name="login_password" class="form-control" required>
      </div>
   </div>
</div>
<div class="form_submit">
   <button class="btn btn-success" name="send_btn" type="submit">Войти как пользователь</button>
</div>