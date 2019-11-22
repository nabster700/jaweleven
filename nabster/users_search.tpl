<div class="card mb-5 w-100" >
   <div class="card-body">
      <form method="get" action='' class="w-100">
         <div class="row">
            <div class="col-md-4">
               <input type="text" name="login" class="form-control "  value="{login}" placeholder="Введите логин пользователя" aria-describedby="sizing-addon2">
               <input type="hidden" name="do" value="users" />
            </div>
            <div class="col-md-3">
               <select class="form-control" name="order">
                  <option value="">Сортировать по</option>
                  {order}
               </select>
            </div>
            <div class="col-md-3">
               <select class="form-control" name="usergroups">
                  <option value="">Группа</option>
                  {usergroups}
               </select>
            </div>
            <div class="col-md-2">
               <button type="submit" class="btn btn-outline-info btn-block" style="border-width:1px;">
               Найти
               </button>
            </div>
         </div>
      </form>
   </div>
   <div class="card-footer" style="font-size: 90%;">
      <ul class="list-inline" style="margin: 0px;">
         <li class="list-inline-item">
            {numbers}
         </li>
         <li class="list-inline-item">
            Новичок на сайте: {include file="engine/modules/reg.php?limit=1"}
         </li>
      </ul>
   </div>
</div>