<script src="{THEME}/js/bootstrap-select.js"></script>
<link rel="stylesheet" href="{THEME}/css/bootstrap-select.css">
<script src="{THEME}/js/theia-sticky-sidebar.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
     if( dle_group != 1 ) {
       $('#xfield_holder_panel').hide();}
       $('a[href^="#"], *[data-href^="#"]').on('click', function(e){
           e.preventDefault();
           var t = 600;
           var d = $(this).attr('data-href') ? $(this).attr('data-href') : $(this).attr('href');
           $('html,body').stop().animate({ scrollTop: $(d).offset().top-140 }, t);
       });
       $('.selectpicker').selectpicker();
       jQuery('#content, #sidebar').theiaStickySidebar({
         additionalMarginTop: 70,
         additionalMarginBottom: 30
       });
   });
</script>
<div class="addcard mb-5" id="main-content">
   <div class="addleft">
      <span id="sidebar">
         <ul class="list-group list-group-flush brb text-center" id="sidebar__inner">
            <button type="button" data-href="#zagol" class="list-group-item list-group-item-action f2 text-muted" data-toggle="tooltip" data-placement="left" title="Заголовок"><i class="icon-pin"></i></button>
            <button type="button" data-href="#kateg" class="list-group-item list-group-item-action f2 text-muted" data-toggle="tooltip" data-placement="left" title="Категория"><i class="icon-layers"></i></button>
            <button type="button" data-href="#krat" class="list-group-item list-group-item-action f2 text-muted" data-toggle="tooltip" data-placement="left" title="Краткое описание"><i class="icon-speech"></i></button>
            <button type="button" data-href="#poln" class="list-group-item list-group-item-action f2 text-muted" data-toggle="tooltip" data-placement="left" title="Полное описание"><i class="icon-book-open"></i></button>
            <button type="button" data-href="#opros" class="list-group-item list-group-item-action f2 text-muted" data-toggle="tooltip" data-placement="left" title="Опрос"><i class="icon-list"></i></button>
            <button type="button" data-href="#end" class="list-group-item list-group-item-action f2 text-muted" data-toggle="tooltip" data-placement="left" title="Публикация"><i class="icon-rocket"></i></button>
         </ul>
      </span>
   </div>
   <div class="addbody" id="content">
      <h5 class="card-title text-center mb-4">Форма Публикации</h5>
      <div class="form-group mb-5" id="zagol">
         <label for="title">Заголовок</label>
         <input type="text" name="title" value="{title}" class="form-control form-control-lg" id="title" required>
         <small id="emailHelp" class="form-text text-white">При заполнении, просьба ознакомиться с <a href="/index.php?do=rules">правилами</a> оформления публикации.</small>
      </div>
      <div class="form-group mb-5 w-100" id="kateg">
         <label for="category" class="w-100">Категория</label>
         {category}
         <small id="emailHelp" class="form-text text-white">К выбору доступнo 3 категория. Выберите наиболее подходящие из них. <br>Либо оставьте поле пустым, администрация определит категорию за вас.</small>
      </div>
      <div class="form-group mb-5">
         <label for="tags">Ключевые слова</label>
         <input type="text" name="tags" id="tags" value="{tags}" maxlength="150"  autocomplete="off" class="form-control">
         <small id="emailHelp" class="form-text text-white">Вводите ключевые слова через запятую. Они нужны для того чтобы ваша публикация была всегда на виду!</small>
      </div>
      <div class="form-group mb-5" id="krat">
         <label for="short_story">Краткое описание</label>
         [not-wysywyg]
         <div class="bb-editor">
            {bbcode}
            <textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="8" class="form-control" required>{short-story}</textarea>
         </div>
         [/not-wysywyg]
         {shortarea}
      </div>
      <div id="preview" class="fr-view">
      </div>
      <div class="form-group mb-5" id="poln">
         <label for="full_story">Полное описание</label>
         [not-wysywyg]
         <div class="bb-editor">
            {bbcode}
            <textarea name="full_story" id="full_story" onfocus="setFieldName(this.name)" rows="18" class="form-control" >{full-story}</textarea>
         </div>
         [/not-wysywyg]
         {fullarea}
      </div>
      <button id="opros" class="btn btn-secondary mb-3" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
      <i class="zmdi zmdi-sort-amount-desc text-muted" style="font-weight: bold;font-size: 16px;"></i> Добавить опрос
      </button>
      <div class="arrow_box mb-5 pt-2 pb-2 pr-3 pl-3">
         <p class="f90 m-0 text-muted">Вы можете прикрепить опрос к публикации. Для этого необходимо заполнить соответстсвующие поля ниже, кликнув по кнопке.</p>
         <div class="collapse" id="collapseExample">
            <div class="form-group mb-3 mt-5">
               <label for="vote_title">Заголовок опроса</label>
               <input type="text" name="vote_title" value="{votetitle}" class="form-control">
            </div>
            <div class="form-group mb-3">
               <label for="frage">Вопрос</label>
               <input type="text" name="frage" value="{frage}" class="form-control">
            </div>
            <div class="form-group">
               <label for="vote_body">Список ответов</label>
               <textarea name="vote_body" rows="5" class="form-control" placeholder="Каждая новая строка является новым вариантом ответа">{votebody}</textarea>
               <input type="checkbox" name="allow_m_vote" value="1" {allowmvote}> Разрешить выбор нескольких вариантов
            </div>
         </div>
      </div>
      <table class="table table-bordered" style="width:100%">
         {xfields}  
      </table>
      <div>{admintag}</div>
      [recaptcha]
      <div>{recaptcha}</div>
      [/recaptcha]
      [question]
      <div class="form-group mb-3">
         <label for="question_answer">{question}</label>
         <input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="form-control" required>
      </div>
      [/question]
      [sec_code]
      <div class="c-capcha mb-3">
         {sec_code}
         <input placeholder="Повторите код" title="Введите код указанный на картинке" class="form-control" type="text" name="sec_code" id="sec_code" required>
      </div>
      [/sec_code]
      <hr />
      <div id="end">
         <button class="btn btn-primary" type="submit" name="add">Отправить</button>
         <button id="add_news_preview" class="btn btn-outline-secondary" onclick="preview()" type="submit" name="nview">Предпросмотр</button>
      </div>
   </div>
</div>
