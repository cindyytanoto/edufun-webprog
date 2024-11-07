@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Writers</h1>
    <ul>
        @foreach($writers as $writer)
            <li>{{ $writer->writer_name }} - {{ $writer->writer_specialist }}</li>
        @endforeach
    </ul>
</div>
@endsection
