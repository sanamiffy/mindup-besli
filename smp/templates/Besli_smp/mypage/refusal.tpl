<!--▼CONTENTS-->
<div id="mypagecolumn">
	 <div class="pankuzuarea">
        <p>
            <a href="/smp/">HOME</a> 
            &gt; <a href="/smp/mypage/login.php">マイページ</a> 
            &gt; <a href="./refusal.php">退会手続き</a>
        </p>
    </div>
    
    <div class="mypage_inner">
		<h3>退会手続き</h3>
		<form name="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
			<input type="hidden" name="mode" value="confirm" />
			<div id="completetext1">
				<!--{if $regular_deletable}-->
					<p class="pd10">
                    いままでご利用ありがとうございました。<br /><br />
                    <span style="color:#C00;">会員を退会された場合には、現在保存されている購入履歴や、お届け先などの情報は、すべて削除されます。</span><br /><br />
                    よろしければ退会するボタンを押して下さい。
					<ul>
						<li class="mg_newbtn">
							<a href="javascript:void(0);" onclick="document.form1.submit();">退会する</a>
						</li>
					</ul>
				<!--{else}-->
					定期購入契約中のため、退会できません。
				<!--{/if}-->
			</div>
            <div class="mypage_back">
                    <a href="./index.php"><div class="mg_back">戻る</div></a>
            </div>
       </form> 
	</div>

</div>
<!--▲CONTENTS-->
