<!--{* OGP(Open Graph Protocol)用タグ読み込み *}-->
<!--{* TOPページ *}-->
<!--{if $arrPageLayout.is_top_page}-->
<!--{include file="../../`$smarty.const.OGP_TEMPLATE_DIR`/tpl/top.tpl"}-->
<!--{* 商品詳細 *}-->
<!--{elseif $arrPageLayout.is_product_page}-->
<!--{include file="../../`$smarty.const.OGP_TEMPLATE_DIR`/tpl/product.tpl"}-->
<!--{* カテゴリーページ *}-->
<!--{elseif $arrPageLayout.is_category_page}-->
<!--{include file="../../`$smarty.const.OGP_TEMPLATE_DIR`/tpl/category.tpl"}-->
<!--{* ページ詳細設定フリーページ *}-->
<!--{elseif $arrPageLayout.is_free_page}-->
<!--{include file="../../`$smarty.const.OGP_TEMPLATE_DIR`/tpl/free_page.tpl"}-->
<!--{* LP *}-->
<!--{elseif $arrPageLayout.is_lp_page}-->
<!--{include file="../../`$smarty.const.OGP_TEMPLATE_DIR`/tpl/lp.tpl"}-->
<!--{/if}-->
