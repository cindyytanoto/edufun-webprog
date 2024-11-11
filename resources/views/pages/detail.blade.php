@extends('layouts.app');

@section('content')
    <div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <article class="bg-white shadow-sm rounded-3 p-4 mb-4">
                <header class="text-center mb-4">
                    <h1 class="display-4 fw-bold mb-3">{{$article->course->course_name}}</h1>
                    <div class="text-muted mb-3">
                        <span>
                            {{$article->writer->writer_name}}
                        </span>
                        <span>|</span>
                        <span>
                            {{date("d F Y", strtotime($article->created_date))}}
                        </span>
                    </div>
                </header>

                <figure class="figure mb-4">
                    <img src="{{$article->article_cover}}" class="figure-img img-fluid rounded" alt="" style="width: 100%; height: auto; max-height: 400px; object-fit: cover;">
                </figure>

                <div class="article-content fs-5 lh-lg">
                    {{$article->article_content}}
                </div>
            </article>

            <div class="d-flex justify-content-between align-items-center mt-4">
                <a href="{{ url()->previous() }}" class="btn btn-outline-primary">
                   Back to Articles
                </a>
                <div class="text-muted">
                    <i class="bi bi-clock me-2"></i>
                    Last updated: {{date("d F Y H:i", strtotime($article->updated_at))}}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
