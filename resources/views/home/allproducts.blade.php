@extends('layouts.home')

@section('title', 'Tüm Ürünler '.$setting->title)
@include('home._header')


@section('content')
    <div class="main">
        <div class="content">
            <div class="content_top">
                <div class="heading">
                    <h3>Tüm Kitaplar</h3>
                </div>

                <div class="clear"></div>
            </div>
            <div class="section group">
                @foreach($datalist as $rs)
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

        </div>
    </div>
    </div>


@endsection


