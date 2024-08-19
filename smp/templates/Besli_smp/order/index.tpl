<div id="guidecolumn_smp">
	<h2>特定商取引に関する法律に基づく表記</h2>
	<dl>
		<dt>販売業者</dt>
		<dd><!--{$arrRet.law_company|escape}--></dd>
        
		<dt>運営責任者</dt>
		<dd><!--{$arrRet.law_manager|escape}--></dd>

			<dt>住所</dt>
			<dd>〒<!--{$arrRet.law_zip01|escape}-->-<!--{$arrRet.law_zip02|escape}--><br /><!--{$arrPref[$arrRet.law_pref]|escape}--><!--{$arrRet.law_addr01|escape}--><!--{$arrRet.law_addr02|escape}--></dd>
	
			<dt>電話番号</dt>
			<dd><!--{$arrRet.law_tel01|escape}-->-<!--{$arrRet.law_tel02|escape}-->-<!--{$arrRet.law_tel03|escape}--></dd>
	
			<dt>FAX番号</dt>
			<dd><!--{$arrRet.law_fax01|escape}-->-<!--{$arrRet.law_fax02|escape}-->-<!--{$arrRet.law_fax03|escape}--></dd>
	
			<dt>e-mail</dt>
			<dd><a href="mailto:<!--{$arrRet.law_email|escape:'hex'}-->"><!--{$arrRet.law_email|escape:'hexentity'}--></a></dd>
	
			<dt>URL</dt>
			<dd><a href="<!--{$arrRet.law_url|escape}-->"><!--{$arrRet.law_url|escape}--></a></dd>
	
			<dt>商品以外の必要代金</dt>
			<dd><!--{$arrRet.law_term01|escape|nl2br}--></dd>
	
			<dt>注文方法</dt>
			<dd><!--{$arrRet.law_term02|escape|nl2br}--></dd>
	
			<dt>支払方法</dt>
			<dd><!--{$arrRet.law_term03|escape|nl2br}--></dd>
	
      <dt>NP後払い決済に関して</dt>
      <dd>○このお支払方法の詳細 商品の到着を確認してから、「コンビニ」「郵便局」「銀行」「LINE Pay」で 後払いできる安心・簡単な決済方法です。請求書は、商品とは別に 郵送されますので、発行から14日以内にお支払いをお願いします。<br>
      ○ご注意 後払い手数料：105円 後払いのご注文には、株式会社ネットプロテクションズの提供する NP後払いサービスが適用され、サービスの範囲内で個人情報を提供し、 代金債権を譲渡します。ご利用限度額は累計残高で54,000円（税込）迄です。ご利用者が未成年の場合、法定代理人の利用同意を得てご利用ください。<br/>
<a href="http://np-atobarai.jp/about/" target="_blank"><img src="/gold/img/mindup/add/pay_later.png" ></a>
</dd>

			<dt>支払期限</dt>
			<dd><!--{$arrRet.law_term04|escape|nl2br}--></dd>
	
			<dt>引渡し時期</dt>
			<dd><!--{$arrRet.law_term05|escape|nl2br}--></dd>
	
			<dt>返品・交換について</dt>
			<dd><!--{$arrRet.law_term06|escape|nl2br}--></dd>
	</dl>
    
</div>
