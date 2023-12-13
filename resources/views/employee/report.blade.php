@include('layout.header')
@include('layout.navbar')


<div class="container py-2 my-5" style="width: auto">
    <form action="/report" method="get">
        <div class="row">
            <div class="col">
                <input type="month" name="month" id=""  value="{{ $Month }}">
            </div>
            <div class="col">
                <button class="btn" type="submit">submit</button>
            </div>
        </form>
    </div>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>No</th>
                <th>ID Report</th>
                <th>Nama</th>
                <th>Jabatan</th>
                <th>Hari Kerja</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($Reports as $report)
                <tr>
                    <th>{{ $loop->iteration }}</th>
                    <th> {{ $report->report_id }} </th>
                    <th> {{ $report->name }} </th>
                    <th> {{ $report->title_id }} </th>
                    <th> {{ $report->total_working_day }} hari </th>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>


@include('layout.footer')