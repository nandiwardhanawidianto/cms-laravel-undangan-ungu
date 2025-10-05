<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\HeroInvitation;
use App\Models\SlugList;
use App\Models\Acara;
use App\Models\Galeri;
use App\Models\LoveGift; 
use Illuminate\Http\Request;
use App\Models\Counting; 

class HeroInvitationApiController extends Controller
{
    /**
     * Ambil semua data undangan berdasarkan slug (bukan ID)
     * Contoh: /api/slug/nandimia/listapi
     */
    public function listapi($slug)
    {
        // cari slug di tabel slug_list
        $slugData = SlugList::where('slug', $slug)->first();

        // jika slug tidak ditemukan
        if (!$slugData) {
            return response()->json([
                'message' => 'Slug tidak ditemukan',
            ], 404);
        }

        // ambil data terkait berdasarkan slug_id
        $heroInvitation = HeroInvitation::where('slug_id', $slugData->id)->first();
        $acaras         = Acara::where('slug_list_id', $slugData->id)->get();
        $galeri         = Galeri::where('slug_list_id', $slugData->id)->get();
        $lovegift       = LoveGift::where('slug_list_id', $slugData->id)->first();
        $counting       = Counting::where('slug_list_id', $slugData->id)->first();

        // kirim respons JSON lengkap
        return response()->json([
            'slug'           => $slugData,
            'heroInvitation' => $heroInvitation,
            'counting'       => $counting,
            'acaras'         => $acaras,
            'galeri'         => $galeri,
            'lovegift'       => $lovegift,
        ]);
    }
}
