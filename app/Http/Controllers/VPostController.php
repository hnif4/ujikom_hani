<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;


class VPostController extends Controller
{
    //
    public function index()
    {
        $categories = Category::all(); // Ambil semua kategori
        $posts = Post::with('category', 'user')->where('status', 'aktif')->get(); // Ambil semua postingan yang statusnya aktif

        return view('posts.index', compact('posts', 'categories'));
    }

    public function postsByCategory($categoryId)
    {
        $categories = Category::all(); // Ambil semua kategori
        $posts = Post::with('category', 'user')
                     ->where('category_id', $categoryId)
                     ->where('status', 'aktif') // Hanya ambil postingan dengan status aktif
                     ->get();
    
        return view('posts.index', compact('posts', 'categories'));
    }
    
}