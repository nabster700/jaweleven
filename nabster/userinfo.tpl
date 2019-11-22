<div class="card mb-2">
   <div class="card-body p-2">
    <div class="row">
       <div class="col-md-3">
            <a href="#">
              <div role="status" style="position: absolute;margin: 10px;">
                [online]<span class="badge badge badge-success">Онлайн</span>[/online]
         		[offline]<span class="badge badge badge-danger">Офлайн</span>[/offline]
              </div>
                <img src="{foto}{uniqid}" alt="{Usertitle}" class="rounded w-100">
            </a>
       </div>
         <div class="col-md-9 pl-md-0">
             [not-logged]<div class="float-right ml-3 mt-1"><a href="#" data-toggle="modal" data-target="#setting"><i class="icon-settings mr-2"></i></a></div>[/not-logged]
            <h5 class="card-title mt-1"><span class="text-muted mr-2">Логин:</span>{Usertitle}</h5>
            <p class="text-primary">@{fullname}[not-fullname]Без имени[/not-fullname]</p>
            [info]
            <div class="arrow_box f90 p-1" style="color: #898b96;">{info}</div>
            [/info]
         [signature]
         <div class="card-body pt-3 pl-0 pr-0 pb-0">
            <span class="text-muted mr-1"><i class="icon-pencil mr-1"></i>Моя подпись:</span> {signature}
         </div>
         [/signature]
         </div>
        </div>
      </div>
   </div> 

   <div class="card mb-2">
   <div class="card-body p-2">
    <div class="row">
       <div class="col-md-6">
       [not-group=5]{pm}[/not-group]
       [group=5]<a href="#" class="list-group-item list-group-item-action" data-toggle="modal" data-target="#pm123"><i class="icon-speech mr-2"></i>Написать ПС</a>[/group]
       </div>   
       <div class="col-md-6 pl-md-0">
       <a href="/index.php?do=lastcomments&userid={usrid}" class="list-group-item list-group-item-action"><i class="icon-bubbles mr-2"></i>[declination={comm-num}]Комментари|й|ев[/declination]: {comm-num}</a>
       </div> 
        </div>
      </div>
   </div> 
   <div class="card mb-2">
   <div class="card-body p-2">
    <div class="row">  
       <div class="col-md-6">
       <a href="/index.php?subaction=allnews&amp;user={usertitle}" class="list-group-item list-group-item-action"><i class="icon-book-open mr-2"></i>[declination={news-num}]Публикаци|я|й[/declination]: {news-num}</a>
       </div> 
       <div class="col-md-6 pl-md-0">
       <a href="#" class="list-group-item list-group-item-action"><i class="icon-star mr-2"></i>Рейтинг: {rate}</a>
       </div>   
        </div>
      </div>
   </div>

      <div class="modal fade" id="pm123" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Написать ПС</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
				<p>Для связи с человеком вам необходимо авторизоваться или пройти регистрацию на сайте !</p>
                  </div>
               </div>
            </div>
         </div>

      <div class="card mb-2">
         <div class="card-body p-2">
            <table class="table table-hover mb-0 f90 text-muted">
               <tbody>
                  <tr>
                     <td style="border:0px;"> Имя/Ник</td>
                     <td style="border:0px;">[fullname]{fullname}[/fullname][not-fullname]<i>Не указано</i>[/not-fullname]</td>
                  </tr>
                  <tr>
                     <td> Группа</td>
                     <td><b><span style="color:#FC6E51">{status}</span></b></td>
                  </tr>
                  <tr>
                     <td> Место жительства</td>
                     <td>[land]{land}[/land][not-land]<i>Не указано</i>[/not-land]</td>
                  </tr>
                  <tr>
                     <td> Дата регистрации</td>
                     <td>{registration}</td>
                  </tr>
                  <tr>
                     <td> Последняя активность</td>
                     <td>{lastdate}</td>
                  </tr>
               </tbody>
            </table>
         </div>
      </div>

      [not-logged]
      <div class="modal fade" id="setting" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content white-popup p-1">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Настройки профиля</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <div class="row">
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label for="fullname">Ваше имя</label>
                           <input type="text" name="fullname" id="fullname" value="{fullname}" class="form-control">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label for="email">Ваш E-mail</label>
                           <input type="email" name="email" id="email" value="{editmail}" class="form-control" required>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label for="land">Место проживания</label>
                           <input type="text" name="land" id="land" value="{land}" class="form-control">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label>Часовой пояс</label>
                           {timezones}
                        </div>
                     </div>
                  </div>
                  <br>
                  <div class="row">
                     <div class="col-md-12">
                        <div class="form-group mb-3">
                           <label for="altpass">Старый пароль</label>
                           <input type="password" name="altpass" id="altpass" class="form-control">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label for="password1">Новый пароль</label>
                           <input type="password" name="password1" id="password1" class="form-control">
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group mb-3">
                           <label for="password2">Повторите новый пароль</label>
                           <input type="password" name="password2" id="password2" class="form-control">
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <div class="form-group mb-3" style="background: #ebedf2;padding: 1rem;">
                           <label for="image">Загрузите аватар</label>
                           <input type="file" name="image" id="image" class="wide">
                           <div class="custom-control custom-switch mt-2">
                              <input type="checkbox" class="custom-control-input" name="del_foto" id="del_foto" value="yes">
                              <label class="custom-control-label" for="del_foto">Удалить аватар</label>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="form-group mb-3">
                           <label for="info">Использовать Gravatar</label>
								<input type="text" name="gravatar" id="gravatar" value="{gravatar}" class="wide">
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="form-group mb-3">
                           <label for="info">О себе</label>
                           <textarea name="info" id="info" rows="3" class="form-control">{editinfo}</textarea>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="form-group mb-3">
                           <label for="signature">Подпись</label>
                           <textarea name="signature" id="signature" rows="3" class="form-control">{editsignature}</textarea>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="form-group mb-3">
                           <label for="signature">Список игнорируемых пользователей:</label>
                           {ignore-list}
                        </div>
                     </div>
                     [group=1,2,3]
                     <div class="col-md-12">
                        <div class="form-group mb-3">
                           <label for="signature">Блокировка по IP:</label>
                           <textarea placeholder="Примеры: 192.48.25.71 or 129.42.*.*" name="allowed_ip" id="allowed_ip" rows="3" class="form-control">{allowed-ip}</textarea>
                        </div>
                     </div>
                     [/group]
                     <div class="col-md-12">
                        <table class="table table-bordered" style="width:100%">
                           {xfields}
                        </table>
                     </div>
                     <div class="col-md-12 f90">
                        <div>{news-subscribe}</div>
                        <div>{comments-reply-subscribe}</div>
                        <div>{unsubscribe}</div>
                     </div>
                  </div>
               </div>
               <div class="modal-footer">
                  <button class="btn btn-primary" name="submit" type="submit">Сохранить</button>
                  <input name="submit" type="hidden" id="submit" value="submit">
               </div>
            </div>
         </div>
      </div>
      [/not-logged]
