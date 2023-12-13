@include('layout.header')
@include('layout.navbar')


<div class="container py-2 my-5 bg-success " style="width: 25rem">
    <div class="row justify-content-evenly mb-2">
        <div class="col-10">
            <h1 id="time"></h1>
        </div>
    </div>

    <div class="row justify-content-evenly my-1">
        @if (!Session::has('absen'))
        <div class="col-5">
            <form action="/attendance/in" method="post">
                @csrf
                <button class="btn btn-danger rounded-pill" type="submit" >
                    <span>Absen Datang</span>
                </button>
            </form>
        </div>  
        @else        
        <div class="col-5">
            <form action="/attendance/out" method="post">
                @csrf
                <button class="btn btn-danger rounded-pill" type="submit">
                    <span>Absen Keluar</span>
                </button>
            </form>
        </div>
        @endif
    </div>
</div>

<script type="text/javascript">

    var today = new Date();
    var waktu = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    //document.getElementById("time-start").value = testingan; 

    var timeDisplay = document.getElementById("time");
 

    function refreshTime() {
        var dateString = new Date().toLocaleString("id-ID");
        var formattedString = dateString.replace(/\//g, "-");
        var formattedString = formattedString.replace(".", ":");
        var formattedString = formattedString.replace(".", ":");
        timeDisplay.innerHTML = formattedString;

    }

    setInterval(refreshTime,1000);
</script>  

@include('layout.footer')