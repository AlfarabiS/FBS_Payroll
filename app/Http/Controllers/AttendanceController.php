<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Attendance;
use App\Models\Employee;
use App\Models\Report;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;


class AttendanceController extends Controller
{
    
    public function in(){
        $date = today();
        $attendance_id = Auth::user()->employee_id . '-' . $date->year. '-' . $date->month . '-' . $date->day ;
        $employee_id = Auth::user()->employee_id;
        $report_id = Auth::user()->employee_id. '-' . $date->year. '-' . $date->month;
        if (!(
            Report::where('report_id',$report_id)
                        ->get('total_working_day')
                        ->first()
            )) {
            $working_days = 0;
        } else {
            $current_working_days = Report::where('report_id',$report_id)
            ->first('total_working_day');
            $working_days = $current_working_days->total_working_day;
        }
        
        var_dump($working_days);

        Attendance::Create([
            'attendance_id' => $attendance_id,
            'employee_id' => $employee_id,
            'start_time' => now(),
            'end_time' => null,
        ]);

        Report::UpdateOrCreate([
            'report_id' => $report_id
        ],[
            'employee_id' => $employee_id,
            'date' => $date,
            'total_working_day' => $working_days + 1
        ]);


        Session::push('absen',$attendance_id);


        return redirect('/');
    }

    public function out(){
        $attendance_id = Session::get('absen');
        var_dump($attendance_id);

        Attendance::where('attendance_id', $attendance_id)
        ->update([
            'end_time' => now(),
        ]);

        Session::pull('absen');
        return redirect('/');

    }
}
