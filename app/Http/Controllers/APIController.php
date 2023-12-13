<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Report;
use App\Models\User;
use App\Models\Attendance;


class APIController extends Controller
{
    public function __construct(){

    }

    public function report(){
        $report = Report::get();
    }
    public function user(){
        $user = User::get();
    }

    public function attendance(){
        $attendance = Attendance::all();

        return response()->Json($attendance);        
    }
}
