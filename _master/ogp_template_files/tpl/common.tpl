<!--{if $arrPageLayout.ogp_img_http_url|strlen >= 1}-->
<meta property="og:title" content="<!--{$tpl_title|escape}--><!--{if $tpl_title}-->-[<!--{/if}--><!--{$arrSiteInfo.shop_name|escape}--><!--{if $tpl_title}-->]<!--{/if}-->" />
<meta property="og:type" content="product" />
<meta property="og:description" content="<!--{$arrPageLayout.description|escape}-->" />
<!--{if $canonical_url_for_view != ''}-->
<meta property="og:url" content="<!--{$canonical_url_for_view|escape}-->" />
<!--{else}-->
<meta property="og:url" content="<!--{$smarty.const.SSL_URL|escape}-->" />
<!--{/if}-->
<meta property="og:image" content="<!--{$arrPageLayout.ogp_img_https_url|escape}-->" />
<!--{if $arrPageLayout.ogp_img_https_url|strlen >= 1}-->
<meta property="og:image:secure_url" content="<!--{$arrPageLayout.ogp_img_https_url|escape}-->" />
<!--{/if}-->
<meta property="og:site_name" content="<!--{$arrSiteInfo.shop_name|escape}-->" />
<!--{/if}-->

