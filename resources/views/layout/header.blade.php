<!-- start: Header -->
<nav class="navbar navbar-default header navbar-fixed-top">
    <div class="col-md-12 nav-wrapper">
        <div class="navbar-header" style="width:100%;">
            <!-- <div class="opener-left-menu is-open"> -->
            <div>
                <span class="top"></span>
                <span class="middle"></span>
                <span class="bottom"></span>
            </div>
            <a href="" class="navbar-brand"> 
                <b>REFERENCE</b>
            </a>

            <ul class="nav navbar-nav search-nav">
                <li>
                    <div class="search">
                        <span class="fa fa-search icon-search" style="font-size:23px;"></span>
                        <div class="form-group form-animate-text">
                            <input type="text" class="form-text" required>
                            <span class="bar"></span>
                            <label class="label-search">Type anywhere to <b>Search</b> </label>
                        </div>
                    </div>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right user-nav">
                <li class="user-name"><span>Super-Admin</span></li>
                <li class="dropdown avatar-dropdown">
                    <img src="miminium-master/asset/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                    <ul class="dropdown-menu user-dropdown">
                        <li><a href="#"><span class="fa fa-user"></span> My Profile</a></li>
                        <li role="separator" class="divider"></li>
                            <li class="more">
                                <ul>
                                    <li><a href=""><span class="fa fa-cogs"></span></a></li>
                                    <li><a href=""><span class="fa fa-lock"></span></a></li>
                                    <li><a href="{{ route('logout') }}"><span class="fa fa-power-off "></span></a></li>
                                </ul>
                            </li>
                    </ul>
                </li>  
                <li ><a href="#" class="opener-right-menu"><span class="fa fa-coffee"></span></a></li>
            </ul>
        </div>
    </div>
</nav>
      <!-- end: Header -->