@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <h1 class="mb-5">Our Writers:</h1>

    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4 justify-content-center">
        @foreach($writers as $writer)
            <div class="col">
                <div class="text-center">
                    <div class="rounded-circle bg-white shadow-sm mx-auto mb-4" style="width: 250px; height: 250px; overflow: hidden;">
                        <img src="{{ $writer->writer_profile_picture }}" alt="{{ $writer->writer_name }}" class="w-100 h-100" style="object-fit: cover;">
                    </div>
                    <h3 class="fs-4 mb-2">{{ $writer->writer_name }}</h3>
                    <p class="text-muted">{{ $writer->writer_specialist }}</p>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
