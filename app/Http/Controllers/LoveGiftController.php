<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LoveGift;
use App\Models\HeroInvitation;

class LoveGiftController extends Controller
{
    //untuk menampilklan data kalau sudah ada di database trus ditampilkan di view terkait
     public function edit($slug_id)
    {
        // Ambil slug
        $slug = SlugList::findOrFail($slug_id);

        // Ambil hero invitation
        $heroInvitation = HeroInvitation::where('slug_id', $slug_id)->first();

        // Ambil acara-acara
        $love_gifts = Lovegift::where('slug_list_id', $slug_id)->get();

        return view('slug.LoveGift', [
            'slug_id'        => $slug_id, 
            'slug'           => $slug,
            'heroInvitation' => $heroInvitation,
            'love_gifts'     => $love_gifts,
        ]);
    }

    //untuk store
    public function store(Request $request, $slug_id)
    {
        $validated = $request->validate([
            'nama_bank.0'     => 'required|string|max:255',
            'no_rekening.0'   => 'required|string|max:50',
            'pemilik_bank.0'  => 'required|string|max:255',

            'nama_bank.*'     => 'nullable|string|max:255',
            'no_rekening.*'   => 'nullable|string|max:50',
            'pemilik_bank.*'  => 'nullable|string|max:255',
        ]);

        $banks = [];
        foreach ($request->nama_bank as $i => $namaBank) {
            if ($namaBank || $request->no_rekening[$i] || $request->pemilik_bank[$i]) {
                $banks[] = [
                    'nama_bank'    => $namaBank,
                    'no_rekening'  => $request->no_rekening[$i],
                    'pemilik_bank' => $request->pemilik_bank[$i],
                ];
            }
        }

        LoveGift::updateOrCreate(
            ['slug_list_id' => $slug_id],
            ['banks' => $banks]
        );

        return back()->with('success', 'Love Gift berhasil disimpan!');
    }
}
