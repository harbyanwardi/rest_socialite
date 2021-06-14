<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
// Route::post('login', 'API\UserController@login');
// Route::post('register', 'API\UserController@register');

Route::post('login', [UserController::class, 'login']);
Route::post('register', [UserController::class, 'register']);
Route::get('loginfalse/{msg}', [UserController::class, 'loginfalse']);

Route::get('auth/{provider}/callback', [UserController::class, 'handleProviderCallback']);


// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::group(['middleware' => 'auth:api'], function(){
	Route::get('details', [UserController::class, 'details']);
	Route::post('logout', [UserController::class, 'logout']);

});