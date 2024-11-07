<?php 

namespace App\Http\Controllers\Api;

use App\Models\Category;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{
    /**
     * API Category - Get all categories
     */
    public function index()
    {
        // Get all categories with related posts
        $categories = Category::with('posts')->get();
        return response()->json($categories);
    }

    /**
     * API Category - Get category by id
     */
    public function show($id)
    {
        // Get category with related posts
        $category = Category::with('posts')
            ->where('id', $id)
            ->first();

        if (!$category) {
            return response()->json(['message' => 'Category not found'], 404);
        }

        return response()->json($category);
    }

    /**
     * API Category - Get categories for home
     */
    public function categoryHome()
    {
        // Get categories for home, customize as needed
        return $this->index();
    }
}
