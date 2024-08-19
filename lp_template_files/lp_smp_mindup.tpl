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


<link rel="stylesheet" media="all" type="text/css" href="../../gold/css/common.css" />
<link rel="stylesheet" media="all" type="text/css" href="../../gold/css/mindup_smt.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="<../../../../gold/js/scrollsmoothly.js"></script>


<div id="mu_lp">



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


<!--{* ↑↑ヘッダーデザイン↑↑ *}-->
<!--{/if}-->
<div id="mu_lp_form">
<!--{if $layout == 'lp_product'}-->
<option value=""<!--{if $select == ''}--> selected="selected"<!--{/if}-->>商品を選択する</option>
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

<!--{* ↑↑フッターデザイン↑↑ *}-->
<!--{/if}-->
