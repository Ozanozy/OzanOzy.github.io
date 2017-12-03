<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<?php  error_reporting(0); ?>
<head>
    <title>{{$PostDetails->title}}</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="../../magazine/style.css" media="screen" />
</head>
<body id="top">
<div id="network">
    <div class="center-wrapper">
        <div class="right">
            <div class="clearer">&nbsp;</div>
        </div>
        <div class="clearer">&nbsp;</div>
    </div>
</div>

<div id="site">
    <div class="center-wrapper">
        <div id="header">
            <div class="right" id="toolbar"> <a href="#"> <a href="#"><img src="img/icon-minus.gif" width="20" height="20" alt="" /></a> </div>
            <div class="clearer">&nbsp;</div>
            <div id="site-title">
                <h1><a href="/">Amatör Yorumcular</a> <span> / Sizde Yorum Yapın</span></h1>
            </div>
            <div id="navigation">
                <div id="main-nav">
                    <div class="clearer">&nbsp;</div>
                </div>
                <div id="sub-nav">

                    <div class="clearer">&nbsp;</div>
                </div>
            </div>
        </div>
        <div class="main" id="main-three-columns">
            <div class="left" id="main-left">
                <div class="post">
                    <div class="post-title">
                        <h2>{{$PostDetails->title}}</h2></div>
                       &nbsp
                    <div class="post-body">
                        <p><a href="#"><img src="/storage/{{ $PostDetails->image}}" height="320" width="600"  style="border: double #0216ff" alt=""></a></p>
                        <p> {!! $PostDetails->body !!} <p>
                            <h5><p><span class="meta"> {{ $AuthorDetails->name}} Tarafından {{ $PostDetails->created_at}} Tarihinde yazıldı</span>
                        </p></h5>

                    </div>
                </div>
                      <hr>
                        <!-- <img class="media-object" src="http://placehold.it/64x64" alt=""> -->
                        </a>
                        <div class="media-body">
                            @foreach($comments as $commentw)
                            {
                            <h4 class="media-heading">{{$commentw->comment_name}}
                             <small>{{$commentw->created_at}}</small>
                            </h4>
                            {{$commentw->comment_text}}
                        </div>
                            }
                        @endforeach
                    <form action="/PostComment" method="post">
                       <h3>Takımınız</h3>
                        <select name="fav_team"  id="fav_team" size="6">
                            <option value="1">Galatasaray</option>
                            <option value="2">Beşiktaş</option>
                            <option value="3">Fenerbahçe</option>
                            <option value="4">Trabzonspor</option>
                            <option value="5">Başakşehir</option>
                            <option value="6">Diğer</option>
                        </select>
                        <input name="makale_id" type="hidden" value={{$PostDetails->id}}><input/>
                        <input name="comment_title" type="text" class="form-control" id="comment_title" maxlength="15"  placeholder="İsminiz"></input>
                        <input name="comment_text" type="text" class="form-control" id="comment_text" maxlength="132"  minlength="10"
                        placeholder="Yorumunuzu Yazın" style="height:65px"></input>
                        <input type="submit" value="Gönder">
                        {{ csrf_field() }}
                    </form>
                </div><hr>
                <!-- Comments Show -->
           @include("testing")
            <!--
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="panel panel-white post panel-shadow">
                            <div class="post-heading">
                                <div class="pull-left image">
                                    <img src="http://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" height="60" width="70" alt="user profile image">
                                </div>
                                <div class="pull-left meta">
                                    <div class="title h5">
                                        <h2>Yorum Başlığı<br></h2></a>
                                    </div>
                                </div>
                            </div>
                            <div class="post-description">
                                <br><br>
                                <h6>Yorum yazısı  </h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            -->
            <!-- Comments end--->
                <hr>
                <left><h2><p>En çok beğenilenler</p></h2></left>
                <div class="col2 center">
                    <div class="column-content">
                        <div class="post">
                            <!-- en cok beğenilenler rating pluging -->
                            @foreach($Latests as $Latest)
                            <a href="#"><img src="/storage/{{$Latest->image}}" height="100" width="250" alt="" class="bordered" /></a>
                            <h5><a href="#">{{ $Latest->title}}</a></h5>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="clearer">&nbsp;</div>
            </div>

            <div class="right sidebar" id="sidebar-2">
                <iframe src="https://www.fotomac.com.tr/sitene-ekle-app/haberler/1" scrolling="no" frameborder="0" width="226" height="384"></iframe>
                        <div class="section">
                            <div class="section-title">
                                <div class="left">En Yeni Yazılar</div>
                                <div class="right"><img src="../../magazine/img/icon-time.gif" width="14" height="14" alt="" /></div>
                                <div class="clearer">&nbsp;</div>
                            </div>
                            <div class="section-content">
                                <ul class="nice-list">
                                    <!-- en yeni yazilar bolumu -->

                                @foreach($Latests as $Latest) <li>
                                <div class="left">
                                            <p><a href="#"><img src="/storage/{{$Latest->image}}"  height="100" width="190" alt="" class="bordered" /></a></p>
                                            <p> {{$Latest->title}} </p>
                                </div>
                                <div class="right">{{$Latest->created_at}}</div>
                                <div class="clearer">&nbsp;</div>
                            </li>
                            @endforeach
                            </ul>
                    </div>
                </div>
                <script language="javascript" src="http://ic.sitekodlari.com/superligpuandurumu1.js"></script>
                        </ul>
                    </div>
                </div>
                </div>
            </div>
            <div class="clearer">&nbsp;</div>
        </div>
            </div>
            <div class="clearer">&nbsp;</div>
        </div>
    </div>
</div>



        <div id="footer">
            <div class="left">&copy; 2017 Amator Yorum <span class="text-separator">&rarr;</span> </div>
            <div class="right"><a href="http://templates.arcsin.se/">Website template</a> by <a href="http://arcsin.se/">Exertion IT</a></div>
            <div class="clearer">&nbsp;</div>
        </div>
    </div>
</div>
</body>
</html>



