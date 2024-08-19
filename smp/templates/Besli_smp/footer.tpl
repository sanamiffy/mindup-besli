<!--▼FOOTER-->

<div id="footer">
	<!--{$arrSiteInfo.copyright_pc|escape|replace:'c':'c'}--><!--{* ←HTMLエスケープするが、cを含む場合はエスケープせずに表示 *}-->
</div>
<!--▼▼▼ロゴ表示ここから▼▼▼-->
<!--{if $smarty.const.RPST_FLG==true}-->
	<!--{if $smarty.const.S_TEMPLATE_NAME=="pr_default"}-->
		<!--{if $smarty.server.REQUEST_URI|regex_replace:"/\/smp\/shopping.*/":"shopping" eq "shopping"}-->
			<div style="text-align: center; margin:5px;"><a href="http://rpst.jp"><img src="/user_data/packages/pr_default/img/header/powered_by_rpst.png" /></a></div>
		<!--{/if}-->
		<!--{if $smarty.server.REQUEST_URI|regex_replace:"/\/smp\/cart.*/":"cart" eq "cart"}-->
			<div style="text-align: center; margin:5px;"><a href="http://rpst.jp"><img src="/user_data/packages/pr_default/img/header/powered_by_rpst.png" /></a></div>
		<!--{/if}-->
	<!--{/if}-->
<!--{/if}-->
<!--▲▲▲ロゴ表示ここまで▲▲▲-->

<!--▲FOOTER-->