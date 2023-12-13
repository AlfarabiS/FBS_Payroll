<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\Employee;



class LoginController extends Controller
{
    public function __construct(){
    }
    
    public function index(){
        return view('/auth/login',[
            'title' => 'login',
            'ActiveUser' => 'Silahkan Login'
        ]);
    }

    public function authenticate(Request $request){
        $validated_request = $request->validate([
            'email'=>['required'],
            'password'=>['required']
        ]);

        if (Auth::attempt($validated_request)) {
            
            $request->session()->regenerate();
            
             return redirect()->intended('/');
        }

        // Auth::logoutOtherDevices();

        return back();        
    }

    public function logout(Request $request){
        
        Auth::logout();
 
        $request->session()->invalidate();
     
        $request->session()->regenerateToken();
     
        return redirect('/login');
    }

}
