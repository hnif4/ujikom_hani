<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $post->judul }}</title>
    
    <!-- Menghubungkan Tailwind CSS dan JavaScript melalui Vite -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-gray-100">



    <section class="section pt-10" id="informasi-detail">
        <div class="container mx-auto px-6">
            <div class="bg-gradient-to-br from-gray-100 to-gray-300 p-6 rounded-lg shadow-md">
                <h2 class="text-4xl font-semibold text-gray-800 mb-6">{{ $post->judul }}</h2>

                <!-- Gambar Posting -->
                <img src="{{ Storage::url($post->image) }}" alt="{{ $post->judul }}" class="w-full h-80 object-cover rounded-lg mb-6">

                <!-- Kategori -->
                <span class="text-sm font-semibold text-gray-500">{{ $post->kategori }}</span>

                <!-- Isi Informasi -->
                <p class="text-gray-700 mt-4 leading-relaxed">{{ $post->isi }}</p>

                <!-- Tanggal Posting -->
                <div class="text-xs text-gray-400 mt-4 flex items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10m-4 5h4m2-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2h7" />
                    </svg>
                    <span>{{ \Carbon\Carbon::parse($post->created_at)->format('d M Y') }}</span>
                </div>
            </div>
        </div>
    </section>

</body>
</html>
