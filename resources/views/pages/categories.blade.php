@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <h1 class="mb-4">
        @if($category == 1)
            Interactive Multimedia
        @elseif($category == 2)
            Software Engineering
        @endif
    </h1>

    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4 mb-10">
        @forelse($articles as $article)
            <div class="col">
                <div class="card h-100 shadow-sm">
                    <img src="{{ $article->article_cover }}" class="card-img-top" alt="{{ $article->course->course_name }}" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h5 class="card-title">{{ $article->title }}</h5>
                        <p class="card-text text-muted mb-2">
                            <small>
                                {{ $article->writer->writer_name }}
                                {{ date("d F Y", strtotime($article->created_date)) }}
                            </small>
                        </p>
                        <p class="card-text">{{ Str::limit($article->article_content, 100) }}</p>
                    </div>
                    <div class="card-footer bg-transparent border-top-0">
                        <a href="{{ route('get-article', $article->id) }}" class="btn btn-primary btn-sm">Read more</a>
                    </div>
                </div>
            </div>
        @empty
            <div class="col-12">
                <div class="alert alert-info" role="alert">
                    No articles found for this category.
                </div>
            </div>
        @endforelse
    </div>

    {{-- @if($articles->count() > 0)
        <div class="mt-4">
            {{ $articles->links() }}
        </div>
    @endif --}}
</div>
@endsection
