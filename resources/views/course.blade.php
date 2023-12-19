@extends('layouts.mainFile')


@section('page_name')
Add Course
@endsection


@section('body')

<div class="container">
    <div class="row">
        <div class="col-8">
            <div class="card-box">
                <div class="card-header  bg-info text-dark">Course informations</div>
                    <div class="card-body text-dark">
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
                        </table>
                    </div>
            </div>
        </div>
        <div class="col-4">
            <div class="card-box">
                <div class="card-header  bg-info text-dark">Add Course</div>
                <div class="card-body text-dark">
                    <form action="{{ url('/add/course') }}" method="POST">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Course Name</label>
                            <input type="text" class="form-control" name="course_name">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Student email</label>
                            <input type="email" class="form-control" name="student_email">
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

            </div>

        </div>
    </div>


</div>
    
@endsection