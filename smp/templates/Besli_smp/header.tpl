<!--▼HEADER-->

<div class= header_logo id="other_pg_logo">
<a href="https://besliselect.com/smp/"><img src="<!--{$TPL_DIR}-->img/top/besli_logo_w.gif" alt="ベスリセレクト" /></a>
</div>

<div id="header_right">
		<ul>
			<!--{if 'basis-lp_only'|get_option_use_flg == false}-->

		<li class="info_mp">
				<input type="hidden" name="mode" value="login" />
				<input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME|escape}-->" value="<!--{$transactionid|escape}-->" />
				<input type="hidden" name="__PHPSESID" value="<!--{php}-->echo session_id();<!--{/php}-->" />
				<input type="hidden" name="url" value="<!--{$smarty.server.PHP_SELF|escape}-->" />
            

				<!--ここからハンバーガーメニュー-->
				<div class="hamburger-menu">
				<input type="checkbox" id="menu-btn-check">
				<label for="menu-btn-check" class="menu-btn"><span></span></label>
				<div class="menu-content">
					<ul>
					    <li>
							<a href="https://besliselect.com/smp/">TOPページ</a>
						</li>
						<li>
						<a href="/smp/entry/kiyaku.php">会員登録</a>
						</li>
						<li>
						<a href="/smp/mypage/login.php">マイページ</a>
						</li>
						<li>
							<a href="/smp/cart/index.php">カート</a>
						</li>
					</ul>
				</div>
			</div>



				<!--{if !$tpl_login}-->
					<!--<li class="h_btn">
						<span class="btn_touroku"><a href="/smp/entry/kiyaku.php">会員登録</a></span>
					</li>-->
				<!--{/if}-->
				<!--<li class="h_btn">
					<span class="btn_mypage"><a href="/smp/mypage/login.php">マイページ</a></span>
				</li>-->
			<!--{/if}-->
			<!--<li class="h_btn">
				<span class="btn_cart"><a href="/smp/cart/index.php">カート</a></span>
			</li>-->
		</ul>
	</div>
<!--▲HEADER-->