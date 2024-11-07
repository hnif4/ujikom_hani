<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Photo;
use App\Models\Post;
use App\Models\Galery;
use App\Models\Slider;
use App\Models\ProfileSekolah;

class HomeController extends Controller
{
    public function index()
    {
        // Ambil semua postingan yang aktif untuk kategori Informasi dan Agenda
        $informasiPosts = Post::where('category_id', 1)
    ->where('status', 'aktif')
    ->latest()
    ->take(4)
    ->get();

        $agendaPosts = Post::where('category_id', 2)->where('status', 'aktif')->get(); // Semua agenda aktif
        
        // Ambil setiap galeri dengan maksimal 4 foto
        $frontend_galeries = Galery::with(['photos' => function($query) {
            $query->limit(4); // Membatasi jumlah foto per galeri
        }])->get();

        // Ambil foto untuk slider
        $sliders = Slider::all();

        // Ambil data profil sekolah
        $profiles = ProfileSekolah::take(2)->get();

        return view('welcome', compact('informasiPosts', 'agendaPosts', 'frontend_galeries', 'sliders', 'profiles'));
    }

    public function show($id)
    {
        $post = Post::findOrFail($id); // Pastikan menggunakan model Post
        return view('posts.detail', compact('post'));
    }
}
