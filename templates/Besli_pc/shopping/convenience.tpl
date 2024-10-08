<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->
<!--▼CONTENTS-->
<table width="780" cellspacing="0" cellpadding="0" summary=" ">
	<tr>
		<td bgcolor="#cccccc"><img src="../img/_.gif" width="1" height="18" alt="" /></td>
		<td bgcolor="#ffffff" colspan="3"><img src="../img/_.gif" width="778" height="1" alt="" /></td>

		<td bgcolor="#cccccc"><img src="../img/_.gif" width="1" height="18" alt="" /></td>		
	</tr>
	<tr>
		<td bgcolor="#cccccc"><img src="../img/_.gif" width="1" height="10" alt="" /></td>
		<td bgcolor="#ffffff"><img src="../img/_.gif" width="10" height="1" alt="" /></td>
		<td><img src="../img/shopping/flow06.gif" width="758" height="78" alt="お買い物の流れ" /></td>
		<td bgcolor="#ffffff"><img src="../img/_.gif" width="10" height="1" alt="" /></td>
		<td bgcolor="#cccccc"><img src="../img/_.gif" width="1" height="10" alt="" /></td>		
	</tr>
</table>

<table width="780" cellspacing="0" cellpadding="0" summary=" ">
	<tr>
		<td bgcolor="#cccccc" width="1"><img src="../img/_.gif" width="1" height="10" alt="" /></td>
		<td bgcolor="#ffffff" width="9"><img src="../img/_.gif" width="39" height="1" alt="" /></td>
		<td bgcolor="#ffffff" align="left"> 
		<!--▼MAIN CONTENTS-->
		<table cellspacing="0" cellpadding="0" summary=" " id="containerfull">
			<tr><td height="20"></td></tr>
			<tr valign="top">
				<!--▼CONTENTS-->

				<td>
					<div class="head">
						<h2 class="t_comb_kessai">コンビニ決済</h2>
					</div>
				<div class="fs12n" id="comment01">下記から、お支払いするコンビニをご選択くださいませ。<br />
				選択後、一番下の「ご注文完了ページへ」ボタンをクリックしてください。</div>
				<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
				<input type="hidden" name="mode" value="complete">
				<input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->">
				<span class="red12st"><!--{$arrErr.convenience}--></span>
				<table cellspacing="1" cellpadding="8" summary=" " id="frame">
					<tr class="fs12n">
						<td id="select">選択</td>
						<td id="payment">コンビニの種類</td>
					</tr>
					<!--{foreach key=key item=item from=$arrCONVENIENCE}-->
					<tr>
						<td id="select_c"><input type="radio" name="convenience" value="<!--{$key}-->" style="<!--{$arrErr.convenience|sfGetErrorColor}-->"></td>
						<td class="fs12n" id="payment_c"><!--{$item|escape}--></td>
					</tr>
					<!--{/foreach}-->
				</table>
				<div class="red12" id="comment02">※「ご注文完了ページへ」をクリック後、完了ページが表示されるまでお待ちください。</div>

				<ul class="btn_area_n2">
					<li class="btn">
						<span class="btn_prev">
							<a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnModeSubmit('return', '', ''); return false;" />前のページへ<input type="hidden" name="back03" id="back03" ></a>
						</span>
					</li>
					<li class="btn">
						<span class="btn_next">
							<a href="javascript:void();" onclick="document.form1.submit();">ご注文完了ページへ<input type="hidden" name="complete" id="complete" /></a>
						</span>
					</li>
				</ul>

				</form>
				<table cellspacing="0" cellpadding="0" summary=" " id="verisign">
					<tr>
						<td><script src=https://seal.verisign.com/getseal?host_name=secure.tokado.jp&size=S&use_flash=YES&use_transparent=NO&lang=ja></script></td>
						<td><img src="../img/_.gif" width="10" height="1" alt="" /></td>
						<td class="fs10">インターネットショッピングでは、通信の安全性を確保するセキュリティモードを設定しています。「暗号化(SSL)」を選択すると、送受信するデータが暗号化され、漏洩の危険性が低くなります。また、日本ベリサイン社によって通信サーバが認証されるため、なりすましなどによるID・パスワードの盗用の可能性も低減できます。</td>
					</tr>

				</table>
				</td>
				<!--▲ONTENTS-->	
			</tr>
		</table>
		<!--▲MAIN CONTENTS-->
		</td>
		<td bgcolor="#ffffff" width="10"><img src="../img/_.gif" width="39" height="1" alt="" /></td>
		<td bgcolor="#cccccc" width="1"><img src="../img/_.gif" width="1" height="10" alt="" />
<!-- EBiS start -->
<script type="text/javascript">
if ( location.protocol == 'http:' ){ 
	strServerName = 'http://daikoku.ebis.ne.jp'; 
} else { 
	strServerName = 'https://secure2.ebis.ne.jp/ver3';
}
cid = 'tqYg3k6U'; pid = 'shopping_card'; m1id=''; a1id=''; o1id=''; o2id=''; o3id=''; o4id=''; o5id='';
document.write("<scr" + "ipt type=\"text\/javascript\" src=\"" + strServerName + "\/ebis_tag.php?cid=" + cid + "&pid=" + pid + "&m1id=" + m1id + "&a1id=" + a1id + "&o1id=" + o1id + "&o2id=" + o2id + "&o3id=" + o3id + "&o4id=" + o4id + "&o5id=" + o5id + "\"><\/scr" + "ipt>");
</script>
<!-- EBiS end -->
		</td>

	</tr>
</table>
<!--▲CONTENTS-->
