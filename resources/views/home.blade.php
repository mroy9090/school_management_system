@extends('layouts.mainFile')

@section('body')
<div class="container">
    <div class="row">
        <div class="col-8">
            <div class="card-box">
                <div class="card-header  bg-info text-dark">Course informations</div>
                    <div class="card-body text-dark">
                        @php
                            $course = App\Course::where('student_email', Auth::user()->email)->first();
                            $studentEmail = $course ? $course->student_email : null;
                        @endphp
                        @if (Auth::user()->role == 1)
                            @if (Auth::user()->email == $studentEmail)
                            <h1>Course:{{ $course->course_name }}</h1>
                            @endif
                        @else
                            <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Course Name</th>
                                    <th scope="col">User Mail</th>
                                </tr>
                            </thead>
                            @foreach ($data as $item)
                                <tbody>
                                    <tr>
                                        <td>{{ $item->course_name }}</td>
                                        <td>{{ $item->student_email }}</td>
                                    </tr>
                                </tbody>
                                
                            @endforeach
                            
                        @endif
                        </table>
                    </div>
            </div>

        </div>

    </div>

</div>

@endsection
