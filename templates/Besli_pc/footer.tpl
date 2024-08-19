<!--▼FOOTER-->
<div id="pagetop">
	<div id="pagetop_inner">
		<div class="button">
			<a href="#wrap"><p id="page-top">▲ PAGE TOP</p></a>
		</div>
	</div>
</div>
<div id="footer">
	<div id="footer_inner">
		<ul>
			<li><a href="/contact/index.php">お問い合わせ</a></li>
			<li><a href="/order/index.php">特定商取引に関する法律</a></li>
			<li><a href="/returning/index.php">返品について</a></li>
			<li><a href="/privacy/index.php">プライバシーポリシー</a></li>
		</ul>
		<br>
			<div class="copyright">
			<!--{$arrSiteInfo.copyright_pc|escape|replace:'&amp;copy;':'&copy;'}--><!--{* ←HTMLエスケープするが、&copy;を含む場合はエスケープせずに表示 *}-->
			</div>

<!--▼▼▼ロゴ表示ここから▼▼▼-->
<!--{if $smarty.const.RPST_FLG==true}-->
	<!--{if $smarty.const.TEMPLATE_NAME=="pr_default"}-->
		<!--{if $smarty.server.REQUEST_URI|regex_replace:"/\/shopping.*/":"shopping" eq "shopping"}-->
			<div style="float:right; margin-right: 20px;"><a href="http://rpst.jp"><img src="<!--{$smarty.const.URL_DIR}-->user_data/packages/pr_default/img/header/powered_by_rpst.png" /></a></div>
		<!--{/if}-->
		<!--{if $smarty.server.REQUEST_URI|regex_replace:"/\/cart.*/":"cart" eq "cart"}-->
			<div style="float:right; margin-right: 20px;"><a href="http://rpst.jp"><img src="<!--{$smarty.const.URL_DIR}-->user_data/packages/pr_default/img/header/powered_by_rpst.png" /></a></div>
		<!--{/if}-->
	<!--{/if}-->
<!--{/if}-->
<!--▲▲▲ロゴ表示ここまで▲▲▲-->

	</div>
</div>
<!--▲FOTTER-->

<script type="text/javascript">
$(function() {
	var topBtn = $('#page-top');	
	//スクロールしてトップ
    topBtn.click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 500);
		return false;
    });
});
</script>