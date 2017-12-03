<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-6 col-sm-3" style="height: 75px; width: 975px; background-color:#333333;">
            <font face="Tahoma" size="25" color="white"><center>en yeni yazılar</center></font><br />

        </div>


    </div>
</div>

@foreach($limitposts as $limitpost)

    <div class="icerik_1">
        <a href="Post/{{ $limitpost->slug}}" class="ressss"><img height="150" width="450" src="/storage/{{ $limitpost->image}}"></a>
        <div class="yazi">
            <a href="Post/{{ $limitpost->slug}}" class="icerik_yazi_baslik">
                {{$limitpost->title}}
            </a>
            <span class="icerik_yazi">
             {{$limitpost->excerpt}}
                <p>
			</span>
        </div>
    </div>

@endforeach