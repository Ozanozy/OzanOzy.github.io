<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
@foreach($listeleulann as $listeleulan)
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
    <title>{{$listeleulan->category_name}}</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="../../magazine/style.css" media="screen" />
</head>
<body id="top">

            <div class="clearer">&nbsp;</div>
        </div>
       </div>
       </div>

<div id="site">
    <div class="center-wrapper">
        <div id="header">
            <div class="clearer">&nbsp;</div>
            <div id="site-title">
                <h1><a href="#">{{$listeleulan->category_name}}</a> <span></span></h1>
            </div>

        <div class="main" id="main-two-columns">
            <div class="left" id="main-left">
                <div class="post">
                    <div class="post-title">
                        &nbsp;
                        <h2><a href="#">{{$listeleulan->title}}</a></h2>
                        &nbsp;
                    </div>
                    <div class="post-body">
                        <p><a href="/Post/{{ $listeleulan->slug}}"><img src="/storage/{{ $listeleulan->image}}" height="300"  alt="" class="bordered" /></a></p>
                        <div class="post-date">{{$listeleulan->created_at}}</div>
                         </div>
                    @endforeach
                </div>
        <div id="footer">
            <div class="clearer">&nbsp;</div>
        </div>
    </div>
</div>
</body>
</html>
