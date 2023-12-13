<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\AttendanceController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\APIController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', [EmployeeController::class, 'index'])->name('attendance')->middleware('auth');

Route::post('/attendance/in', [AttendanceController::class, 'in'])->name('attendance')->middleware('auth');
Route::post('/attendance/out', [AttendanceController::class, 'out'])->name('attendance')->middleware('auth');


Route::get('/report', [EmployeeController::class, 'report'])->middleware('auth');
Route::get('/reportjson', [EmployeeController::class, 'report_json'])->middleware('auth');


Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/api/attendance', [APIController::class, 'attendance']);


