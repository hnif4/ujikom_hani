<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>GAMMAKI | GALLERY SEKOLAH HANI</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600&family=Roboto&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<style>
    /* CSS untuk efek hover */
    .donation-item {
        position: relative;
        cursor: pointer;
    }

    /* Overlay isi tersembunyi yang akan muncul saat hover */
    .overlay-content {
        background-color: rgba(0, 0, 0, 0.8);
        color: white;
        display: flex;
        transition: opacity 0.3s ease;
        opacity: 0;
    }

    /* Efek hover untuk menampilkan overlay */
    .donation-item:hover .overlay-content {
        opacity: 1;
        display: flex;
    }

    /* Judul tetap terlihat */
    .donation-item h5 {
        margin: 0;
    }
</style>

<body>

    <!-- Spinner Start -->
    <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar -->
    <div class="container-fluid fixed-top px-0">
        <div class="container px-0">
            <!-- Topbar -->
            <div class="topbar">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-8">
                        <div class="topbar-info d-flex flex-wrap">
                            <a href="#" class="text-light me-4">
                                <i class="fas fa-envelope text-white me-2"></i>Example@gmail.com
                            </a>
                            <a href="#" class="text-light">
                                <i class="fas fa-phone-alt text-white me-2"></i>+01234567890
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="topbar-icon d-flex align-items-center justify-content-end">
                            <a href="#" class="btn-square text-white me-2"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="btn-square text-white me-2"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="btn-square text-white me-2"><i class="fab fa-instagram"></i></a>
                            <a href="#" class="btn-square text-white me-2"><i class="fab fa-pinterest"></i></a>
                            <a href="#" class="btn-square text-white"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Main Navbar -->
            <nav class="bg-gradient-to-r from-gray-400 to-purple-500 p-4 text-gray-50 shadow-lg sticky top-0 z-10">
                <div class="container mx-auto flex justify-between items-center">
                    <div class="flex items-center space-x-3">
                        <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSXrrARS_KQnuZsTbYR4HH6RgDI9Vv8JDxPyFtJT01A963PrEnyqjWRf7bzPzov7-fKitkKbYYA0PVnwxlb_wm8WSd3q5cFG1_L9qENOTw"
                            alt="App Logo"
                            class="w-12 h-12 rounded-full object-cover">
                        <a href="#" class="text-2xl font-bold">GAMMAKI - GALLERY SMKN 4 BOGOR</a>
                    </div>
                    <div class="space-x-4 flex items-center">
                        <a href="{{ url('/') }}" class="hover:text-indigo-400">Beranda</a>
                        <a href="#informasi" class="hover:text-indigo-400">Informasi</a>
                        <a href="#agenda" class="hover:text-indigo-400">Agenda</a>
                        <a href="#galeri" class="hover:text-indigo-400">Galeri</a>
                        <a href="#profil-dan-maps" class="hover:text-indigo-400">Tentang Kami</a>

                        <!-- Login Icon -->
                        <a href="{{ auth()->check() ? url('/admin/dashboard') : route('login') }}" class="ml-4">
                            <svg class="w-6 h-6 text-white hover:text-indigo-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z" />
                            </svg>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->


    <header>
        <!-- HEADER DAN SLIDER STAR -->

        <div class="container-fluid carousel-header vh-100 px-0">
            <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
                <ol class="carousel-indicators">
                    @foreach ($sliders as $index => $slider)
                    <li data-bs-target="#carouselId" data-bs-slide-to="{{ $index }}" class="{{ $index == 0 ? 'active' : '' }}"></li>
                    @endforeach
                </ol>
                <div class="carousel-inner" role="listbox">
                    @foreach ($sliders as $index => $slider)
                    <div class="carousel-item {{ $index == 0 ? 'active' : '' }}">
                        <img src="{{ $slider->image }}" class="img-fluid" alt="Image">
                        <div class="carousel-caption">
                            <div class="p-3" style="max-width: 700px; padding: 1rem;">
                                <h4 class="text-white text-uppercase fw-semibold mb-3" style="letter-spacing: 2px; font-size: 1.5rem;">Kami Cinta Sekolah Kami</h4>
                                <h1 class="display-4 text-capitalize text-white mb-3" style="font-size: 2.5rem;">Galeri Sekolah</h1>
                                <p class="mb-4 fs-6" style="font-size: 1rem;">
                                    Selamat datang di galeri sekolah kami! Di sini, Anda dapat menemukan foto-foto berharga dari berbagai acara, kegiatan, dan prestasi siswa kami. Mari kita bersama-sama menjaga kenangan indah ini.
                                </p>
                                <div class="d-flex align-items-center justify-content-center">
                                    <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="{{ $slider->link ?? '#' }}">Join With Us</a>
                                </div>
                            </div>
                        </div>

                    </div>
                    @endforeach
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <!-- HEADER DAN SLIDER END -->
    </header>

    <main>
        <section>
            <!-- PROFILE SEKOLAH START -->
            <div class="container-fluid about py-5">
                <div class="container py-5">
                    <div class="row g-5">
                        <div class="col-xl-5">
                            <div class="h-100" style="overflow: hidden;">
                                <img src="https://yt3.googleusercontent.com/ytc/AIdro_nSdyoGIRSL1o2uM5qY3wHR3LDhvWH-eIDvJ8eVD1aGRME=s900-c-k-c0x00ffffff-no-rj"
                                    class="img-fluid w-100 h-100"
                                    style="object-fit: cover; max-height: 300px;"
                                    alt="Image">
                            </div>
                        </div>
                        <div class="col-xl-7">
                            <h5 class="text-uppercase text-primary">Tentang Kami</h5>
                            <h1 class="mb-4">SMKN 4 Kota Bogor</h1>
                            <p class="fs-5 mb-4">Merupakan sekolah kejuruan berbasis Teknologi Informasi dan Komunikasi. Sekolah ini didirikan dan dirintis pada tahun 2008 kemudian dibuka pada tahun 2009 yang saat ini terakreditasi A. Terletak di Jalan Raya Tajur Kp. Buntar, Muarasari, Bogor, sekolah ini berdiri di atas lahan seluas 12.724 m2 dengan berbagai fasilitas pendukung di dalamnya.
                            </p>
                            <div class="tab-class bg-secondary p-4">
                                <ul class="nav d-flex mb-2">
                                    @foreach($profiles as $index => $profile)
                                    <li class="nav-item mb-3">
                                        <a class="d-flex py-2 text-center bg-white {{ $index === 0 ? 'active' : '' }}"
                                            data-bs-toggle="pill" href="#tab-{{ $profile->id }}">
                                            <span class="text-dark" style="width: 150px;">{{ $profile->judul }}</span>
                                        </a>
                                    </li>
                                    @endforeach
                                </ul>
                                <div class="tab-content">
                                    @foreach($profiles as $index => $profile)
                                    <div id="tab-{{ $profile->id }}"
                                        class="tab-pane fade show p-0 {{ $index === 0 ? 'active' : '' }}">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="d-flex">
                                                    <div class="text-start my-auto">
                                                        <h5 class="text-uppercase mb-3">{{ $profile->judul }}</h5>
                                                        <p class="mb-4">{{ $profile->isi }}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- PROFILE SEKOLAH END -->
        </section>

        <section>
            <!-- Informasi Start -->
<div class="container-fluid blog py-5 mb-5">
    <div class="container py-5">
        <div class="text-center mx-auto pb-5" style="max-width: 800px;">
            <h5 class="text-uppercase text-primary">Informasi Terbaru</h5>
            <h1 class="mb-0">Help today because tomorrow you may be the one who needs more helping!</h1>
        </div>
        <div class="row g-4">
            @foreach($informasiPosts as $post)
            <div class="col-lg-6 col-xl-3">
                <div class="blog-item">
                    <div class="blog-img">
                        <!-- Gambar Informasi -->
                        <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid w-100" alt="">

                        <div class="blog-info">
                            <!-- Tanggal Post -->
                            <span><i class="fa fa-clock"></i> {{ \Carbon\Carbon::parse($post->tanggal_posts)->format('d M Y') }}</span>
                            <div class="d-flex">
                                <!-- Jumlah Likes dan Komentar -->
                                <span class="me-3">{{ $post->likes_count }} <i class="fa fa-heart"></i></span>
                                <a href="#" class="text-white">{{ $post->comments_count }} <i class="fa fa-comment"></i></a>
                            </div>
                        </div>
                        <div class="search-icon">
                            <a href="{{ asset('storage/' . $post->image) }}" data-lightbox="Blog-{{ $post->id }}" class="my-auto">
                                <i class="fas fa-search-plus btn-primary text-white p-3"></i>
                            </a>
                        </div>
                    </div>
                    <div class="text-dark border p-4">
                        <h4 class="mb-4">{{ $post->judul }}</h4>
                        <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="#">Read More</a>
                    </div>
                </div>
            </div>
            @endforeach

            <!-- Tombol Lihat Informasi Lainnya -->
            <div class="col-12">
                <div class="d-flex align-items-center justify-content-center">
                    <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="#">Lihat Informasi Lainnya</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Informasi End -->

        </section>
        <!-- Agenda Start -->
        <div class="container-fluid event py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5" style="max-width: 800px;">
                    <h5 class="text-uppercase text-primary">Upcoming Events - Agenda</h5>
                    <h1 class="mb-0">Help today because tomorrow you may be the one who needs more helping!</h1>
                </div>
                <div class="event-carousel owl-carousel">
                    @foreach($agendaPosts as $agenda)
                    <div class="event-item">
                      
                        <!-- Konten Event -->
                        <div class="event-content p-4">
                            <div class="d-flex justify-content-between mb-4">
                                <!-- Lokasi & Tanggal -->
                                <span class="text-body"><i class="fas fa-map-marker-alt me-2"></i>Location TBD</span>
                                <span class="text-body"><i class="fas fa-calendar-alt me-2"></i>{{ \Carbon\Carbon::parse($agenda->tanggal_posts)->format('d M, Y') }}</span>
                            </div>
                            <h4 class="mb-4">{{ $agenda->judul }}</h4>
                            <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="{{ route('posts.show', $agenda->id) }}">Read More</a>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- Agenda End -->


<!-- gallery -->
<div class="container-fluid gallery py-5 px-0">
    <div class="text-center mx-auto pb-5" style="max-width: 800px;">
        <h5 class="text-uppercase text-primary">Gallery</h5>
        <h1 class="mb-4">We consider environment welfare</h1>
        <p class="mb-0">Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip sed eiusmod tempor ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip sed eiusmod tempor.</p>
    </div>

    <div class="row g-0">
        @foreach($frontend_galeries as $index => $galery)
            @if ($index % 3 == 0 && $index != 0)
                </div>
                <div class="row g-0">
            @endif
            <div class="col-lg-4">
                <div class="gallery-item">
                    <!-- Menampilkan foto dari galeri -->
                    @foreach($galery->photos as $photo)
                        <img src="{{ asset('storage/' . $photo->isi_foto) }}" class="img-fluid w-100" alt="{{ $photo->judul_foto }}">
                        <div class="search-icon">
                            <a href="{{ asset('storage/' . $photo->isi_foto) }}" data-lightbox="gallery-{{ $galery->id }}" class="my-auto">
                                <i class="fas fa-search-plus btn-hover-color bg-white text-primary p-3"></i>
                            </a>
                        </div>
                        <div class="gallery-content">
                            <div class="gallery-inner pb-5">
                                <a href="#" class="h4 text-white">{{ $galery->judul }}</a>
                                <a href="#" class="text-white">
                                    <p class="mb-0">{{ $galery->deskripsi }}</p>
                                </a>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        @endforeach
    </div>
</div>
<!-- Gallery End -->



        <!-- Section Lokasi Sekolah (Maps) -->
        <div class="w-full lg:w-1/2">
            <h2 class="text-3xl font-semibold text-gray-800 mb-4">Lokasi Sekolah</h2>
            <div class="w-full h-96 rounded-lg overflow-hidden">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3963.0498825216855!2d106.82211897403128!3d-6.640728064915646!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c8b16ee07ef5%3A0x14ab253dd267de49!2sSMK%20Negeri%204%20Bogor%20(Nebrazka)!5e0!3m2!1sid!2sid!4v1730303117624!5m2!1sid!2sid"
                    width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
        </div>
        </section>

        <section id="polling" class="my-10">
            <h2 class="text-3xl font-semibold text-gray-800 mb-4">Apakah Website Ini Bermanfaat?</h2>
            <div class="bg-white p-4 rounded-lg shadow-md">
                <form action="/polling" method="POST">
                    @csrf
                    <label class="block mb-4">
                        <input type="radio" name="poll" value="Sangat Bermanfaat" required> Sangat Bermanfaat
                    </label>
                    <label class="block mb-4">
                        <input type="radio" name="poll" value="Perlu Perbaikan"> Perlu Perbaikan
                    </label>
                    <button type="submit" class="text-white bg-gray-800 hover:bg-gray-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-gray-800 dark:hover:bg-gray-700 dark:focus:ring-gray-700 dark:border-gray-700">Kirim</button>
                </form>
            </div>
        </section>

        <section id="contact" class="my-10">
            <h2 class="text-3xl font-semibold text-gray-800 mb-4">Hubungi Kami</h2>
            <p class="text-gray-600 mb-4">Jika ada pertanyaan, silakan kirim pesan kepada kami.</p>
            <form action="/contact" method="POST" class="bg-white p-6 rounded-lg shadow-md">
                @csrf
                <label class="block mb-4">
                    <span class="text-gray-700">Nama</span>
                    <input type="text" name="name" required class="block w-full mt-1 border-gray-300 rounded-md">
                </label>
                <label class="block mb-4">
                    <span class="text-gray-700">Email</span>
                    <input type="email" name="email" required class="block w-full mt-1 border-gray-300 rounded-md">
                </label>
                <label class="block mb-4">
                    <span class="text-gray-700">Pesan</span>
                    <textarea name="message" rows="4" required class="block w-full mt-1 border-gray-300 rounded-md"></textarea>
                </label>
                <button type="submit" class="text-white bg-gray-800 hover:bg-gray-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-gray-800 dark:hover:bg-gray-700 dark:focus:ring-gray-700 dark:border-gray-700">Kirim Pesan</button>
            </form>
        </section>


    </main>


    <!-- Footer Start -->
    <div class="container-fluid footer bg-dark text-body py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="footer-item">
                        <h4 class="mb-4 text-white">Newsletter</h4>
                        <p class="mb-4">Dolor amet sit justo amet elitr clita ipsum elitr est.Lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur adipiscing elit.</p>
                        <div class="position-relative mx-auto">
                            <input class="form-control border-0 bg-secondary w-100 py-3 ps-4 pe-5" type="text" placeholder="Enter your email">
                            <button type="button" class="btn-hover-bg btn btn-primary position-absolute top-0 end-0 py-2 mt-2 me-2">SignUp</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="footer-item d-flex flex-column">
                        <h4 class="mb-4 text-white">Our Services</h4>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Ocean Turtle</a>
                        <a href=""><i class="fas fa-angle-right me-2"></i> White Tiger</a>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Social Ecology</a>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Loneliness</a>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Beauty of Life</a>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Present for You</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="footer-item d-flex flex-column">
                        <h4 class="mb-4 text-white">Volunteer</h4>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Karen Dawson</a>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Jack Simmons</a>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Michael Linden</a>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Simon Green</a>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Natalie Channing</a>
                        <a href=""><i class="fas fa-angle-right me-2"></i> Caroline Gerwig</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="footer-item">
                        <h4 class="mb-4 text-white">Our Gallery</h4>
                        <div class="row g-2">
                            <div class="col-4">
                                <div class="footer-gallery">
                                    <img src="img/gallery-footer-1.jpg" class="img-fluid w-100" alt="">
                                    <div class="footer-search-icon">
                                        <a href="img/gallery-footer-1.jpg" data-lightbox="footerGallery-1" class="my-auto"><i class="fas fa-search-plus text-white"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="footer-gallery">
                                    <img src="img/gallery-footer-2.jpg" class="img-fluid w-100" alt="">
                                    <div class="footer-search-icon">
                                        <a href="img/gallery-footer-2.jpg" data-lightbox="footerGallery-2" class="my-auto"><i class="fas fa-search-plus text-white"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="footer-gallery">
                                    <img src="img/gallery-footer-3.jpg" class="img-fluid w-100" alt="">
                                    <div class="footer-search-icon">
                                        <a href="img/gallery-footer-3.jpg" data-lightbox="footerGallery-3" class="my-auto"><i class="fas fa-search-plus text-white"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="footer-gallery">
                                    <img src="img/gallery-footer-4.jpg" class="img-fluid w-100" alt="">
                                    <div class="footer-search-icon">
                                        <a href="img/gallery-footer-4.jpg" data-lightbox="footerGallery-4" class="my-auto"><i class="fas fa-search-plus text-white"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="footer-gallery">
                                    <img src="img/gallery-footer-5.jpg" class="img-fluid w-100" alt="">
                                    <div class="footer-search-icon">
                                        <a href="img/gallery-footer-5.jpg" data-lightbox="footerGallery-5" class="my-auto"><i class="fas fa-search-plus text-white"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="footer-gallery">
                                    <img src="img/gallery-footer-6.jpg" class="img-fluid w-100" alt="">
                                    <div class="footer-search-icon">
                                        <a href="img/gallery-footer-6.jpg" data-lightbox="footerGallery-6" class="my-auto"><i class="fas fa-search-plus text-white"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Copyright Start -->
    <div class="container-fluid copyright py-4">
        <div class="container">
            <div class="row g-4 align-items-center">
                <div class="col-md-4 text-center text-md-start mb-md-0">
                    <span class="text-body"><a href="#"><i class="fas fa-copyright text-light me-2"></i>Siti Nur Hanifah</a>, All right reserved.</span>
                </div>
                <div class="col-md-4 text-center">
                    <div class="d-flex align-items-center justify-content-center">
                        <a href="#" class="btn-hover-color btn-square text-white me-2"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="btn-hover-color btn-square text-white me-2"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="btn-hover-color btn-square text-white me-2"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="btn-hover-color btn-square text-white me-2"><i class="fab fa-pinterest"></i></a>
                        <a href="#" class="btn-hover-color btn-square text-white me-0"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-md-4 text-center text-md-end text-body">
                    <!--/* This template is free as long as you keep the below author’s credit link/attribution link/backlink. */-->
                    <!--/* If you'd like to use the template without the below author’s credit link/attribution link/backlink, */-->
                    <!--/* you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". */-->
                    Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a> Distributed By <a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary btn-primary-outline-0 btn-md-square back-to-top"><i class="fa fa-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>


    <!-- Template Javascript -->
    <script src="js/main.js"></script>

</body>

</html>