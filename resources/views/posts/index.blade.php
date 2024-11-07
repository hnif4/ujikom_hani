
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Postingan</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .post-card {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            transition: transform 0.2s;
        }

        .post-card:hover {
            transform: scale(1.03);
        }

        .post-image {
            height: 200px;
            object-fit: cover;
        }
    </style>
</head>

<body>

    <div class="container mt-5">
        <h1 class="text-center mb-5">Daftar Postingan</h1>

        <!-- Dropdown Filter Kategori -->
        <div class="d-flex justify-content-center mb-4">
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Pilih Kategori
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="{{ route('posts.index') }}">Semua Kategori</a></li>
                    @foreach($categories as $category)
                    <li>
                        <a class="dropdown-item" href="{{ route('posts.byCategory', $category->id) }}">
                            {{ $category->nama }}
                        </a>
                    </li>
                    @endforeach
                </ul>

            </div>
        </div>

        <!-- Daftar Postingan -->
        <div class="row row-cols-1 row-cols-md-3 g-4">
            @forelse($posts as $post)
            <div class="col">
                <div class="card post-card h-100">
                    <img src="{{ asset('storage/' . $post->image) }}" class="card-img-top post-image" alt="{{ $post->judul }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $post->judul }}</h5>
                        <p class="card-text">{{ Str::limit($post->isi, 100) }}</p>
                        <p class="text-muted">
                            Kategori: {{ $post->category->nama }} <br>
                            Oleh: {{ $post->user->name }} | {{ $post->tanggal_posts }}
                        </p>
                    </div>
                </div>
            </div>
            @empty
            <div class="col-12">
                <div class="alert alert-warning text-center" role="alert">
                    Tidak ada postingan yang ditemukan.
                </div>
            </div>
            @endforelse
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
