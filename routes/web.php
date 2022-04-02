<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\ClientController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('index', 'AdminController@index');
Route::get('trang-chu', 'ClientController@viewHome');
Route::get('san-pham', 'ClientController@viewProduct');
Route::get('chi-tiet-san-pham', 'ClientController@viewDesPro');

Route::get('/home1', [ClientController::class,'viewTC'])->name('home')->middleware("auth");
Route::get('account/login', [ClientController::class,'viewLogin']);
Route::get('account/register', [ClientController::class,'viewSignin']);
Route::get('gioi-thieu', [ClientController::class,'viewGioiThieu'])->middleware("auth");
Route::get('da-ong-xam', 'ClientController@viewDa')->middleware("auth");
Route::get('cart', 'ClientController@viewCart')->middleware("auth");
Route::get('lien-he', 'ClientController@viewLienHe')->middleware("auth");
Route::get('tin-tuc', 'ClientController@viewTT')->middleware("auth");
Route::get('all-product', 'ClientController@viewAllProduct')->middleware("auth");
Route::get('san-pham/{id}', 'ClientController@viewSanPham')->middleware("auth");
Route::get('tin-tuc/1', 'ClientController@viewNDTT')->middleware("auth");
Route::get('cart/delete/{id}', 'ClientController@deletecart')->middleware("auth");

Route::post('cart/add/{id}', 'ClientController@addCart');
Route::post('account/submit', 'ClientController@submitSignin');

Auth::routes();
