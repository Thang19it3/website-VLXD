<?php

namespace App\Http\Controllers;

use App\Cart;
use Illuminate\Http\Request;
use App\users;
use App\TinTuc;
use App\HangHoa;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function viewTC()
    {
        $hh = DB::table('hanghoa')->get();
        $tt = TinTuc::all()->random(2);
        if (Auth::check()) {
            $cart = DB::table('carts')->join('hanghoa', 'carts.id_hanghoa', '=', 'hanghoa.id_hh')->where('id_user', Auth::user()->id)->get();
            return view("client.trangchu", ['hh' => $hh, 'cart' => $cart, 'tt' => $tt]);
        } else {
            return view("client.trangchu", ['hh' => $hh, 'cart' => [""], 'tt' => $tt]);
        }
    }

    public function viewLogin()
    {
        return view("auth.login");
    }

    public function viewSignin()
    {
        return view("client.dangky");
    }


    public function viewGioiThieu()
    {
        $cart = DB::table('carts')->join('hanghoa', 'carts.id_hanghoa', '=', 'hanghoa.id_hh')->where('id_user', Auth::user()->id)->get();
        return view("client.gioithieu", ['cart' => $cart]);
    }


    public function viewCart()
    {
        $cart = DB::table('carts')->join('hanghoa', 'carts.id_hanghoa', '=', 'hanghoa.id_hh')->where('id_user', Auth::user()->id)->get();
        $sum = DB::table('carts')->join('hanghoa', 'carts.id_hanghoa', '=', 'hanghoa.id_hh')->where('id_user', Auth::user()->id)->sum('gia_hh');
        return view("client.giohang", ['cart' => $cart, 'sum' => $sum]);
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function addCart($id)
    {
        $new = new Cart();
        $new->id_user = Auth::user()->id;
        $new->id_hanghoa = $id;
        $new->soluong = 1;
        $new->save();
        return redirect('https://localhost/thuctap/buildingmaterial/public/cart');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function viewLienHe()
    {
        $cart = DB::table('carts')->join('hanghoa', 'carts.id_hanghoa', '=', 'hanghoa.id_hh')->where('id_user', Auth::user()->id)->get();
        return view("client.lienhe", ['cart' => $cart]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function viewAllProduct()
    {
        $cart = DB::table('carts')->join('hanghoa', 'carts.id_hanghoa', '=', 'hanghoa.id_hh')->where('id_user', Auth::user()->id)->get();
        $hh = DB::table('hanghoa')->get();
        return view("client.allsanpham", ['cart' => $cart, 'hh' => $hh]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function viewSanPham($id)
    {
        $cart = DB::table('carts')->join('hanghoa', 'carts.id_hanghoa', '=', 'hanghoa.id_hh')->where('id_user', Auth::user()->id)->get();
        $sp = DB::table('hanghoa')->where('id_hh', $id)->first();
        $hh = HangHoa::all()->random(3);
        $tt = TinTuc::all()->random(2);
        return view("client.sanpham", ['sp' => $sp, 'cart' => $cart, 'hh' => $hh, 'tt' => $tt]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function deletecart($id)
    {
        $new = Cart::where('id_carts', $id);
        $new->delete();
        return redirect()->back();
    }

    public function viewTT()
    {
        $tt = TinTuc::all();
        $ttnb = TinTuc::all()->random(2);
        $cart = DB::table('carts')->join('hanghoa', 'carts.id_hanghoa', '=', 'hanghoa.id_hh')->where('id_user', Auth::user()->id)->get();
        return view("client.tintuc", ['tt' => $tt, 'cart' => $cart, 'ttnb' => $ttnb]);
    }

    public function viewNDTT()
    {
        $tt = TinTuc::all();
        $ttnb = TinTuc::all()->random(2);
        $cart = DB::table('carts')->join('hanghoa', 'carts.id_hanghoa', '=', 'hanghoa.id_hh')->where('id_user', Auth::user()->id)->get();
        return view("client.tintuc1", ['tt' => $tt, 'cart' => $cart, 'ttnb' => $ttnb]);
    }
}
