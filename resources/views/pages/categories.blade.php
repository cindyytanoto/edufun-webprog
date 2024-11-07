@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Categories</h1>
    <ul>
        @foreach($categories as $category)
            <li>{{ $category->category_name }}</li>
        @endforeach
    </ul>
</div>
@endsection
