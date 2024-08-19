<!--{printXMLDeclaration}--><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--{*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *}-->
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja" xml:lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$smarty.const.CHAR_CODE}-->" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" href="<!--{$TPL_DIR}-->css/common.css?<!--{$smarty.const.FRONT_CSS_VERSION}-->" type="text/css" media="all" />
<link rel="stylesheet" href="/css/jquery.lightbox-0.5.css?<!--{$smarty.const.FRONT_CSS_VERSION}-->" type="text/css" media="all" />
<link rel="stylesheet" href="/css/jquery-ui-1.8.22.custom.css?<!--{$smarty.const.FRONT_CSS_VERSION}-->" type="text/css" media="all" />
<!--{if $amazon_pay_enabled}-->
<link rel="stylesheet" href="<!--{$TPL_DIR}-->css/amazon_pay.css?<!--{$smarty.const.FRONT_CSS_VERSION}-->" type="text/css" media="all" />
<!--{/if}-->
<link rel="alternate" type="application/rss+xml" title="RSS" href="/rss/index.php" />
<link rel="shortcut icon" href="/gold/favicon.ico" type="image/vnd.microsoft.icon" />
<!--{if $amazon_client_id}-->
<script type='text/javascript'>
window.onAmazonLoginReady = function () {
    amazon.Login.setClientId('<!--{$amazon_client_id}-->');
    amazon.Login.setUseCookie(true);
};
</script>
<!--{/if}-->
<script type="text/javascript">var transactionid_name = '<!--{$smarty.const.TRANSACTION_ID_NAME|escape:'javascript'}-->';</script>
<!--{$pc_front_head|smarty:nodefaults}-->
<script type="text/javascript" src="/js/clone.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/css.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/navi.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/win_op.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/site.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<!--{if $smarty.server.SCRIPT_NAME == "/shopping/lp.php"}-->
<script type="text/javascript" src="/js/jquery.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<!--{else}-->
<script type="text/javascript" src="/js/jquery-1.9.1.min.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<!--{/if}-->
<!--{if $amazon_client_id}-->
<script type="text/javascript" src="/js/amazon_pay_parallel.js?<!--{$smarty.const.FRONT_JS_VERSION|escape}-->"></script>
<!--{/if}-->
<script type="text/javascript" src="/js/jquery.lightbox-0.5.min.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<script type="text/javascript" src="/js/tilescroller.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<script type="text/javascript" src="/js/bestproducts.js.php"></script>
<script type="text/javascript" src="/js/jquery-ui-1.8.22.custom.min.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<script type="text/javascript" src="/js/jquery.flexslider-min.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>
<script type="text/javascript" src="/js/owl.carousel.js?<!--{$smarty.const.FRONT_JS_VERSION}-->"></script>



<link rel="stylesheet" media="all" type="text/css" href="../gold/css/common2.css" />





<title><!--{$tpl_title|escape}--><!--{if $tpl_title}-->-[<!--{/if}--><!--{$arrSiteInfo.shop_name|escape}--><!--{if $tpl_title}-->]<!--{/if}--></title>
<meta name="author" content="<!--{$arrPageLayout.author|escape}-->" />
<meta name="description" content="<!--{$arrPageLayout.description|escape}-->" />
<meta name="keywords" content="<!--{$arrPageLayout.keyword|escape}-->" />

<!--{get_paygent_token_tag}-->
<!--{get_gmo_token_tag}-->
<!--{include file='../../ogp_template_files/ogp.tpl'}-->
<script type="text/javascript">//<![CDATA[
    <!--{$tpl_javascript}-->
//]]>
</script>

<!--▼バナースライダー-->
<script type="text/javascript">
        $(window).load(function() {
            $('.flexslider').css('width', '100%');
			$('.flexslider').css('height', 'auto');
            $('.flexslider').flexslider({
            slideshowSpeed: 5000,
            mousewheel: false,
			slideshow: true,
			animation: "slide",
    });
        });
    </script>

<!--▲バナースライダー エンド-->


<!--▼横並びスライダー-->
<script type="text/javascript">
  $(document).ready(function(){
	$('#slider1').owlCarousel({
        items : 5, //ブラウザの幅が1199px 以上の時 6
        itemsDesktop : [1199,5], // 1199px から 600px　まで 5つ
        itemsDesktopSmall : false, // betweem 900px and 601px
        itemsTablet: [600,4], //600px から 479px　まで　4つ
        itemsMobile : [479,2], // 479px　以下は 2つ
        autoPlay : true,
        stopOnHover : true,
        navigation : true
    });

	$('#slider2').owlCarousel({
        items : 5, //ブラウザの幅が1199px 以上の時 6
        itemsDesktop : [1199,5], // 1199px から 600px　まで 5つ
        itemsDesktopSmall : false, // betweem 900px and 601px
        itemsTablet: [600,4], //600px から 479px　まで　4つ
        itemsMobile : [479,2], // 479px　以下は 2つ
        autoPlay : true,
        stopOnHover : true,
        navigation : true
    });

	$('#slider3').owlCarousel({
        items : 5, //ブラウザの幅が1199px 以上の時 6
        itemsDesktop : [1199,5], // 1199px から 600px　まで 5つ
        itemsDesktopSmall : false, // betweem 900px and 601px
        itemsTablet: [600,4], //600px から 479px　まで　4つ
        itemsMobile : [479,2], // 479px　以下は 2つ
        autoPlay : true,
        stopOnHover : true,
        navigation : true
    });

  });
</script>
<!--▲横並びスライダー エンド-->


<!--▼開閉-->
<script type="text/javascript">
$(document).ready(function(){


$(".news_acd dt").click(function(){
    $(this).next("dd").slideToggle();
    $(this).next("dd").siblings("dd").slideUp();
    $(this).toggleClass("open");
    $(this).siblings("dt").removeClass("open");
});

});
</script>



<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-138683657-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-138683657-1');
</script>

<!-- Yahoo サイトジェネラルタグ -->
<script async src="https://s.yimg.jp/images/listing/tool/cv/ytag.js"></script>
<script>
window.yjDataLayer = window.yjDataLayer || [];
function ytag() { yjDataLayer.push(arguments); }
ytag({"type":"ycl_cookie"});
</script>



<meta name="google-site-verification" content="iYlfAQbmmfFLSOioOs6lJ1DPKFrGgnljgk3IF4TxXqo" />


<!--▼開閉 エンド-->
<!--{if 'basis-line_app'|get_option_use_flg}-->
    <!--{get_line_tag}-->
    <!--{get_line_prof_js}-->
<!--{/if}-->

<!--{get_token_payment_tag_headers}-->
<!--{get_token_payment_tag_process}-->
</head>

<!-- ▼BODY部 スタート -->
<!--{include file='./site_main.tpl'}-->
<!-- ▲BODY部 エンド -->
<!--{*
下記GoogleEコマース、Googleアナリティクスのプログラムは専用SSL用のプログラムであり、共有SSLの場合ご使用になれませんのでご了承下さい。
共有SSLでの利用をご希望の場合はご相談下さい。
*}-->
<!-- ▼GoogleEコマース-->
<!--{if in_array($smarty.server.PHP_SELF, array("/shopping/complete.php", "/chat_form/complete.php"), true) && $arrGAOrder && $arrGAOrderDetail}-->
<script type="text/javascript">

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-XXXXXXXX-1', 'auto');
  ga('send', 'pageview');

  ga('require', 'ecommerce');
ga('ecommerce:addTransaction', {
  'id': '<!--{$arrGAOrder.order_id}-->',                     // Transaction ID. Required.
  'affiliation': '<!--{$arrGAOrder.shop_name|escape}-->',   // Affiliation or store name.
  'revenue': '<!--{$arrGAOrder.total_without_tax_shipping}-->',               // Grand Total.
  'shipping': '<!--{$arrGAOrder.shipping_total}-->',                  // Shipping.
  'tax': '<!--{$arrGAOrder.tax}-->'                     // Tax.
});

<!--{section name=cnt loop=$arrGAOrderDetail}-->
ga('ecommerce:addItem', {
  'id': '<!--{$arrGAOrder.order_id}-->',                     // Transaction ID. Required.
  'name': '<!--{$arrGAOrderDetail[cnt].product_name|escape}-->',    // Product name. Required.
  'sku': '<!--{$arrGAOrderDetail[cnt].product_code|escape}-->',                 // SKU/code.
  'category': '<!--{$arrGAOrderDetail[cnt].category_name|escape}-->',         // Category or variation.
  'price': '<!--{$arrGAOrderDetail[cnt].tax_added_price}-->',                 // Unit price.
  'quantity': '<!--{$arrGAOrderDetail[cnt].quantity}-->'                   // Quantity.
});
<!--{/section}-->

  ga('ecommerce:send');
</script>
<!-- ▲GoogleEコマース-->
<!--{else}-->
<!-- ▼Googleアナリティクス-->
<script type="text/javascript">

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-XXXXXXXX-1', 'auto');
  ga('send', 'pageview');

</script>
<!-- ▲Googleアナリティクス -->

<!--{/if}-->

<!--{if $arrSiteInfo.fanplayr_accesskey && strpos($SCRIPT_NAME, 'shopping/') === false}-->
<!-- ▼ Fanplayr -->
<script type="text/javascript">
(function(d, w, s) {
    var f = w.fanplayr = w.fanplayr || { _i:[] };
    f._i.push({
        type:          'st',
        accountKey:    '<!--{$arrSiteInfo.fanplayr_accesskey}-->',
        data:{
            lineItemCount: Number(999),
            numItems:      Number(999),
            subTotal:      <!--{$fanplayr_cart.total_price}-->,
            total:         <!--{$fanplayr_cart.total_price}-->,
            discount:      0,
            couponCode:    '',
            pageType:      '<!--{$fp_pageType}-->',
            categoryId:    '',
            categoryName:  '',
            productId:     '<!--{if $fp_pageType == "prod"}--><!--{$arrProduct.product_id}--><!--{/if}-->',
            productName:   '<!--{if $fp_pageType == "prod"}--><!--{$arrProduct.name}--><!--{/if}-->',
            currency:      'JPY',
            customerEmail: '<!--{if $tpl_login}--><!--{$tpl_email}--><!--{/if}-->',
            customerId:    '<!--{if $tpl_login}--><!--{$tpl_customer_id}--><!--{/if}-->',
            shopType:      'custom',
            version:       3
        },
        applyToCartUrl: encodeURIComponent('<!--{$smarty.const.SSL_URL}-->fanplayr/?rtn=<!--{$fp_path}-->&ccode=%c'),
        deputizeUrl: encodeURIComponent('')
    });
    var js = d.createElement(s);
    var fjs = d.getElementsByTagName(s)[0];
    js.async = true;
    js.src  = 'https://d1q7pknmpq2wkm.cloudfront.net/js/my.fanplayr.com/fp_smart.js?' + (new Date().getTime());
    fjs.parentNode.insertBefore(js, fjs);
})(document, window, 'script');
</script>
<!-- ▲ Fanplayr -->
<!--{/if}-->
</html>
