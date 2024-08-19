<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$smarty.const.CHAR_CODE}-->" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta name="author" content="<!--{$arrPageLayout.author|escape}-->" />
<meta name="description" content="<!--{$arrPageLayout.description|escape}-->" />
<meta name="keywords" content="<!--{$arrPageLayout.keyword|escape}-->" />
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width,user-scalable=no">
<script type="text/javascript">var transactionid_name = '<!--{$smarty.const.TRANSACTION_ID_NAME|escape:'javascript'}-->';</script>
<!--{$pc_front_head|smarty:nodefaults}-->
<!--{include file='../../ogp_template_files/ogp.tpl'}-->
<link rel="stylesheet" href="/css/jquery-ui-1.8.22.custom.css" type="text/css" media="all" />
<link rel="stylesheet" href="<!--{$TPL_DIR}-->css/import.css?<!--{$smarty.const.FRONT_CSS_VERSION}-->" type="text/css" media="all" />
<!--{if $amazon_pay_enabled}-->
<link rel="stylesheet" href="<!--{$TPL_DIR}-->css/amazon_pay.css?<!--{$smarty.const.FRONT_CSS_VERSION}-->" type="text/css" media="all" />
<!--{/if}-->
<link rel="alternate" type="application/rss+xml" title="RSS" href="/rss/index.php" />
<title><!--{$tpl_title|escape}--><!--{if $tpl_title}-->-[<!--{/if}--><!--{$arrSiteInfo.shop_name|escape}--><!--{if $tpl_title}-->]<!--{/if}--><!--{$page_title_add_str}--></title>
<!--{if $amazon_client_id}-->
<script type='text/javascript'>
window.onAmazonLoginReady = function () {
    amazon.Login.setClientId('<!--{$amazon_client_id}-->');
    amazon.Login.setUseCookie(true);
};
</script>
<script type="text/javascript">
    function getURLParameter(name, source) {
        return decodeURIComponent((new RegExp('[?|&|#]' + name + '=' + '([^&]+?)(&|#|;|$)').exec(source) || [,""])[1].replace(/\+/g,'%20')) || null;
    }
    var accessToken = getURLParameter("access_token", location.hash);
    if (typeof accessToken === 'string' && accessToken.match(/^Atza/)) {
        document.cookie = "amazon_Login_accessToken=" + accessToken + ";secure";
        var href= location.href;
        var conjunction = location.search.indexOf('?') == -1 ? '?' : '&';
        if (href.indexOf('redirect=yes') == -1) {
            location.href=href.split('#')[0] + conjunction + 'redirect=yes';
        }
    }
    <!--{if $redirect_flg}-->
    location.href = '<!--{$smarty.const.SSL_URL}-->smp/shopping/amazon_pay.php';
    <!--{/if}-->
    <!--{if $access_token}-->
    accessToken = '<!--{$access_token}-->';
    <!--{/if}-->
</script>
<!--{/if}-->
<script type="text/javascript" src="/js/jquery.js"></script>
<!--{if $amazon_client_id}-->
<script type="text/javascript" src="/js/amazon_pay_parallel.js?<!--{$smarty.const.FRONT_JS_VERSION|escape}-->"></script>
<!--{/if}-->
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/navi.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/win_op.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/site.js"></script>
<!--<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>-->
<script type="text/javascript" src="/js/load.template.js.php"></script>
<script type="text/javascript" src="/js/load.products.js.php"></script>
<script type="text/javascript" src="/js/jquery-ui-1.8.22.custom.min.js"></script>
<!--{if $arrPageLayout.is_my_page}-->
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/tooltip.js"></script>
<!--{/if}-->

<script type="text/javascript">//<![CDATA[
    <!--{$tpl_javascript}-->
//]]>
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


<link rel="stylesheet" media="all" type="text/css" href="/user_data/css/common2.css" />


<!--{get_paygent_token_tag}-->
<!--{get_gmo_token_tag}-->
<!--{if 'basis-line_app'|get_option_use_flg}-->
    <!--{get_line_tag}-->
    <!--{get_line_prof_js}-->
<!--{/if}-->

<!--{get_token_payment_tag_headers}-->
<!--{get_token_payment_tag_process}-->
</head>
<!-- ▼BODY部 スタート -->
<!--{include file="`$smarty.const.S_TEMPLATE_PATH`/site_main.tpl"}-->
<!-- ▲BODY部 エンド -->
<!--{*
下記GoogleEコマース、Googleアナリティクスのプログラムは専用SSL用のプログラムであり、共有SSLの場合ご使用になれませんのでご了承下さい。
共有SSLでの利用をご希望の場合はご相談下さい。
*}-->
<!-- ▼GoogleEコマース-->
<!--{if in_array($smarty.server.PHP_SELF, array("/smp/shopping/complete.php", "/smp/chat_form/complete.php"), true) && $arrGAOrder && $arrGAOrderDetail}-->
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
<!--{/if}-->
<!-- ▲Googleアナリティクス-->
</html>
