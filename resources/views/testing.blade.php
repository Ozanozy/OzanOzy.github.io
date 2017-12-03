
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
@foreach($CommentDetails as $CommentDetail)
<!-- Comment start--->
<div class="container">
    <div class="row">
        <div class="col-sm-8">
            <div class="panel panel-white post panel-shadow">
                <div class="post-heading">
                    <div class="pull-left image">

                        <?php
                            //dd($CommentDetail->fav_team);

                            //echo $resim;

                        $sayi = "$CommentDetail->fav_team";
                        //dd($sayi);
                         if ($sayi == 1)
                            {
                                //gs
                            $resim = $resim = "<img src='http://localhost/amatoryorumcular/storage/app/public/logo/1.png' class='img-circle avatar' height='60' width='50'>";
                            }
                          elseif($sayi == 2)
                          {    //beşiktaş
                              $resim = $resim = "<img src='http://localhost/amatoryorumcular/storage/app/public/logo/2.png' class='img-circle avatar' height='60' width='50'>";
                          }

                         elseif($sayi == 3)
                         {    //fenerbahçe
                             $resim = $resim = "<img src='http://localhost/amatoryorumcular/storage/app/public/logo/3.png' class='img-circle avatar' height='60' width='50'>";
                         }
                         elseif($sayi == 4)
                         {    //trabzon
                             $resim = $resim = "<img src='http://localhost/amatoryorumcular/storage/app/public/logo/4.png' class='img-circle avatar' height='60' width='50'>";
                         }
                         elseif($sayi == 5)
                         {    //başakşehir
                             $resim = $resim = "<img src='http://localhost/amatoryorumcular/storage/app/public/logo/5.png' class='img-circle avatar' height='60' width='50'>";
                         }
                         elseif($sayi == 6)
                         {    //diğer
                             $resim = $resim = "<img src='https://images.vexels.com/media/users/3/132253/isolated/preview/a3c1f54ba9b354556f29a1b28f25f265-soccer-shooting-silhouette-1-by-vexels.png' class='img-circle avatar' height='60' width='50'>";
                         }

                         elseif (empty($sayi))
                          {
                              //başakşehir
                              $resim = $resim = "<img src='http://pluspng.com/img-png/socar-vector-png-soccer-player-silhouette-1-png-512.png' class='img-circle avatar' height='60' width='50'>";
                          }
                        ;
                        //$resim = "http://bootdey.com/img/Content/user_1.jpg";
                        ?>

                        <?php
                        echo($resim);
                        ?>
                        &nbsp;
                            &nbsp;
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <h6 style="color:#000aff ">{{$CommentDetail->comment_title}}</h6>
                        </div>
                    </div>
                </div>
                <div class="post-description">
                    <br><br>
                    <h6>{{$CommentDetail->comment_text}}  </h6>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Comment end--->
@endforeach
