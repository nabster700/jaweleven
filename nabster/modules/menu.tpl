<nav class="navbar navbar-expand-lg navbar-light sticky-top mr-0" id="nst">
    	<a class="navbar-brand text-uppercase" href="/">
            NABSTERS<small class="text-info">.RU</small>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
       	<ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="/index.php?do=users">Пользователи</a></li>
            <li class="nav-item"><a class="nav-link" href="/index.php?do=feedback">Контакты</a></li>
            <li class="nav-item"><a class="nav-link" href="/statistics.html">Статистика</a></li>
            <li class="nav-item"><a class="nav-link" href="/index.php?do=rules">Правила</a></li>
        </ul>
        <ul class="navbar-nav ml-auto">
            [not-group=5]
            {login}
            [/not-group]
            [group=5]
            <li class="nav-item active">
                <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="modal" data-target="#exampleModalCenter">
                    Вход / Регистрация
                </a>
            </li>
            [/group]
        </ul>
    </div>
</nav>
