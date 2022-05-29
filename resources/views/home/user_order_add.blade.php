@extends('layouts.home')

@section('title', 'Sipariş Detayları')

@include('home._header')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <form action="{{route('user_order_store')}}" method="post">
                    @csrf
                    <table>
                     <br><br>   <tr><h2>SİPARİŞ DETAYLARI: </h2><br><br>
                        <tr><h4></h4> <input style="width: 400px" id="name" type="text" value="{{Auth::user()->name}}" name="name" placeholder="Name"/></tr>
                        <tr><h4></h4> <input style="width: 400px" id="email" type="email" value="{{Auth::user()->email}}" name="email" placeholder="Email"/></tr>
                        <tr><h4></h4><input style="width: 400px" id="address" type="text" value="{{Auth::user()->address}}" name="address" placeholder="Address"/></tr>
                        <tr><h4></h4><input style="width: 400px" id="phone" type="number" value="{{Auth::user()->phone}}" name="phone" placeholder="Phone"/></tr>

                    </table>
            </div>
            <div class="col-md-6">
                <br><br>
                <h2>ÖDEME DETAYLARI TOTAL = {{$total}}₺</h2><br><br>
                <table>
                    <tr><input type="hidden" name="total"  value="{{$total}}"/></tr>
                    <tr><input style="width: 400px" id="cardname" type="text"  name="cardname" placeholder="Name Surname"/></tr><br><br>
                    <tr><input style="width: 400px" id="cardnumber" type="text"  name="cardnumber" placeholder="Card Number"/></tr><br><br>
                    <tr><input style="width: 200px" id="dates" type="text"  name="dates" placeholder="Valid Dates mm/yy"/><input style="width: 200px" id="secret" type="text" name="key" placeholder="Secret Number"/></tr><br><br><br>

                    <tr><button type="submit" class="btn btn-theme">ÖDEMEYİ ONAYLA</button></tr>
                </table>

                </form>

            </div>
        </div>
    </div>









@endsection
