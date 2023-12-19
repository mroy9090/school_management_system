@extends('layouts.mainFile')


@section('page_name')
User settings
@endsection


@section('body')
<div class="row">
    <div class="col-5">
        <div class="card">
            <div class="card-header bg-warning text-dark">Header</div>
            <div class="card-body">
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">User name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Role</th>
                      </tr>
                    </thead>
                    @foreach ($user_data as $data)
                    <tbody>
                        <tr>
                          <td>{{ $data->name }}</td>
                          <td>{{ $data->email }}</td>
                          <td>
                            @if ($data->role == 2)
                              <a href=""><span class="badge rounded-pill bg-danger">Admin</span></a>
                            @else
                              <a href=""><span class="badge rounded-pill bg-warning">User</span></a>
                            @endif
                          </td>
                        </tr>
                    </tbody>

                    @endforeach
                  </table>
            </div>
        </div>

    </div>
</div>   
@endsection

