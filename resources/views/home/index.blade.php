@extends('layouts.home')

@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

@section('title', 'Ana Sayfa | '.$setting->title)
@section('description')
    {{$setting->description}}
@endsection

@section ('keywords',$setting->keywords)

@include('home._header')

@include('home._slider')

@section ('content')
    <div class="main">
        <div class="content">
            <div class="content_top">
                <div class="heading">
                    <h3>En Yeni Kitaplar</h3>
                </div>
                <div class="see">
                    <p><a href="{{route('allproductlist')}}">Tüm Kitapları Gör</a></p>
                </div>
                <div class="clear"></div>
            </div>
            <div class="section group">
                @foreach($last as $rs)
                    <div class="grid_1_of_4 images_1_of_4" style="height: 450px;">
                        <a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}"><img src="{{ Storage::url($rs->image) }}" style="height: 350px;" alt="" /></a>
                        <h2>{{$rs->title}} </h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">{{$rs->price}}₺</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}">Satın Al</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>

                    </div>
                @endforeach
            </div>
            <div class="content_bottom">
                <div class="heading">
                    <h3>Size Özel Kitaplar</h3>
                </div>
                <div class="see">
                    <p><a href="{{route('allproductlist')}}">Tüm Kitapları Gör</a></p>
                </div>
                <div class="clear"></div>
            </div>
            <div class="section group">
                @foreach($picked as $rs)
                    <div class="grid_1_of_4 images_1_of_4"style="height: 450px;">
                        <a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}"><img src="{{ Storage::url($rs->image) }}" style="height: 350px;" alt="" /></a>
                        <h2>{{$rs->title}} </h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">{{$rs->price}}₺</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}">Satın Al</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>

                    </div>
                @endforeach
            </div>
        </div>
    </div>
    </div>



@endsection

