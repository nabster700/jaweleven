<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<div class="card mb-5">
   <div class="card-header text-center f90">
      Гистограмма. Соотношение основных показателей активности
   </div>
   <div class="card-body">
      <canvas id="bar-chart-grouped" height="300" style="width: 100%;"></canvas>
   </div>
   [group=1]
   <div class="card-footer text-muted f90">
      Общий размер базы данных: {datenbank}
   </div>
   [/group]
</div>
<div class="row row-flex row-flex-wrap my">
   <div class="col-md-6">
      <div class="card w-100 mb-5">
         <div class="card-header text-center f90">
            Общая статистика
         </div>
         <div class="card-body">
            <canvas id="doughnut-chart" height="300" style="width:100%;"></canvas>
         </div>
         <div class="card-footer">
            <div class="progress" style="height: 4px;">
               <div class="progress-bar" role="progressbar" style="width: {news_num}%;background: #967adc!important;" aria-valuenow="{news_num}" aria-valuemin="0"></div>
               <div class="progress-bar bg-danger" role="progressbar" style="width: {comm_num}%;background: #a0d468!important;" aria-valuenow="{comm_num}" aria-valuemin="0"></div>
               <div class="progress-bar bg-success" role="progressbar" style="width: {user_num}%;background: #656d78!important;" aria-valuenow="{user_num}" aria-valuemin="0"></div>
            </div>
         </div>
      </div>
   </div>
   <div class="col-md-6">
      <div class="card w-100 mb-5">
         <div class="card-body">
            <ul class="list-unstyled sta mb-5">
               <li><i class="fa fa-square-o text-primary mr-2" aria-hidden="true"></i> Опубликовано <span class="float-right">{news_allow}</span></li>
               <li><i class="fa fa-square-o text-success mr-2" aria-hidden="true"></i> Опубликовано на главной <span class="float-right">{news_main}</span></li>
               <li><i class="fa fa-square-o text-warning mr-2" aria-hidden="true"></i> Публикаций на модерации <span class="float-right">{news_moder}</span></li>
            </ul>
            <ul class="list-unstyled sta mb-5">
               <li><i class="fa fa-square-o text-danger mr-2" aria-hidden="true"></i> Комментарии <span class="float-right">{comm_num}</span></li>
            </ul>
            <ul class="list-unstyled sta ">
               <li><i class="fa fa-square-o text-info mr-2" aria-hidden="true"></i> Пользователи <span class="float-right">{user_num}</span></li>
               <li><i class="fa fa-square-o text-secondary mr-2" aria-hidden="true"></i> Забанено пользователей <span class="float-right">{user_banned}</span></li>
               <li><i class="fa fa-square-o mr-2" style="color:#37BC9B;" aria-hidden="true"></i> Новичок на сайте <span class="float-right" style="">{include file="engine/modules/reg.php?limit=1"}</span></li>
            </ul>
         </div>
         <div class="card-footer">
            <div class="btn-group w-100">
               <a href="/index.php?do=users" class="btn btn-secondary w-50">Все пользователи</a>
               <a href="/index.php?do=lastcomments" class="btn btn-secondary w-50">Комментарии</a>
            </div>
         </div>
      </div>
   </div>
</div>
<script>
   new Chart(document.getElementById("bar-chart-grouped"), {
       type: 'bar',
       data: {
         labels: ["Публикации", "Комментарии", "Пользователи"],
         datasets: [
           {
             label: "За день",
             backgroundColor: "rgba(100, 108, 154, 0.3)",
               borderColor: "#646c9a",
               borderWidth: 1.5,
             data: [{news_day},{comm_day},{user_day}]
           },
           {
             label: "За неделю",
             backgroundColor: "rgba(140, 193, 82, 0.3)",
             borderColor: "#8CC152",
             borderWidth: 1.5,
             data: [{news_week},{comm_week},{user_week}]
           }, {
             label: "За месяц",
             backgroundColor: "rgba(218, 68, 83, 0.3)",
             borderColor: "#DA4453",
             borderWidth: 1.5,
             data: [{news_month},{comm_month},{user_month}]
           }
         ],
       },
       options: {
         title: {
           display: false,
           text: 'Соотношение основных показателей за неделю'
         }
       }
   });
   
   
   new Chart(document.getElementById("doughnut-chart"), {
       type: 'doughnut',
       data: {
         labels: ["Новости", "Комментарии", "Пользователи"],
         datasets: [
           {
             label: "Статистика сайта",
             backgroundColor: [ "rgba(150, 122, 220, 0.3)", "rgba(160, 212, 104, 0.3)", "rgba(101, 109, 120, 0.3)" ],
             borderColor: [ '#967ADC', '#A0D468', '#656D78' ],
             borderWidth: 1.5,
             data: [ {news_num}, {comm_num}, {user_num} ],
           }
         ]
       },
       options: {
         legend: {
                  display: true,
                  position: "right",
         labels:{
                 boxWidth:10
             }
               },
         title: {
           display: false
         }
       }
   });
   
   
   new Chart(document.getElementById("radar-chart"), {
       type: 'radar',
       data: {
         labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
         datasets: [
           {
             label: "1950",
             fill: true,
             backgroundColor: "rgba(179,181,198,0.2)",
             borderColor: "rgba(179,181,198,1)",
             pointBorderColor: "#fff",
             pointBackgroundColor: "rgba(179,181,198,1)",
             data: [8.77,55.61,21.69,6.62,6.82]
           }, {
             label: "2050",
             fill: true,
             backgroundColor: "rgba(255,99,132,0.2)",
             borderColor: "rgba(255,99,132,1)",
             pointBorderColor: "#fff",
             pointBackgroundColor: "rgba(255,99,132,1)",
             pointBorderColor: "#fff",
             data: [25.48,54.16,7.61,8.06,4.45]
           }
         ]
       },
       options: {
         title: {
           display: true,
           text: 'Distribution in % of world population'
         }
       }
   });
</script>