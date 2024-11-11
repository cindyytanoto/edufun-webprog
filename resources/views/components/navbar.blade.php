<nav class="navbar navbar-expand-lg navbar-light bg-light mt-0 pt-0">
    <div class="container" style="max-width: 1200px;">
        <a class="navbar-brand" href="{{ route('home') }}" style="font-weight: bold; font-size: 1.5rem;">Edufun</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('home') }}">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Category</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="{{ route('interactive-multimedia') }}">Interactive multimedia</a></li>
                        <li><a class="dropdown-item" href="{{ route('software-engineering') }}">Software engineering</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('writers') }}">Writers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('about') }}">About Us</a>
                </li>
                {{-- <li class="nav-item">
                    <a class="nav-link" href="">Popular</a>
                </li> --}}
            </ul>
        </div>
    </div>
</nav>
