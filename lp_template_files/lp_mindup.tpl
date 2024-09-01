<!--{if $layout == 'lp_header'}-->
<!--{* ↓↓ヘッダーデザイン↓↓ *}-->


<script>
$(function(){
  $(".auto_select_name").click(function(){
    var product_id = $(this).attr("data-value-name");
    $("#product_id").val(product_id);
    $('#class_category_select').empty();
    lp_init(product_id, $('#quantity').val(), null);
  });
});
</script>


<link rel="stylesheet" media="all" type="text/css" href="../gold/css/common.css" />
<link rel="stylesheet" media="all" type="text/css" href="../gold/css/mindup_smt.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="<../../../gold/js/scrollsmoothly.js"></script>

<div id="mu_pc_lp_out">
<div id="mu_pc_lp">



<!--トップビジュアル-->
<div><a href="/smp/contact/index.php" target="_blank"><img src="../../gold/img/mindup/top/top_header.jpg" alt="ベスリセレクト" /></a></div>
<div id="mu_top_mainvis"><img src="../../gold/img/mindup/top/top_mainvis_smt.jpg" alt="マインドアップ" /></div>

<!--<h2 id="maincopy">"フェニルアラニン"、"ハーブ"を<br>中心としたサポート成分配合</h2>-->


<!--トップ購入1ボタン-->
<a href="#buy_select"><img src="../../gold/img/mindup/buy/top_buy_btn_smt.jpg" alt="購入ボタン" /></a>


<!--トップ_おすすめ-->
<img src="../../gold/img/mindup/concern/concern00_smt.jpg" alt="こんな方におすすめです" />


<!--トップ_ドクター-->
<div id="mu_top_doctor">
<div id="mu_top_doctor_in">
<img src="../../gold/img/mindup/doctor/doctor01_smt.jpg" alt="現役のドクターがこだわり抜いて企画•開発。納得のサプリメント「マインドアップ/MIND UP」" />

<img src="../../gold/img/mindup/doctor/doctor01_tk0_smt.jpg" alt="" />
<img src="../../gold/img/mindup/doctor/doctor01_tk1_smt.jpg" alt="" />
<img src="../../gold/img/mindup/doctor/doctor01_tk2_smt.jpg" alt="" />
<img src="../../gold/img/mindup/doctor/doctor01_tk3_smt.jpg" alt="" />

</div>
</div>

<!--トップ_メリット-->
<img src="../../gold/img/mindup/explain/explain_00_smt.jpg" alt="マインドアップメリット" />


<!--ユーザーボイス-->
<div id="mu_uservoice">
<ul>
<img src="../../gold/img/mindup/voice/usersvoice_tit_smt.jpg" alt="お客様から、共感の声をいただいています。"/>
<li><img src="../../gold/img/mindup/voice/user01_smt.jpg" alt="お客様の声１" /></li>
<li><img src="../../gold/img/mindup/voice/user02_smt.jpg" alt="お客様の声２" /></li>
<li><img src="../../gold/img/mindup/voice/user03_smt.jpg" alt="お客様の声３" /></li>
<li><img src="../../gold/img/mindup/voice/user04_smt.jpg" alt="お客様の声4" /></li>
</ul>

</div>



<!--3つのポイント-->
<div id="mu_3point">
<ul>
<li><img src="../../gold/img/mindup/explain/explain_3point_1_smt.jpg" alt="セルフケア3つのポイント1" /></li>
<li><img src="../../gold/img/mindup/explain/explain_3point_2_smt.jpg" alt="セルフケア3つのポイント2" /></li>
<li><img src="../../gold/img/mindup/explain/explain_3point_3_smt.jpg" alt="セルフケア3つのポイント3" /></li>
<li><img src="../../gold/img/mindup/explain/explain_3point_4_smt.jpg" alt="ドクター自らが必要な栄養素を見極め、バランスよく配合したサプリメント それがマインドアップです。" /></li>
</ul>
</div>



<!--成分-->

<div id="mu_top_element2">
<div id="mu_top_element2_in">


<div id="element2_list2">
<ul>
<li><img src="../../gold/img/mindup/elements/element_each_00_smt.jpg" alt="ドクターこだわりの厳選成分" /></li>
<li><img src="../../gold/img/mindup/elements/element_each_01_smt.jpg" alt="フェニルアラニン" /></li>
<li><img src="../../gold/img/mindup/elements/element_each_02_smt.jpg" alt="ラフマエキス" /></li>
<li><img src="../../gold/img/mindup/elements/element_each_03_smt.jpg" alt="SAMe含有酵母" /></li>
<li><img src="../../gold/img/mindup/elements/element_each_04_smt.jpg" alt="トリプトファン" /></li>
<li><img src="../../gold/img/mindup/elements/element_each_05_smt.jpg" alt="ギャバ" /></li>
<li><img src="../../gold/img/mindup/elements/element_each_06_smt.jpg" alt="葉酸" /></li>
<li><img src="../../gold/img/mindup/elements/element_each_07_smt.jpg" alt="ビタミン６＆１２" /></li>
</ul>
</div>

</div></div>





<!--Q&A

<div id="mu_qanda">


<img src="../../gold/img/mindup/others/qanda_tit.gif" alt="よくあるご質問" />


	<label for="inbox1">▶︎ 1日何粒摂取するのですが？</label>
	<input type="checkbox" id="inbox1" class="on-off">
    <div><p>1日3粒を目安に摂取してください。</p></div>


	<label for="inbox2">▶ ︎1日の摂取量の上限はありますか？</label>
	<input type="checkbox" id="inbox2" class="on-off">
    <div><p>上限は特に設けていませんが、1度に大量に摂取することはお控えください。</p></div>
    

	<label for="inbox3">▶ 1袋で何日分ですか？</label>
	<input type="checkbox" id="inbox3" class="on-off">
    <div><p>1袋あたり30日分となります。</p></div>
    
    

	<label for="inbox4">▶︎ いま薬を常用していますが、他の薬と併用しても大丈夫ですか？</label>
	<input type="checkbox" id="inbox4" class="on-off">
    <div><p>基本的には問題はございませんが、一度かかりつけのお医者様とご相談ください。</p></div>
    

	<label for="inbox5">▶ 返品は可能ですか？</label>
	<input type="checkbox" id="inbox5" class="on-off">
    <div><p>「定期お届け便」は、購入から30日間返品可能です。「単品購入」の場合、購入後の返品は受け付けておりませんので、ご注意ください。</p></div>
    

	<label for="inbox6">▶ ︎送料はいくらですか？</label>
	<input type="checkbox" id="inbox6" class="on-off">
    <div><p>送料は無料です。</p></div>
    

	<label for="inbox7">▶ 電話やＦＡＸでの注文は出来ますか？</label>
	<input type="checkbox" id="inbox7" class="on-off">
    <div><p>申し訳ございませんが、現在のところインターネットでのご注文のみ承っております。</p></div>
    
    	<label for="inbox8">▶支払い方法は何がありますか？</label>
	<input type="checkbox" id="inbox8" class="on-off">
    <div><p>クレジットカード決済がご利用になれます。</p></div>
    
    	<label for="inbox9">▶健康相談とはどういったものですか？</label>
	<input type="checkbox" id="inbox9" class="on-off">
    <div><p>簡単に健康に関するご相談を承ります。個別性の高いご質問に関しては、メールでのご相談ゆえ、お応え出来かねる場合がございますのであらかじめご了承ください。</p></div>
    
       <label for="inbox10">▶配達時間の指定は可能ですか？</label>
	<input type="checkbox" id="inbox10" class="on-off">
    <div><p>商品は基本的にポスト投函となりますので、配達時間のご指定はできかねます。</p></div>

<div id="contact_btn"><a href="/contact/index.php" target="_blank">
<p>▶ご不明な点、ご相談はこちらから<br><span class="font10"></span></p>
</a>
</div>

</div>
-->

<!--LAST-->

<div id="mu_last_approach">

<div id="mu_made"><img src="../../gold/img/mindup/others/last_list_made_smt.jpg" alt="MADE IN JAPANにこだわり、GMP認定の国内工場にて徹底監理の元、製造を行っております。" /></div>


<!--ドクター押し-->
<div id="mu_top_doctor3">
<div id="mu_top_doctor3_in">
<img src="../../gold/img/mindup/doctor/doctor03_smt.jpg" alt="日々に答えを見いだせない方、まずはお試しいただくことをお勧めします。" />
</div></div>



<!--下部_商品購入-->
<!--トップ_商品購入-->
<div class="mu_top_buy">
<ul id="buy_select">
<li><a href="#form1" data-value-name="2" class="auto_select_name" style="cursor: pointer"/><img src="../../gold/img/mindup/buy/monthly_smt.jpg" alt="定期購入詳細" /></a></li>
<li><a href="#form1" data-value-name="1" class="auto_select_name" style="cursor: pointer"/><img src="../../gold/img/mindup/buy/single_smt.jpg" alt="1袋ご購入詳細" /></a></li>
</ul>
</div>


</div>


<!--SPguide-->
<div id="sp_guide">
<img src="../../gold/img/mindup/others/sp_guide.jpg" alt="ショッピングガイド" />
</div>

<!--original-tpl-->

<!--<div class="buy-wrapper">
<div class="some-wrapper">
        <h2 class="label-1">お得に続けたい方に</h2>
        <p class="title-label">Mind&nbsp;Up</p>
        <p class="title-label-2">[&nbsp;マインドアップ&nbsp;]</p>
        <p class="label-2">定期お届け便</p>
		<span class="w_60 m_0 mt_20 mb_20">
        <img src="../../gold/img/mindup/others/last_pdt_img.jpg">
		</span>
        <ul class="m_0">
            <li class="list-1"><p>初回<br>特別価格</p></li>
            <li class="list-2">
            <div class="buy-p">
            <ul class="flex">
                <li>
                  <span class="small-3">▼通常価格</span>
                  <span class="number-2">4,980</span>
                  <span class="small-1">円(税込)</span>
                </li>
                <li>
                  <span class="number-1">1,980</span>
                  <span class="small-2">円(税込)</span>
                </li>
            </ul>
        </div>            
        </li>
            <li class="list-3"><p>2回目以降も<br><span class="number-2">4,690</span><span class="small-1">円(税込)</span></p></li>
        </ul>
        <ul>
            <li class="list-4">30日間全額返金保証</li>
            <li class="list-4">送料無料</li>
            <li class="list-4">健康相談付</li>
        </ul>
        <a href="#form1" class="buy-btn white"><i class="fa-solid fa-play"></i>定期お届け便の申込みはこちら</a>
        <div class="buy">
             <p>※1袋 約1ヶ月分（90粒入）/ 1日3粒目安</p>
             <p>※毎月商品をお届けします。</p>
             <p>※管理画面から<span class="red">"いつでも一旦停止、解約可能"</span>です。</p>
             <p class="small">（発送予定日の5日前まで）</p>
             <p>※ご購入は<span class="red">"クレジットカード決済 / コンビニ決済<br>（後払い）"</span>がご利用いただけます。</p>
             <p>※購入後、<span class="red">"メールでの健康相談"</span>がお受けできます。</p>
        </div>
		</div>

		<divclass="single-wrapper>
        <h2 class="label-1">単品でのご注文</h2>
        <ul>
            <li class="pt_40"><img class="single pr_0 ta_c" src="../../gold/img/mindup/others/last_pdt_img.jpg"></li>
            <li><p class="title-label-single">Mind&nbsp;Up</p>
                <p class="title-label-2-single">[&nbsp;マインドアップ&nbsp;]</p>
                <div class="buy-wrapper-2">
				<ul class="w_140">
				    <li><p><span class="list-1-single">初回限定</span></p></li>
				    <li><span class="list-4-single">送料無料</span></p></li>
				</ul>
				<ul class="w_285">
				    <li class="pt_20 pl_20">
				      <span class="small-3">通常価格</span><br>
				      <span class="number-2">4,980</span>
				      <span class="small-1">円(税込)</span></li>
				    <li>
				      <span class="number-1">3,980</span>
				      <span class="small-2">円(税込)</span>
				    </li>
				</ul>
                </div>
            </li>
        </ul>
        
        <a href="#form1" class="buy-btn"><i class="fa-solid fa-play"></i>単品でのご購入はこちら</a>
        <div class="buy">
            <p>※1袋 約1ヶ月分（90粒入）/ 1日3粒目安</p>
            <p>※「クレジット決済」または「コンビニ決済（後払い）」が可能です。</p>
            <p>※購入後の返金はできません。</p>
        </div>
		</div>

        <div class="buy-guide">
            <h2 class="buy-guide-item1">お買い物ガイド</h2>
            <p class="buy-guide-item2">送料について</p>
            <p class="buy-guige-item3">すべて<span class="red fw_b">送料無料</span></p>
            <p class="buy-guide-item2">納期について</p>
            <p class="buy-guige-item3">ご注文確定後、<span class="red fw_b">原則２営業日以内</span>（土日祝除）に発送します。</p>
            <p class="buy-guide-item2">初回購入価格について</p>
            <p class="buy-guige-item3">初回購入価格は１世帯につき１回限りとさせて頂きます。</p>
            <p class="buy-guide-item2">定期購の途中解約について</p>
            <p class="buy-guige-item3">定期コースを解約される場合は、<span class="red fw_b">次回商品発送の５日前まで</span>にメール
                <br>にて中止のご連絡をお願い致します。（それ以降の解約ご希望の場合は
                <br>発送準備の都合上受付できませんのでご注意ください）
            </p>
            <p class="buy-guide-item2">全額返金保証について</p>
            <p class="buy-guige-item3">１）返金保証期間は<span class="red fw_b">ご注文日から３０日</span>以内となります。
                <br>２）自動お届けコース休止・中止の受付とはタイミングが異なります。
                <br>３）返金保証は<span class="red fw_b">定期購入コースのみ</span>が対象となります。
                <br>４）全額返金は<span class="red fw_b">１袋のみ</span>が対象となり２袋以上の開封で無効となります。
                <br>５）全額返金保証で返品される場合は<span>事前のメール</span>でのご連絡が必要です。
                <br>６）返品送料及び振込手数料はお客様のご負担となります。
                <br>&nbsp;&nbsp;&nbsp;（返金全額から振込手数料を差し引いた金額をお支払い致します）
                <br>７）返金はクレジット決済の場合はキャンセル処理、後払いの場合は
                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;銀行振り込みによる返金となり、返品商品が到着した月の末締め翌月末払いでの
                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ご返金となります。
            </p>
            <p class="buy-guide-item2">お支払いについて</p>
            <p class="buy-guige-item3"><span class="red fw_b">クレジットカード&nbsp;/&nbsp;コンビニ決済（後払い）</span></p>
            <p class="buy-guide-item2">配送について</p>
            <p class="buy-guige-item3">配送はポスト投函となりますので日時指定はできません。</p>
        </div>
    </div>-->




<!--{* ↑↑ヘッダーデザイン↑↑ *}-->
<!--{/if}-->
<div id="#mu_lp_form_pc">
<!--{if $layout == 'lp_product'}-->
<option value=""<!--{if $select == ''}--> selected="selected"<!--{/if}-->>＜＜商品を選択してください＞＞</option>
<!--{* ↓↓商品リスト↓↓ *}-->
<option value="1"<!--{if $select == '1'}--> selected="selected"<!--{/if}-->>【単品購入】MIND UP/ マインドアップ</option>
<option value="2"<!--{if $select == '2'}--> selected="selected"<!--{/if}-->>【定期購入】MIND UP/ マインドアップ</option>
<!--{* ↑↑商品リスト↑↑ *}-->
<!--{/if}-->
<!--{if $layout == 'lp_footer'}-->
</div>

<!--{* ↓↓フッターデザイン↓↓ *}-->

<div id="lp_footer">
<ul>
<!--<li>会社概要</li>-->
<li><a href="/smp/user_data/salesdeal.php" target="_blank">特定商取引法の表記</a></li>
<li><a href="/smp/user_data/privacy.php" target="_blank">プライバシーポリシー</a></li>
<li><a href="/smp/contact/index.php" target="_blank">お問い合わせ</a></li>
</ul>
<p>Copyright(c) 2019 Besli Select. All Rights Reserved.</p>
</div>

</div></div>

<!--{* ↑↑フッターデザイン↑↑ *}-->
<!--{/if}-->

