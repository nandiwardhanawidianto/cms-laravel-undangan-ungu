<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\HeroInvitationApiController;

Route::get('/slug/{slug}/listapi', [HeroInvitationApiController::class, 'listapi']);

