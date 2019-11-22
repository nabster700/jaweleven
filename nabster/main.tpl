<!DOCTYPE html>
<html>

<head>
  {headers}
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="{THEME}/images/favicon.ico">
  <link rel="apple-touch-icon" href="{THEME}/images/touch-icon-iphone.png">
  <link rel="apple-touch-icon" sizes="76x76" href="{THEME}/images/touch-icon-ipad.png">
  <link rel="apple-touch-icon" sizes="120x120" href="{THEME}/images/touch-icon-iphone-retina.png">
  <link rel="apple-touch-icon" sizes="152x152" href="{THEME}/images/touch-icon-ipad-retina.png">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
  <link href="{THEME}/css/ssg.css" type="text/css" rel="stylesheet">
  <link href="{THEME}/css/bootstrap.css" type="text/css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
  <link rel="stylesheet" href="{THEME}/css/animate.css">
  <link rel="stylesheet" href="{THEME}/css/magnific-popup.css">
  <link rel="stylesheet" href="{THEME}/css/owl.carousel.css">
  <link rel="stylesheet" href="{THEME}/css/owl.theme.css">
  <link rel="stylesheet" href="{THEME}/css/bbcode.css">
</head>
<script>
  $(document).ready(function() {
    $submenu = $('.child-menu-ul');
    $('.child-menu .toggle-right').on('click', function(e) {
      e.preventDefault();
      $this = $(this);
      $parent = $this.parent().next();
      // $parent.addClass('active');
      $tar = $('.child-menu-ul');
      if (!$parent.hasClass('active')) {
        $tar.removeClass('active').slideUp('fast');
        $parent.addClass('active').slideDown('fast');
      } else {
        $parent.removeClass('active').slideUp('fast');
      }
    });
  });
</script>

<body>
  <div class="container tb">
    {include file="modules/menu.tpl"}
    <div class="wrap">
      <div class="row">
        <div class="col-md-3 d-md-none">
          <div class="card w-100 mb-5">
            <div class="card-body">
              <form role="form" method="get" action=''>
                <div class="input-group">
                  <input id="story" name="story" class="form-control" type="search" placeholder="Поиск по сайту.." aria-label="Поиск..">
                  <input type="hidden" name="do" value="search">
                  <input type="hidden" name="subaction" value="search">
                  <div class="input-group-append">
                    <button class="btn btn-secondary" type="submit">
                      <i class="fa fa-search"></i>
                    </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <div id="jquery-accordion-menu" class="jquery-accordion-menu mb-5">
            {catmenu}
          </div>
        </div>
        <div class="col-md-9">
          [available=main]
          <div class="row">
            <div class="col-md-6 d-none d-md-block">
              <div class="card mb-4">
                <div class="card-body">
                  [sort]
                  <div class="dropdown w-100">
                    <button class="btn btn-block btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fa fa-sort mr-2" aria-hidden="true"></i> Сортировать по:
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      {sort}
                    </div>
                  </div>
                  [/sort]
                </div>
              </div>
            </div>

            <div class="col-md-6 d-none d-md-block">
              <div class="card mb-4">
                <div class="card-body">
                  <div class="dropdown w-100">
                    <button class="btn btn-block btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fa fa-info-circle" aria-hidden="true"></i> По информации:
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="/xfsearch/Выполнено/">Выполнено</a>
                      <a class="dropdown-item" href="/xfsearch/Важное/">Важное</a>
                      <a class="dropdown-item" href="/xfsearch/Предупреждение/">Предупреждение</a>
                      <a class="dropdown-item" href="/xfsearch/Внимание/">Внимание</a>
                      <a class="dropdown-item" href="/xfsearch/Информация/">Информация</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          [/available] {info}{content}
        </div>
        <div class="col-md-3">
          {include file="modules/sidebar.tpl"}
        </div>
      </div>
    </div>
    <div class="footer">
      <div class="row f90">
        <span class="f90">
               © NABSTERS.RU 2018-2019. все права защищены.
               </span>
      </div>
    </div>
  </div>
  {AJAX}
  <script src="{THEME}/js/lib.js"></script>
  <script src="{THEME}/js/owl.carousel.min.js"></script>
  <script src="{THEME}/js/jquery.magnific-popup.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/frappe-charts@1.1.0/dist/frappe-charts.min.iife.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script type="text/javascript" src="{THEME}/js/bootstrap.js"></script>
</body>
[group=5]
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
    <div class="modal-content rounded">
      <div class="modal-body p-0">
        {login}
      </div>
    </div>
  </div>
</div>
[/group]

</html>
