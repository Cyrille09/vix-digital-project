<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//users route
Route::prefix('/users')->group(function () {
    Route::post('/login', 'api\UsersController@login');
    Route::middleware('auth:api')->post('/register', 'api\UsersController@store');
    Route::middleware('auth:api')->get('/', 'api\UsersController@index');
    Route::middleware('auth:api')->get('/me', 'api\UsersController@loginUser');
    Route::middleware('auth:api')->put('/{user}', 'api\UsersController@update');
    Route::middleware('auth:api')->get('/{user}', 'api\UsersController@show');
    Route::middleware('auth:api')->delete('/{user}', 'api\UsersController@destroy');

});

//services route
Route::prefix('/services')->group(function () {
    Route::middleware('auth:api')->post('/register', 'api\ServicesController@store');
    Route::middleware('auth:api')->get('/', 'api\ServicesController@index');
    Route::middleware('auth:api')->get('/{service}', 'api\ServicesController@show');
    Route::middleware('auth:api')->put('/{service}', 'api\ServicesController@update');
    Route::middleware('auth:api')->delete('/{service}', 'api\ServicesController@destroy');

});
