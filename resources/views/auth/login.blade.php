<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    


    <title>sign up</title>

    <!-- vendor css -->
    <link href="{{ asset('cms/lib/font-awesome/css/font-awesome.css') }}" rel="stylesheet">
    <link href="{{ asset('cms/lib/Ionicons/css/ionicons.css') }}" rel="stylesheet">
    <link href="{{ asset('cms/lib/select2/css/select2.min.css') }}" rel="stylesheet">


    <!-- Starlight CSS -->
    <link rel="stylesheet" href="{{ asset('cms/css/starlight.css') }}">
  </head>

  <body>

    <div class="d-flex align-items-center justify-content-center bg-sl-primary ht-md-100v">
        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div class="login-wrapper wd-300 wd-xs-400 pd-25 pd-xs-40 bg-white">

                <div class="form-group">
                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Enter your email">
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div><!-- form-group -->

                <div class="form-group">
                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Enter your password">
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div><!-- form-group -->
                
                <button type="submit" class="btn btn-info btn-block">Sign Up</button>

                <div class="mg-t-40 tx-center">Don't have an account? <a href="{{ route('user_register') }}" class="tx-info">Register</a></div>
            </div><!-- login-wrapper -->
        </form>
    </div><!-- d-flex -->

    <script src="{{ asset('cms/lib/jquery/jquery.js') }}"></script>
    <script src="{{ asset('cms/lib/popper.js/popper.js') }}"></script>
    <script src="{{ asset('cms/lib/bootstrap/bootstrap.js') }}"></script>
    <script src="{{ asset('cms/lib/select2/js/select2.min.js') }}"></script>
    <script>
      $(function(){
        'use strict';

        $('.select2').select2({
          minimumResultsForSearch: Infinity
        });
      });
    </script>

  </body>
</html>
