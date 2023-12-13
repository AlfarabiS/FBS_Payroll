<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\Attendance;
use App\Models\Report;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;



class EmployeeController extends Controller
{
    public function index(){
        return view('/employee/attendance',[
            'ActiveUser' => Auth::user()->name
        ]);
    }

    public function report(Request $request){
        $month =  Str::after($request->month,'-');
        $year =  Str::before($request->month,'-');
        $employee_id = Auth::user()->employee_id;

        // var_dump($month);

        $report = Report::join('users','users.employee_id','=','reports.employee_id')
                    ->get();

        // var_dump($report->toArray());

        if (!$month) {
            $report = Report::join('users','users.employee_id','=','reports.employee_id')
                    ->where('users.employee_id',$employee_id)
            ->get();
        }else {
            $report = Report::join('users','users.employee_id','=','reports.employee_id')
                    ->where('users.employee_id',$employee_id)
                    ->whereMonth('reports.created_at',$month)
                    ->whereYear('reports.created_at',$year)->get();
        }

        return view('/employee/report',[
            'ActiveUser' => Auth::user()->name,
            'Month' => $request->month
        ])->with('Reports', $report);
    }
}
