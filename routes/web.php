<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SlugListController;
use App\Http\Controllers\HeroInvitationController;
use App\Http\Controllers\AcaraController;
use App\Http\Controllers\CountingController;
use App\Http\Controllers\GaleriController;
use App\Http\Controllers\LoveGiftController;


use App\Http\Controllers\Api\HeroInvitationApiController;


// Route::get('/slug/{id}/hero-invitation', [HeroInvitationApiController::class, 'show']);

// Halaman utama langsung ke slug list (index)
Route::get('/', [SlugListController::class, 'index'])->name('slug.index');

// Tambah slug (store)
Route::post('/slug-list', [SlugListController::class, 'store'])->name('slug.store');

// Update slug (update)
Route::put('/slug-list/{id}', [SlugListController::class, 'update'])->name('slug.update');

// Hapus slug (destroy)
Route::delete('/slug-list/{id}', [SlugListController::class, 'destroy'])->name('slug.destroy');


//pindah ke edit.blade.php
// Edit detail slug (masuk ke halaman form Hero & lain-lain)
Route::get('/slug-list/{id}/edit', [HeroInvitationController::class, 'edit'])->name('slug.edit');

// Simpan Hero Invitation
Route::post('/slug/{slug_id}/hero-invitation', [HeroInvitationController::class, 'store'])->name('hero.store');

// Acara
Route::get('/slug/{slug_id}/acara', [AcaraController::class, 'edit'])->name('acara.edit');
Route::post('/slug/{slug_id}/acara', [AcaraController::class, 'store'])->name('acara.store');

//Counting
Route::get('/slug/{slug_id}/counting', [CountingController::class, 'edit'])->name('counting.edit');
Route::post('/slug/{slug_id}/counting', [CountingController::class, 'store'])->name('counting.store');

//Galeri
Route::post('/slug/{slug_id}/galleri', [GaleriController::class, 'store'])->name('galeri.store');

//lovegift
Route::post('/slug/{slug_id}/lovegift', [LoveGiftController::class, 'store'])->name('lovegift.store');
Route::get('/slug/{slug_id}/lovegift', [LoveGiftController::class, 'edit'])->name('lovegift.edit');