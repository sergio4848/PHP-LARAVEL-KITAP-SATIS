<div class="main">
    <div class="content">
        <div class="content_top">
            <div class="heading">
                <h3>En Yeni Kitapları</h3>
            </div>
            <div class="see">
                <p><a href="{{route('allproducts')}}">Tüm Kitapları Gör</a></p>
            </div>
            <div class="clear"></div>
        </div>
        <div class="section group">
            @foreach($last as $rs)
            <div class="grid_1_of_4 images_1_of_4">
                <a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}"><img src="{{ Storage::url($rs->image) }}" alt="" /></a>
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
                <p><a href="{{route('allproducts')}}">Tüm Kitapları Gör</a></p>
            </div>
            <div class="clear"></div>
        </div>
        <div class="section group">
            @foreach($picked as $rs)
                <div class="grid_1_of_4 images_1_of_4">
                    <a href="{{route('product',['id' => $rs->id,'slug' => $rs->slug])}}"><img src="{{ Storage::url($rs->image) }}" alt="" /></a>
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
