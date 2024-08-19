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
			<h2 class="t_order">特定商取引に関する法律に基づく表記</h2>
		</div>
    <table summary="特定商取引に関する法律に基づく表記">
      <tr>
        <th>販売業者</th>
        <td><!--{$arrRet.law_company|escape}--></td>
      </tr>
      <tr>
        <th>運営責任者</th>
        <td><!--{$arrRet.law_manager|escape}--></td>
      </tr>
      <tr>
        <th>住所</th>
        <td>〒<!--{$arrRet.law_zip01|escape}-->-<!--{$arrRet.law_zip02|escape}--><br /><!--{$arrPref[$arrRet.law_pref]|escape}--><!--{$arrRet.law_addr01|escape}--><!--{$arrRet.law_addr02|escape}--></td>
      </tr>
      <tr>
        <th>電話番号</th>
        <td><!--{$arrRet.law_tel01|escape}-->-<!--{$arrRet.law_tel02|escape}-->-<!--{$arrRet.law_tel03|escape}--></td>
      </tr>
      <tr>
        <th>FAX番号</th>
        <td><!--{$arrRet.law_fax01|escape}-->-<!--{$arrRet.law_fax02|escape}-->-<!--{$arrRet.law_fax03|escape}--></td>
      </tr>
      <tr>
        <th>メールアドレス</th>
        <td><a href="mailto:<!--{$arrRet.law_email|escape:'hex'}-->"><!--{$arrRet.law_email|escape:'hexentity'}--></a></td>
      </tr>
      <tr>
        <th>URL</th>
        <td><a href="<!--{$arrRet.law_url|escape}-->"><!--{$arrRet.law_url|escape}--></a></td>
      </tr>
      <tr>
        <th>商品以外の必要代金</th>
        <td><!--{$arrRet.law_term01|escape|nl2br}--></td>
      </tr>
      <tr>
        <th>注文方法</th>
        <td><!--{$arrRet.law_term02|escape|nl2br}--></td>
      </tr>
      <tr>
        <th>支払方法</th>
        <td><!--{$arrRet.law_term03|escape|nl2br}--></td>
      </tr>
      
      <tr>
      <th>NP後払い決済に関して</th>
      <td>○このお支払方法の詳細 商品の到着を確認してから、「コンビニ」「郵便局」「銀行」「LINE Pay」で 後払いできる安心・簡単な決済方法です。請求書は、商品とは別に 郵送されますので、発行から14日以内にお支払いをお願いします。<br>
      ○ご注意 後払い手数料：105円 後払いのご注文には、株式会社ネットプロテクションズの提供する NP後払いサービスが適用され、サービスの範囲内で個人情報を提供し、 代金債権を譲渡します。ご利用限度額は累計残高で54,000円（税込）迄です。ご利用者が未成年の場合、法定代理人の利用同意を得てご利用ください。<br/>
<a href="http://np-atobarai.jp/about/" target="_blank"><img src="/gold/img/mindup/add/pay_later.png" ></a>
</td>
</tr>
      
      <tr>
        <th>支払期限</th>
        <td><!--{$arrRet.law_term04|escape|nl2br}--></td>
      </tr>
      <tr>
        <th>引渡し時期</th>
        <td><!--{$arrRet.law_term05|escape|nl2br}--></td>
      </tr>
      <tr>
        <th>返品・交換について</th>
        <td><!--{$arrRet.law_term06|escape|nl2br}--></td>
      </tr>
    </table>
</div>
<!--▲CONTENTS-->

