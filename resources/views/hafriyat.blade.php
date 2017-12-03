    <!doctype html>
<?php error_reporting(0) ?>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Amatör Yorumcular</title>
    <meta name="keywords" content="../">
    <meta name="description" content="../">
    <meta name="author" content="Adem Coşkun">
    <meta name="classification" content="web tasarım">
    <meta name="googlebot" content="All, Index, Follow" />
    <meta name="Robots" content="All, Index, Follow" />
    <meta name="revisit-after" content="7 days">
    <meta name="rating" content="General" />
    <meta name="expires" content="no" />
    <meta name="language" content="turkish, TR" />
    <meta name="distribution" content="Global" />
    <meta name="googlebot" content="NOODP" />
    <meta name="robots" content="all" />
    <meta name="robots" content="follow" />
    <meta name="robots" content="index" />
    <meta name="distribution" content="global" />
    <meta name="revisit-after" content="1 Day" />
    <meta http-equiv="Copyright" content="Copyright © webturkuaz.com">

    <!-- ============ Styles ============ -->
    <link rel="stylesheet" href="../../omerbozalan/assets/styles/reset.css" type="text/css" />
    <link rel="stylesheet" href="../../omerbozalan/assets/styles/custom.css" type="text/css" />
    <link rel="stylesheet" href="../../omerbozalan/assets/font/font.css" type="text/css" />

    <!-- ============ Font-Awesome ============ -->
    <link rel="stylesheet" href="../../omerbozalan/assets/styles/font-awesome.css" type="text/css" />

    <!-- ============ Mobil CSS ============ -->
    <link rel="stylesheet" href="../../omerbozalan/assets/mobile/media-queries.css" type="text/css" />

    <!-- ============ Google Font ============ -->

    <!-- ============ Fav-Icon ============ -->
    <link rel="Shortcut Icon" href="../../omerbozalan/assets/images/icons/fav_icon.png" type="image/x-icon">

    <!-- Scripts -->
    <script type="text/javascript" src="../../omerbozalan/assets/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="../../omerbozalan/assets/scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../../omerbozalan/assets/scripts/custom.js"></script>


    <!-- Add jQuery assetsrary -->
    <script type="text/javascript" src="../../omerbozalan/assets/scripts/jquery-1.10.1.min.js"></script>

    <!-- Add mousewheel plugin (this is optional) -->
    <script type="text/javascript" src="../../omerbozalan/assets/scripts/jquery.mousewheel-3.0.6.pack.js"></script>

    <!-- Add fancyBox main JS and CSS files -->
    <script type="text/javascript" src="../../omerbozalan/assets/source/jquery.fancybox.js?v=2.1.5"></script>
    <link rel="stylesheet" type="text/css" href="../../omerbozalan/assets/source/jquery.fancybox.css?v=2.1.5" media="screen" />

    <!-- Add Button helper (this is optional) -->
    <link rel="stylesheet" type="text/css" href="../../omerbozalan/assets/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
    <script type="text/javascript" src="../../omerbozalan/assets/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

    <!-- Add Thumbnail helper (this is optional) -->
    <link rel="stylesheet" type="text/css" href="../../omerbozalan/assets/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
    <script type="text/javascript" src="../../omerbozalan/assets/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

    <!-- Add Media helper (this is optional) -->
    <script type="text/javascript" src="../../omerbozalan/assets/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            /*
             *  Simple image gallery. Uses default settings
             */

            $('.fancybox').fancybox();

            /*
             *  Different effects
             */

            // Change title type, overlay closing speed
            $(".fancybox-effects-a").fancybox({
                helpers: {
                    title : {
                        type : 'outside'
                    },
                    overlay : {
                        speedOut : 0
                    }
                }
            });

            // Disable opening and closing animations, change title type
            $(".fancybox-effects-b").fancybox({
                openEffect  : 'none',
                closeEffect	: 'none',

                helpers : {
                    title : {
                        type : 'over'
                    }
                }
            });

            // Set custom style, close if clicked, change title type and overlay color
            $(".fancybox-effects-c").fancybox({
                wrapCSS    : 'fancybox-custom',
                closeClick : true,

                openEffect : 'none',

                helpers : {
                    title : {
                        type : 'inside'
                    },
                    overlay : {
                        css : {
                            'background' : 'rgba(238,238,238,0.85)'
                        }
                    }
                }
            });

            // Remove padding, set opening and closing animations, close if clicked and disable overlay
            $(".fancybox-effects-d").fancybox({
                padding: 0,

                openEffect : 'elastic',
                openSpeed  : 150,

                closeEffect : 'elastic',
                closeSpeed  : 150,

                closeClick : true,

                helpers : {
                    overlay : null
                }
            });

            /*
             *  Button helper. Disable animations, hide close button, change title type and content
             */

            $('.fancybox-buttons').fancybox({
                openEffect  : 'none',
                closeEffect : 'none',

                prevEffect : 'none',
                nextEffect : 'none',

                closeBtn  : false,

                helpers : {
                    title : {
                        type : 'inside'
                    },
                    buttons	: {}
                },

                afterLoad : function() {
                    this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
                }
            });


            /*
             *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
             */

            $('.fancybox-thumbs').fancybox({
                prevEffect : 'none',
                nextEffect : 'none',

                closeBtn  : false,
                arrows    : false,
                nextClick : true,

                helpers : {
                    thumbs : {
                        width  : 50,
                        height : 50
                    }
                }
            });

            /*
             *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
            */
            $('.fancybox-media')
                .attr('rel', 'media-gallery')
                .fancybox({
                    openEffect : 'none',
                    closeEffect : 'none',
                    prevEffect : 'none',
                    nextEffect : 'none',

                    arrows : false,
                    helpers : {
                        media : {},
                        buttons : {}
                    }
                });

            /*
             *  Open manually
             */

            $("#fancybox-manual-a").click(function() {
                $.fancybox.open('1_b.jpg');
            });

            $("#fancybox-manual-b").click(function() {
                $.fancybox.open({
                    href : 'iframe.html',
                    type : 'iframe',
                    padding : 5
                });
            });

            $("#fancybox-manual-c").click(function() {
                $.fancybox.open([
                    {
                        href : '1_b.jpg',
                        title : 'My title'
                    }, {
                        href : '2_b.jpg',
                        title : '2nd title'
                    }, {
                        href : '3_b.jpg'
                    }
                ], {
                    helpers : {
                        thumbs : {
                            width: 75,
                            height: 50
                        }
                    }
                });
            });


        });
    </script>

    <!-- ============ Simple image gallery ============ -->
    <!-- <a class="fancybox" href="1_b.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="1_s.jpg" alt="" /></a> -->

    <!-- ============ Different effects ============ -->
    <!-- <a class="fancybox-effects-a" href="5_b.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit"><img src="5_s.jpg" alt="" /></a> -->

</head>
<body>
<iframe src="http://www.iddaatahmin.com/addsite.php?type=1&skin=3"
        align="middle" scrolling="yes" width="1340" height="50" frameborder="0" style="background: #333"  name="wsite" id="wsite"></iframe>
<!-- enust-alt -->
@include('header');
</head>
<body>
<!-- orta -->
<div class="orta">
    <!-- ortala -->
    <div class="ortala">
        <!-- slider -->
        <!-- slider -->
       @include('standard')
        <div class="icerik">
            <!-- icerik_1 -->
            @include('GalleryLimit')
            <!-- icerik_1 -->
            <!-- icerik_2 -->
                </div>
            </div><!-- icerik_4 -->
        </div><!-- icerik -->
    </div><!-- ortala -->
</div><!-- orta -->

<!-- enalt -->
<div class="enalt">
    <!-- ortala -->
    <div class="ortala">
        <!-- enalt_yazi -->
        <span class="enalt_yazi">Copyright © Amatoryorumcular.com 2017 Tüm hakları <font color="#ba272d"></font> aittir.</span><!-- enalt_yazi -->

        <!-- icon -->
        <span class="icon">
			<a target="_blank" href="#"><img src="../../omerbozalan/assets/images/g.jpg"></a>
		</span><!-- icon -->

        <!-- icon -->
        <span class="icon">
			<a target="_blank" href="#"><img src="../../omerbozalan/assets/images/t.jpg"></a>
		</span><!-- icon -->

        <!-- icon -->
        <span class="icon">
			<a target="_blank" href="https://www.facebook.com/"><img src="assets/images/f.jpg"></a>
		</span><!-- icon -->
    </div><!-- ortala -->
</div><!-- enalt -->


</body>
</html>
