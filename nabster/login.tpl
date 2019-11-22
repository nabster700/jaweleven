[not-group=5]
<li class="nav-item dropdown active m-1">
   <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   <img src="{foto}" class="profoto mr-1 rounded"> {login} <i class="fa fa-angle-down" aria-hidden="true"></i>
   </a>
   <div class="dropdown-menu dropdown-menu-right p-0" aria-labelledby="navbarDropdown" id="dwth">
      <div class="row m-0" style="padding: 5px;">
         <div class="col-md-6 text-center p-1">
            <a href="{addnews-link}" class="lcard">
               <i class="fa fa-magic mb-2 text-primary d-none d-sm-inline" aria-hidden="true" style="font-size: 24px;"></i>
               <h5 class="m-0 f90">Добавить</h5>
               <small class="text-muted text-truncate">Публикация материала</small>
            </a>
         </div>
         <div class="col-md-6 text-center p-1">
            <a href="{profile-link}" class="lcard">
               <i class="fa fa-user-o mb-2 text-primary d-none d-sm-inline" aria-hidden="true" style="font-size: 24px;"></i>
               <h5 class="m-0 f90">Профиль</h5>
               <small class="text-muted text-truncate">Моя страница</small>
            </a>
         </div>
         <div class="col-md-6 text-center p-1">
            <a href="{pm-link}" class="lcard">
               <i class="fa fa-envelope-o mb-2 text-primary d-none d-sm-inline" aria-hidden="true" style="font-size: 24px;"></i>
               <h5 class="m-0 f90">Сообщения <sup class="text-danger">{new-pm}</sup></h5>
               <small class="text-muted text-truncate"> Всего: {all-pm}</small>
            </a>
         </div>
         <div class="col-md-6 text-center p-1">
            <a href="{favorites-link}" class="lcard">
               <i class="fa fa-star-o mb-2 text-primary d-none d-sm-inline" aria-hidden="true" style="font-size: 24px;"></i>
               <h5 class="m-0 f90">Закладки</h5>
               <small class="text-muted text-truncate">Сохраненное: {favorite-count}</small>
            </a>
         </div>
         [admin-link]
         <div class="col-12 text-center p-1">
            <a href="{admin-link}" target="_blink" class="lcard">
               <h5 class=" m-0 f90">Админ.панель</h5>
               <small class="text-muted text-truncate">Управление сайтом</small>
            </a>
         </div>
         [/admin-link]
         <div class="col-12 text-center p-1">
            <a href="{logout-link}" class="lcard">
               <h5 class="text-muted m-0 f90">Выход</h5>
               <small class="text-muted text-truncate">Деавторизация</small>
            </a>
         </div>
      </div>
   </div>
</li>
[/not-group]
[group=5]
<div class="row m-0">
<div class="col-md-12 p-3">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
     <span aria-hidden="true">×</span>
     </button>
      <h5 class="card-title text-center">Авторизация</h5>
      <hr>
       <div class="row mb-2">
         <div class="col-md-6 px-2">
            <a class="btn btn-dark w-100 mb-2 text-left px-2" href="{google_url}" role="button"><i class="fa fa-google pr-2" style="color: #1da1f2;"></i> google</a>
         </div>
         <div class="col-md-6 px-2">
            <a class="btn btn-dark w-100 mb-2 text-left px-2" href="{vk_url}" role="button"><i class="fa fa-vk pr-2" style="color: #4a76a8;"></i> ВКонтакте</a>
         </div>
      </div>
      <form class="px-4 py-3" role="form" method="post" action="">
         <div class="form-group">
            <input class="form-control" style="width: 100%;" type="text" id="inputEmail" name="login_name" placeholder="Логин" />
         </div>
         <div class="form-group">
            <input class="form-control" style="width: 100%;" type="password" id="inputPassword" name="login_password" placeholder="Пароль" />
         </div>
         <div class="custom-control custom-switch mb-4">
            <input type="checkbox" value="1" name="login_not_save" class="custom-control-input" id="customSwitch1">
            <label class="custom-control-label" for="customSwitch1">Не запоминать данные</label>
         </div>
         <button type="submit" class="btn btn-primary btn-block mb-2"> Войти</button>
         <input class="form-control" name="login" type="hidden" id="login" value="submit" />
      </form>
      <a class="btn btn-secondary btn-block mb-2" href="{lostpassword-link}">Я забыл свой пароль</a>
      <a class="btn btn-secondary btn-block mb-2" href="{registration-link}">Регистрация</a>
   </div>
</div>
[/group]
