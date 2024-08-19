<!--{*
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
 *}-->
<!--▼CONTENTS-->
<div id="guidecolumn">
  
	<div class="head">
		<h2 class="t_contact">お問い合わせ</h2>
	</div>

    
    <p>お問い合わせはメールにて承っています。<br />
		内容によっては回答をさしあげるのにお時間をいただくこともございます。また、土日、祝祭日、年末年始、夏季期間は翌営業日以降の対応となりますのでご了承ください。<br/>
		<span><em>※ ご注文に関するお問い合わせには、必ず「ご注文番号」と「お名前」をご記入の上、メール下さいますようお願い致します。</em></span>
	</p>
    
    
  <form name="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
    <input type="hidden" name="mode" value="confirm" />
    <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME|escape}-->" value="<!--{$transactionid|escape}-->" />

    <!--{$add_html|escape}-->
    <table summary="お問い合わせ">
      <tr>
        <th width="150">お名前</th>
        <th width="60"><span class="required">必須</span></th>
        <td>
          <span class="attention"><!--{$arrErr.name01}--><!--{$arrErr.name02}--></span>
          姓&nbsp;<input type="text"
                         class="box120 ctinpt"
                         name="name01"
                         value="<!--{$name01|default:$arrData.name01|escape}-->"
                         maxlength="<!--{$smarty.const.STEXT_LEN}-->"
                         style="<!--{$arrErr.name01|sfGetErrorColor}-->" 
                         placeholder="山田" />　
          名&nbsp;<input type="text" class="box120 ctinpt" name="name02"
                         value="<!--{$name02|default:$arrData.name02|escape}-->"
                         maxlength="<!--{$smarty.const.STEXT_LEN}-->"
                         style="<!--{$arrErr.name02|sfGetErrorColor}-->" 
                         placeholder="太郎" />
        </td>
      </tr>
      <tr>
        <th>お名前（フリガナ）</th>
        <th><span class="required">必須</span></th>
        <td>
          <span class="attention"><!--{$arrErr.kana01}--><!--{$arrErr.kana02}--></span>
          セイ&nbsp;<input type="text"
                           class="box120 ctinpt"
                           name="kana01"
                           value="<!--{$kana01|default:$arrData.kana01|escape}-->"
                           maxlength="<!--{$smarty.const.STEXT_LEN}-->"
                           style="<!--{$arrErr.kana01|sfGetErrorColor}-->" placeholder="ヤマダ" />　
          メイ&nbsp;<input type="text"
                           class="box120 ctinpt"
                           name="kana02"
                           value="<!--{$kana02|default:$arrData.kana02|escape}-->"
                           maxlength="<!--{$smarty.const.STEXT_LEN}-->"
                           style="<!--{$arrErr.kana02|sfGetErrorColor}-->"placeholder="タロウ" />
        </td>
      </tr>

      <tr>
        <th>メールアドレス</th>
        <th><span class="required">必須</span></th>
        <td>
         <span class="attention"><!--{$arrErr.email}--><!--{$arrErr.email02}--></span>
          <div><input type="text"
                 class="box380 ctinpt"
                 name="email"
                 value="<!--{$email|default:$arrData.email|escape}-->"
                 maxlength="<!--{$smarty.const.MTEXT_LEN}-->"
                 style="<!--{$arrErr.email|sfGetErrorColor}-->"
                 placeholder="sample@example.com" />
           </div>      
          <!--{* ログインしていれば入力済みにする *}-->
          <!--{if $smarty.server.REQUEST_METHOD != 'POST' && $smarty.session.customer}-->
          <!--{assign var=email02 value=$arrData.email}-->
          <!--{/if}-->
          <div>
          <input type="text"
                 class="box380 ctinpt"
                 name="email02"
                 value="<!--{$email02|escape}-->"
                 maxlength="<!--{$smarty.const.MTEXT_LEN}-->"
                 style="<!--{$arrErr.email02|sfGetErrorColor}-->"
                 placeholder="sample@example.com" />
          </div>
          <div class="mini"><em>確認のため2度入力してください。</em></div>
        </td>
      </tr>        
      <tr>
        <th>お問い合わせ内容</span>
        <th><span class="required">必須</span></th>
        <span class="mini">（全角<!--{$smarty.const.MLTEXT_LEN}-->字以下）</span></th>
        <td>
          <span class="attention"><!--{$arrErr.contents}--></span>
          <textarea name="contents"
                    class="area380 ctinpt"
                    cols="60"
                    rows="20"
                    style="<!--{$arrErr.contents|sfGetErrorColor}-->"><!--{$contents|escape}--></textarea>
        </td>
      </tr>
    </table>
    
		<ul class="btn_area_l2">
			<li class="btn">
				<span class="btn_next"><a href="javascript.void();" onclick="document.form1.submit(); return false;">確認ページへ<input type="hidden" name="confirm" /></a></span>
			</li>
		</ul>
    </form>
</div>
<!--▲CONTENTS-->
<style type="text/css">
.ctinpt, select, textarea{background-color:#ddd;}
</style>

<script>
$(function(){
  $(".ctinpt, select, textarea").one("focus",function(){
     $(this).css("background","rgba(255,200,200,0.7)");
  }).blur(function(){ /*フォーカスが外れたとき*/
      if($(this).val()==""){ /*何も入力されていないなら*/
        $(this).css("background","#ddd").one("focus",function(){
               $(this).css("background","#ddd");
          });
       }
      else{
        $(this).css("background","#fff").one("focus",function(){
               $(this).css("background","#fff");
          }); 
      }
    });
});
</script>
