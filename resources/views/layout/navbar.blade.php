<nav class="navbar navbar-expand-lg navbar-light bg-light mx-lg-5">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"> {{$ActiveUser}} </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/">Abesensi</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/report">Report</a>
          </li>
        </ul>
        <ul class="d-flex navbar-nav me-lg-2">    
            <li class="nav-item dropdown">
                <i class="fa-regular fa-user nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                </i>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li>
                    <a class="dropdown-item" href="#">Action</a>
                </li >
                <li class="nav-item dropdown mx-1">
                    <form action="/logout" method="post">
                        @csrf
                        <button class="btn" >
                            <span class="">
                                Logout
                            <i class=" fa fa-sign-out fa-2xs"></i></span>
                            </span>
                        </button>
                    </form>
                </li>
                </ul>
              </li>
        </ul>
      </div>
    </div>
  </nav>