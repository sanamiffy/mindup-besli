<div id="entrycolumn">
	<div class="entry_inner">
		<h2>会員登録</h2>
		<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
			<input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
			<input type="hidden" name="mode" value="confirm" />
			<!--{$add_html}-->
			<div class="entry_info">
				<ul>
					<li class="entry_info_head">メールアドレス<span class="attention">※</span></li>
					<li class="entry_info_inner02">
						<span class="attention"><!--{$arrErr.email}--></span>
						<div>
							<!--{if $email!='' && $tpl_use_smp_kara_mail}-->
							<span><!--{$email|escape}--></span>
							<input type="hidden" name="email" size="40" class="box380" value="<!--{$email|escape}-->" style="<!--{$arrErr.email|sfGetErrorColor}-->; ime-mode: disabled;" />
							<!--{else}-->
							<input type="text" name="email" size="40" class="box380" value="<!--{$email|escape}-->" style="<!--{$arrErr.email|sfGetErrorColor}-->; ime-mode: disabled;" autocomplete="off"/>
							<!--{/if}-->
						</div>
					</li>
					<li class="entry_info_head">お名前<span class="attention">※</span></li>
					<li class="entry_info_inner02">
						<span class="attention"><!--{$arrErr.name01}--><!--{$arrErr.name02}--></span>
						姓&nbsp;<input type="text" name="name01" size="15" value="<!--{$name01|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.name01|sfGetErrorColor}-->; ime-mode: active;" class="box120"  autocomplete="off"/>&nbsp;&nbsp;名&nbsp;<input type="text" name="name02" size="15" value="<!--{$name02|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.name02|sfGetErrorColor}-->; ime-mode: active;" class="box120" autocomplete="off"/>
					</li>
					<li class="entry_info_head">お名前(ﾌﾘｶﾞﾅ)<span class="attention">※</span></li>
					<li class="entry_info_inner02">
						<span class="attention"><!--{$arrErr.kana01}--><!--{$arrErr.kana02}--></span>
						セイ&nbsp;<input type="text" name="kana01" size="15" class="box120" value="<!--{$kana01|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.kana01|sfGetErrorColor}-->; ime-mode: active;"  autocomplete="off"/>&nbsp;&nbsp;メイ&nbsp;<input type="text" name="kana02" size="15" class="box120" value="<!--{$kana02|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.kana02|sfGetErrorColor}-->; ime-mode: active;" autocomplete="off"/>
					</li>
					<li class="entry_info_head">郵便番号<span class="attention">※</span></li>
					<li class="entry_info_inner02">
						<!--{assign var=key1 value="zip01"}-->
						<!--{assign var=key2 value="zip02"}-->
						<span class="attention"><!--{$message}--></span>
						<span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
						〒&nbsp;<input type="text" name="zip01" value="<!--{if $zip01 == ""}--><!--{$arrOtherDeliv.zip01|escape}--><!--{else}--><!--{$zip01|escape}--><!--{/if}-->" maxlength="<!--{$smarty.const.ZIP01_LEN}-->" style="<!--{$arrErr.zip01|sfGetErrorColor}-->; ime-mode: disabled;" size="6" class="box60" autocomplete="off"/>&nbsp;-&nbsp;<input type="text" name="zip02" value="<!--{if $zip02 == ""}--><!--{$arrOtherDeliv.zip02|escape}--><!--{else}--><!--{$zip02|escape}--><!--{/if}-->" maxlength="<!--{$smarty.const.ZIP02_LEN}-->" style="<!--{$arrErr.zip02|sfGetErrorColor}-->; ime-mode: disabled;" size="6" class="box60" autocomplete="off"/>&nbsp;
						<p class="zipimg"><input type="image"src="<!--{$TPL_DIR}-->img/common/address.gif" alt="住所自動入力" name = "mode" value = "zip_search" onclick="document.form1.mode.value='zip_search';"/></p>
						<p class="mini"><em>※郵便番号を入力後、クリックしてください。</em></p>
					</li>
					<li class="entry_info_head">住所<span class="attention">※</span></li>
					<li class="entry_info_inner02">
						<span class="attention"><!--{$arrErr.pref}--><!--{$arrErr.addr01}--><!--{$arrErr.addr02}--></span>
						<select name="pref" style="<!--{$arrErr.pref|sfGetErrorColor}-->">
							<option value="" selected="selected">都道府県を選択</option>
							<!--{html_options options=$arrPref selected=$pref}-->
						</select>
						<p class="mini">
							<input type="text" name="addr01" value="<!--{$addr01|escape}-->" style="<!--{$arrErr.addr01|sfGetErrorColor}-->; ime-mode: active;" autocomplete="off"/><br />
							<!--{$smarty.const.SAMPLE_ADDRESS1}-->
						</p>
						<p class="mini">
							<input type="text" name="addr02" value="<!--{$addr02|escape}-->" style="<!--{$arrErr.addr02|sfGetErrorColor}-->; ime-mode: active;" autocomplete="off"/><br />
							<!--{$smarty.const.SAMPLE_ADDRESS2}-->
						</p>
						<p class="mini"><em>※住所は2つに分けてご記入いただけます。<br />マンション名は必ず記入してください。</em></p>
					</li>
					<li class="entry_info_head">電話番号<span class="attention">※</span></li>
					<li class="entry_info_inner02">
						<span class="attention"><!--{$arrErr.tel01}--><!--{$arrErr.tel02}--><!--{$arrErr.tel03}--></span>
						<input type="text" name="tel01" size="6" value="<!--{$tel01|escape}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" class="box60" style="<!--{$arrErr.tel01|sfGetErrorColor}-->; ime-mode: disabled;" autocomplete="off"/>&nbsp;-&nbsp;<input type="text" name="tel02" size="6" value="<!--{$tel02|escape}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" style="<!--{$arrErr.tel02|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" autocomplete="off"/>&nbsp;-&nbsp;<input type="text" name="tel03" size="6" value="<!--{$tel03|escape}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" style="<!--{$arrErr.tel03|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" autocomplete="off"/>
					</li>
					<li class="entry_info_head">FAX</li>
					<li class="entry_info_inner02">
						<span class="attention"><!--{$arrErr.fax01}--><!--{$arrErr.fax02}--><!--{$arrErr.fax03}--></span>
						<input type="text" name="fax01" size="6" value="<!--{$fax01|escape}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->"  style="<!--{$arrErr.fax01|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" autocomplete="off"/>&nbsp;-&nbsp;<input type="text" name="fax02" size="6" value="<!--{$fax02|escape}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" style="<!--{$arrErr.fax02|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" autocomplete="off"/>&nbsp;-&nbsp;<input type="text" name="fax03" size="6" value="<!--{$fax03|escape}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" style="<!--{$arrErr.fax03|sfGetErrorColor}-->; ime-mode: disabled;" class="box60" autocomplete="off"/>
					</li>
					<li class="entry_info_head">性別<!--{if $req_setting.pc_sex == 'REQUIRED'}--><span class="attention">※</span><!--{/if}--></li>
					<li class="entry_info_inner02">
						<span class="attention"><!--{$arrErr.sex}--></span>
						<input type="radio" name="sex" id="man" value="1" style="<!--{$arrErr.sex|sfGetErrorColor}-->" <!--{if $sex eq 1}--> checked="checked"<!--{/if}--> /><label for="man">男性</label>
						&nbsp;<input type="radio" name="sex" id="woman" value="2" style="<!--{$arrErr.sex|sfGetErrorColor}-->" <!--{if $sex eq 2}--> checked="checked"<!--{/if}--> /><label for="woman">女性</label>
						<!--{if $req_setting.pc_sex == 'OPTIONAL'}-->
						&nbsp;<input type="radio" name="sex" id="no_sex" value="0" style="<!--{$arrErr.sex|sfGetErrorColor}-->" <!--{if $sex eq 0}--> checked="checked"<!--{/if}--> /><label for="no_sex">未回答</label>
						<!--{/if}-->
					</li>
					<li class="entry_info_head">職業</li>
					<li class="entry_info_inner02">
						<span class="attention"><!--{$arrErr.job}--></span>
						<select name="job" style="<!--{$arrErr.job|sfGetErrorColor}-->">
							<option value="" selected="selected">選択してください</option>
							<!--{html_options options=$arrJob selected=$job}-->
						</select>
					</li>
					<li class="entry_info_head">生年月日<!--{if $req_setting.pc_birth == 'REQUIRED'}--><span class="attention">※</span><!--{/if}--></li>
					<li class="entry_info_inner02">
						<span class="attention"><!--{$arrErr.year}--><!--{$arrErr.month}--><!--{$arrErr.day}--></span>
						<select name="year" style="<!--{$arrErr.year|sfGetErrorColor}-->">
							<!--{html_options options=$arrYear selected=$year}-->
						</select>年
						<select name="month" style="<!--{$arrErr.year|sfGetErrorColor}-->">
							<option value="">--</option>
							<!--{html_options options=$arrMonth selected=$month}-->
						</select>月
						<select name="day" style="<!--{$arrErr.year|sfGetErrorColor}-->">
							<option value="">--</option>
							<!--{html_options options=$arrDay selected=$day}-->
						</select>日
					</li>
					<li class="entry_info_head">希望するパスワード<span class="attention">※</span></li>
					<li class="entry_info_inner02">
						<span class="mini">パスワードは購入時に必要です</span>
						<span class="attention"><!--{$arrErr.password}--><!--{$arrErr.password02}--></span>
						<div><input type="password" name="password" value="<!--{$arrForm.password|escape}-->" size="15" class="box380" style="<!--{$arrErr.password|sfGetErrorColor}-->"  autocomplete="off"/></div>
						<p class="mini attention"><!--{$password_rule.message|escape}--></p>
						<div><input type="password" name="password02" value="<!--{$arrForm.password02|escape}-->" size="15" class="box380"  style="<!--{$arrErr.password02|sfGetErrorColor}-->"  autocomplete="off"/></div>
						<p class="mini attention">確認のため2度入力してください。</p>
					</li>
					<!--{if $arrMailCompulsionView eq "ON"}-->
						<input type="hidden" name="mailmaga_flg" id="html" value="1">
					<!--{else}-->
						<li class="entry_info_head">メールマガジン送付について<span class="attention">※</span></li>
						<li class="entry_info_inner02">
							<span class="attention"><!--{$arrErr.mailmaga_flg}--></span>
							<div>
								<input type="radio" name="mailmaga_flg" id="html" value="1" style="<!--{$arrErr.mailmaga_flg|sfGetErrorColor}-->"<!--{if $mailmaga_flg eq 1 || $mailmaga_flg eq ""}--> checked="checked"<!--{/if}--> /><label for="html">HTMLメール＋テキストメールを受け取る</label>
							</div>
							<div>
								<input type="radio" name="mailmaga_flg" id="text" value="2" style="<!--{$arrErr.mailmaga_flg|sfGetErrorColor}-->"<!--{if $mailmaga_flg eq 2}--> checked="checked"<!--{/if}--> /><label for="text">テキストメールを受け取る</label>
							</div>
							<div>
								<input type="radio" name="mailmaga_flg" id="no" value="3" style="<!--{$arrErr.mailmaga_flg|sfGetErrorColor}-->"<!--{if $mailmaga_flg eq 3}--> checked="checked"<!--{/if}--> /><label for="no">受け取らない</label>
							</div>
						</li>
					<!--{/if}-->
				</ul>
			</div>
			<ul>
				<li class="sp_btn">
					<input type="submit" onclick="document.form1.submit();" value="確認ページへ" id="to_confirm_btn" name="confirm"/>
				</li>
			</ul>
		</form>
	</div>
</div>
