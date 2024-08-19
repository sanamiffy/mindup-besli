<div id="guidecolumn">
	<div class="guide_inner">
		<h2>お問い合わせ</h2>
		<p>お問い合わせはメールにて承っています。</p>
		<p class="attention">※ご注文に関するお問い合わせには、必ず「ご注文番号」と「お名前」をご記入の上、メールくださいますようお願いいたします。</p>
		<form name="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
			<input type="hidden" name="mode" value="confirm" />
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME|escape}-->" value="<!--{$transactionid|escape}-->" />

			<!--{$add_html}-->
			<div class="guide_info">
				<ul>
					<li class="guide_info_head">お名前<span class="attention">※</span></li>
					<li class="guide_info_inner02">
						<span class="attention"><!--{$arrErr.name01}--><!--{$arrErr.name02}--></span>
						姓&nbsp;<input type="text" class="box120" name="name01" value="<!--{$name01|default:$arrData.name01|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.name01|sfGetErrorColor}-->" />&nbsp;&nbsp;名&nbsp;<input type="text" class="box120" name="name02" value="<!--{$name02|default:$arrData.name02|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.name02|sfGetErrorColor}-->" />
					</li>
					<li class="guide_info_head">お名前(ﾌﾘｶﾞﾅ)<span class="attention">※</span></li>
					<li class="guide_info_inner02">
						<span class="attention"><!--{$arrErr.kana01}--><!--{$arrErr.kana02}--></span>
						ｾｲ&nbsp;<input type="text" class="box120" name="kana01" value="<!--{$kana01|default:$arrData.kana01|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.kana01|sfGetErrorColor}-->" />&nbsp;&nbsp;ﾒｲ&nbsp;<input type="text" class="box120" name="kana02" value="<!--{$kana02|default:$arrData.kana02|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.kana02|sfGetErrorColor}-->" />
					</li>
					
					<li class="guide_info_head">e-mail<span class="attention">※</span></li>
					<li class="guide_info_inner02">
						<span class="attention"><!--{$arrErr.email}--><!--{$arrErr.email02}--></span>
						<input type="text" autocorrect="off" autocapitalize="off" class="box380" name="email" value="<!--{$email|default:$arrData.email|escape}-->" maxlength="<!--{$smarty.const.MTEXT_LEN}-->" style="<!--{$arrErr.email|sfGetErrorColor}-->" /><br />
						<!--{* ログインしていれば入力済みにする *}-->
					</li>
					<li class="guide_info_head">問合せ内容<span class="attention">※</span></li>
					<li class="guide_info_inner02">
						<span class="attention"><!--{$arrErr.contents}--></span>
						<span class="mini">（全角<!--{$smarty.const.MLTEXT_LEN}-->字以下）</span>
						<textarea name="contents" class="area380" cols="60" rows="20" style="<!--{$arrErr.contents|sfGetErrorColor}-->"><!--{$contents|escape}--></textarea>
					</li>
				</ul>
			</div>
			<ul>
				<li class="sp_btn">
					<a href="javascript:void(0);" onclick="document.form1.submit();">確認ページへ<input type="hidden" name="confirm" /></a>
				</li>
			</ul>
			<p class="attention">
				※ 内容によっては回答をさしあげるのにお時間をいただくこともございます。また、土日、祝祭日、年末年始、夏季期間は翌営業日以降の対応となりますのでご了承ください。
			</p>
		</form>
	</div>
</div>

<!--
<div id="guidearea">
	<ul>
		<li class="level1"><a href="/smp/abouts/index.php">当サイトについて</a></li>
		<li class="level1"><a href="/smp/contact/index.php">お問い合わせ</a></li>
		<li class="level1"><a href="/smp/order/index.php">特定商取引に関する法律</a></li>
		<li class="level1"><a href="/smp/returning/index.php">返品について</a></li>
		<li class="level1_last"><a href="/smp/privacy/index.php">プライバシーポリシー</a></li>
	</ul>
</div> -->
