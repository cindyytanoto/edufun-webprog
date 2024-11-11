@extends('layouts.app')

@section('content')
<div class="container-fluid p-0">
    <div class="position-relative" style="height: 500px;">
        <img src="/home-background.jpg" class="w-100 h-100" style="object-fit: cover;" alt="Students studying together">
        <div class="position-absolute bottom-0 start-0 w-100 p-4" style="background: linear-gradient(to top, rgba(0,0,0,0.7), transparent);">
            <div class="container">
                <h1 class="text-white mb-3">Welcome to EduFun</h1>
                <p class="text-white mb-0">Discover the future of learning with our comprehensive courses</p>
            </div>
        </div>
    </div>

    <div class ="d-flex flex-column p-5 gap-5">
        @foreach ($articles as $article)
       <div class="card h-100 shadow-sm">
            <img src="{{ $article->article_cover }}" class="card-img-top" alt="" style="height: 200px; object-fit: cover;">
            <div class="card-body">
                <h5 class="card-title">{{ $article->course->course_name }}</h5>
                <p class="card-text text-muted mb-2">
                    <small>
                        <i class="bi bi-calendar-event me-2"></i>{{ $article->created_at->format('M d, Y') }}
                        <i class="bi bi-person ms-3 me-2"></i>{{ $article->writer->writer_name }}
                    </small>
                </p>
                <p class="card-text">{{ Str::limit($article->article_content, 100) }}</p>
                <a href="{{ route('get-article', ['id' => $article->id]) }}" class="btn btn-info">Read more</a>
            </div>
        </div>
        @endforeach
    </div>




</div>
@endsection
