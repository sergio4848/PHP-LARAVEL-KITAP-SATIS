<div class="wrap">
    <div class="header">
        <div class="headertop_desc">
            <div class="call">

            </div>
            <div class="account_desc">
                @auth
                    <ul>
                        <li><a href="{{route('userprofile')}}">Hesabım</a></li>
                        <li><a href="{{route('logout')}}">Çıkış</a></li>

                    </ul>

                @else
                    <ul>
                        <li><a href="/register">Kayıt Ol</a></li>
                        <li><a href="/login">Giriş</a></li>
                    </ul>
                @endauth
            </div>
            <div class="clear"></div>
        </div>
        <div class="header_top">
            <div class="logo">
                <a href="/"><img src="{{asset('assets')}}/images/logo.png" alt="" /></a>
            </div>
            <div class="cart">
                @auth
                    <p>Hoşgeldiniz! <span><a href="{{route('user_shopcart')}}">Sepetim:</a></span> {{\App\Http\Controllers\ShopcartController::countshopcart()}} item(s) -
                    </p>
                @endauth
            </div>
            <script type="text/javascript">
                function DropDown(el) {
                    this.dd = el;
                    this.initEvents();
                }
                DropDown.prototype = {
                    initEvents : function() {
                        var obj = this;

                        obj.dd.on('click', function(event){
                            $(this).toggleClass('active');
                            event.stopPropagation();
                        });
                    }
                }

                $(function() {

                    var dd = new DropDown( $('#dd') );

                    $(document).click(function() {
                        // all dropdowns
                        $('.wrapper-dropdown-2').removeClass('active');
                    });

                });

            </script>
            <div class="clear"></div>
        </div>
        <div class="header_bottom">
            <div class="menu">
                <ul>
                    <li class="active"><a href="/">Anasayfa</a></li>
                    <li><a href="{{route('aboutus')}}">Hakkımızda</a></li>
                    <li><a href="{{route('contact')}}">İletişim</a></li>
                    <div class="clear"></div>
                </ul>
            </div>
            <div class="search_box">
                <form>
                    <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
                </form>
            </div>
            <div class="clear"></div>
        </div>
