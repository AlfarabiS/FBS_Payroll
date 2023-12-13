@include('layout.header')

<div class="container py-1 my-5 " style="width: 18rem">
    <form action="/login" method="POST">
        @csrf
        <!-- Email input -->
        <div class="form-outline mb-2 mt-5">
          <input type="email" class="form-control" name="email" />
          <label class="form-label" for="form2Example1">Email address</label>
        </div>
        <!-- Password input -->
        <div class="form-outline mb-2">
          <input type="password"  class="form-control" name="password"/>
          <label class="form-label" for="form2Example2">Password</label>
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>

      </form>
</div>

@include('layout.footer')