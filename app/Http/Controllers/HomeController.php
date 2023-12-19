<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\User;
use App\Course;
use Illuminate\Support\Carbon;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $data = Course::all();
        return view('home', compact('data'));
    }
    public function userSetting()
    {
        $user_data = Auth::user()->get();
        return view('user',compact('user_data'));
    }
    function course()
    {
        $data=Course::all();
        return view('course',compact('data'));
    }
    public function addCourse(Request $request)
    {
        Course::insert([
            'user_id' => Auth::id(),
            'course_name' => $request->course_name,
            'student_email' => $request->student_email,
            'created_at' => Carbon::now()
        ]);
        return redirect('course');
    }
}
