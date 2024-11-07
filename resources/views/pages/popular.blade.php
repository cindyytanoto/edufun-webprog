@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Popular Articles</h1>
    <ul>
        @foreach($popularArticles as $article)
            <li>{{ $article->article_content }}</li>
        @endforeach
    </ul>
</div>
@endsection
