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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA	02111-1307, USA.
 *}-->
<!--▼CONTENTS-->
<div id="shoppingcolumn">
	<div class="head">
		<h2 class="t_cartin">
			現在のカゴの中
		</h2>
	</div>
		<p class="totalmoneyarea">
			<!--{if $point_flg != 2}-->
				<!--{if $tpl_login}-->
					<!--メインコメント-->
					<!--{$tpl_name|escape}--> 様の、現在の所持ポイントは「<em><!--{$tpl_user_point|number_format|default:0}--> pt</em>」です。<br />
				<!--{else}-->
					<!--メインコメント-->ポイント制度をご利用になられる場合は、会員登録後ログインしていだだきますようお願い致します。<br />
				<!--{/if}-->

				ポイントは商品購入時に1pt＝<!--{$smarty.const.POINT_VALUE}-->円として使用することができます。<br />
                <!--{if $use_code_coupon}-->※クーポン使用時はポイントを使用できません。<br /><!--{/if}-->
			<!--{/if}-->

			<!--{* カゴの中に商品がある場合にのみ表示 *}-->
			<!--{if count($arrProductsClass) > 0 }-->
				<div class="pr_amt">
                	<p>お買い上げ商品の合計金額は「<em><!--{$tpl_total_pretax|number_format}-->円</em>」です。</p>
                    <!--{if !$no_normal_fee_flg}-->
                        <!--{if $arrInfo.free_rule > 0}-->
                            <!--{if $tpl_deliv_free|number_format > 0 && !$deliv_free}-->
                                <p>あと「<em><!--{$tpl_deliv_free|number_format}-->円</em>」で送料無料です！！</p>
                            <!--{else}-->
                                <p>現在、「<em>送料無料</em>」です！！</p>
                            <!--{/if}-->
                        <!--{/if}-->
                    <!--{/if}-->
                </div>
			<!--{/if}-->
		</p>

		<!--{if $tpl_message != ""}-->
		<p class="attention"><!--{$tpl_message}--></p>
		<!--{/if}-->

		<!--{if count($arrProductsClass) > 0}-->
		<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
			<input type="hidden" name="mode" value="confirm" />
			<input type="hidden" name="cart_no" value="" />
			<table summary="商品情報">
				<tr>
					<th class="centertd">削除</th>
					<th class="centertd">商品写真</th>
					<th class="centertd">商品名</th>
					<th class="centertd">単価</th>
					<th class="centertd">数量</th>
					<th class="centertd">小計</th>
				</tr>
				<!--{*section name=cnt loop=$arrProductsClass*}-->
				<!--{foreach from=$arrProductsClass key=arr_key item="values" }-->
				<tr>
					<td class="centertd"><div class="btn_fv"><a onclick="fnChangeAction('<!--{$smarty.server.SCRIPT_NAME|escape}-->'); fnModeSubmit('delete', 'cart_no', '<!--{$values.cart_no|escape}-->'); return false;">削除</a></div></td>
					<td class="phototd">
						<a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="win01('../products/detail_image.php?product_id=<!--{$values.product_id}-->&image=main_image','detail_image','<!--{$values.tpl_image_width}-->','<!--{$values.tpl_image_height}-->'); return false;" target="_blank">
							<img src="<!--{$smarty.const.URL_DIR}-->resize_image.php?image=<!--{$values.main_list_image}-->&amp;width=65&amp;height=65" alt="<!--{$values.name|escape}-->" />
						</a>
					</td>
					<td>
						<!--{* 商品名 *}--><strong><!--{$values.name|escape}--></strong><!--{if $reg_get == 1}-->(定期購入)<!--{/if}--><br />
						<!--{if $values.classcategory_name1 != ""}-->
						<!--{$values.class_name1}-->：<!--{$values.classcategory_name1}--><br />
						<!--{/if}-->
						<!--{if $values.classcategory_name2 != ""}-->
						<!--{$values.class_name2}-->：<!--{$values.classcategory_name2}-->
						<!--{/if}-->
						<!--{if $values.timesales_flg == 1}-->
						<div class="count_down_box" id="count_down_<!--{$values.product_id}-->"></div>
						<!--{/if}-->
						<!-- ▼規格3以上▼ -->
						<!--{foreach from=$values.extra_classcategory key=key item=val}-->
							<br />
							<!--{$val.class_name}-->：<!--{foreach from=$val.classcategory item=vval}--><!--{$vval}--><!--{/foreach}-->
						<!--{/foreach}-->
						<!-- ▲規格3以上▲ -->
					</td>
					<td class="centertd">
						<!--{if $values.price02 != "" || strlen($values.price02)}-->
						<!--{$values.price02|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->円
						<!--{else}-->
						<!--{$values.price01|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->円
						<!--{/if}-->
					</td>
					<td id="quantity"><!--{$values.quantity}-->
						<ul id="quantity_level">
							<li><a onclick="fnChangeAction('<!--{$smarty.server.SCRIPT_NAME|escape}-->'); fnModeSubmit('up','cart_no','<!--{$values.cart_no|escape}-->'); return false"><img src="<!--{$TPL_DIR|escape}-->img/cart/plus.gif" alt="＋" title="＋" /></a></li>
							<li><a onclick="fnChangeAction('<!--{$smarty.server.SCRIPT_NAME|escape}-->'); fnModeSubmit('down','cart_no','<!--{$values.cart_no|escape}-->'); return false"><img src="<!--{$TPL_DIR|escape}-->img/cart/minus.gif" alt="-" title="-" /></a></li>
						</ul>
					</td>
					<td class="centertd"><!--{$values.total_pretax|number_format}-->円</td>
				</tr>

				<!--{if $values.sendingDetail }-->
				<tr>
					<th colspan="6"	class="resulttd">
					<!--{if $values.sendingDetail.cost == 0 }-->
						<!--{$values.sendingDetail.service}-->無料
					<!--{else}-->
						上記商品は<!--{$values.sendingDetail.service}-->が別途<em><!--{$values.sendingDetail.cost}-->円</em>かかります。<br />
						<!--{if $sending_special_fee_is_free_flg}-->あと<em><!--{$values.sendingDetail.diff|number_format}-->円以上</em>購入で<!--{$values.sendingDetail.service}-->が無料になります。<!--{/if}-->
					<!--{/if}-->
					</th>
				</tr>
				<!--{/if}-->

				<!--{/foreach}-->
				<!--{*/section*}-->
				<!--{if $reg_get == 1}-->
				<!--{else}-->
					<!--{if $coupon_tr}-->
					<tr><th colspan="5" class="resulttd">クーポン適用</th><td align="right">-<!--{$coupon_tr|number_format}-->円</td></tr>
					<!--{/if}-->

					<!--{if $use_coupon_list}-->
					<tr>
						<th colspan="5" class="resulttd">
							クーポン割引額
							<select name="coupon_selecter" onchange="fnChangeAction('<!--{$smarty.server.SCRIPT_NAME|escape}-->'); fnModeSubmit('coupon','',''); return false">
								<option value="">クーポンを利用する</option>
								<!--{foreach from=$use_coupon_list key=coupon_key item="coupon_val"}-->
								<option value="<!--{$coupon_val.coupon_code}-->" style="<!--{if $coupon_val.use_price > $tpl_total_pretax}-->background-color:#ccc;<!--{/if}-->"<!--{if $use_coupon_no==$coupon_val.coupon_code}--> selected<!--{/if}-->><!--{$coupon_val.note}--></option>
								<!--{/foreach}-->
							</select>
						</th>
						<td align="right"><span><!--{$coupon_discount}--></span>円</td>
					</tr>
					<!--{/if}-->
				<!--{/if}-->


                <!--{if 'code_coupon'|get_option_use_flg == true && $view_coupon_form}-->
                <!--{if !$use_coupon_list && !$coupon_tr}-->
                <tr>
                    <th colspan="5" class="resulttd">クーポン適用<!--{if $use_code_coupon}-->&nbsp;(<!--{$use_code_coupon.code_coupon_code}-->)<!--{/if}--></th>
                    <td class="pricetd">
                    <!--{if $use_code_coupon}-->
                        <!--{if $use_code_coupon.discount_unit == 0}--><!--{* 割引の場合 *}-->
                            <!--{$use_code_coupon.discount_value}-->%off&nbsp;(<!--{$use_code_coupon.format_discount}-->円off)
                        <!--{else}--><!--{* 値引きの場合 *}-->
                            <!--{$use_code_coupon.format_discount}-->円off
                        <!--{/if}-->
                        <button type="button" onclick="fnChangeAction('<!--{$smarty.server.SCRIPT_NAME|escape}-->'); fnModeSubmit('remove_code_coupon','cart_no','<!--{$values.cart_no|escape}-->'); return false">解除</button>
                    <!--{else}-->
                        <input type="text" name="coupon_code" value="" id="coupon_code" />
                        <button type="button" onclick="fnChangeAction('<!--{$smarty.server.SCRIPT_NAME|escape}-->'); fnModeSubmit('code_coupon','cart_no','<!--{$values.cart_no|escape}-->'); return false">適用</button>
                        <span id="error_coupon" style="color:red"><br /><!--{$error_code_coupon}--></span>
                    <!--{/if}-->
                    </td>
                </tr>
                <!--{/if}-->
                <!--{/if}-->

				<tr>
					<th colspan="5" class="resulttd">小計</th>
					<td class="pricetd"><!--{$tpl_total_pretax|number_format}-->円</td>
				</tr>

				<tr>
					<th colspan="5" class="resulttd">合計</th>
					<td class="pricetd"><em><!--{$arrData.total-$arrData.deliv_fee|number_format}-->円</em></td>
				</tr>

				<!--{if $point_flg != 2 and $reg_get != 1}-->
				<tr>
					<th colspan="5" class="resulttd">今回加算ポイント</th>
					<td class="pricetd">
                        <!--{$arrData.add_point|number_format}-->pt
                        <!--{if $coupon_reward_point}--> + <!--{$coupon_reward_point|number_format}--> pt(クーポン分)<!--{/if}-->
                    </td>
				</tr>
				<!--{/if}-->
			</table>

			<p class="mini">※ 商品写真は参考用写真です。ご注文のカラーと異なる写真が表示されている場合でも、商品名に記載されているカラー表示で間違いございませんのでご安心ください。</p>
			<div class="tblareabtn">
				<p>上記内容でよろしければ「購入手続きへ」ボタンをクリックしてください。</p>

<!--{* ▼クロスセル▼ *}-->
<!--{assign var=found value=0}-->
<!--{foreach from=$arrProductsClass key=arr_key item="values" name=reg}-->
	<!--{*商品IDAに追加したい商品ID*}-->
	<!--{if $values.product_id == '商品IDA'}-->
		<!--{assign var=found value=1}-->
	<!--{/if}-->
	<!--{if $values.product_id == '商品IDB' && !$found}--><!--{* 商品IDBにクロスセル対象の商品ID *}-->
		<div class="upsell">
			<a href="<!--{$smarty.const.URL_DIR}-->cart/direct.php?param[]=商品IDA|1||&regular="><!--{* 商品IDAに追加したい商品ID　ダイレクト購入リンク *}-->
			商品を追加する
			</a>
		</div>
		<!--{assign var=found value=1}-->
	<!--{/if}-->
<!--{/foreach}-->
<!--{* ▲クロスセル▲ *}-->

						<!--{if $tpl_prev_url != ""}-->
					<div class="btn_rpst1">
						<span class="btn_prev"><a href="<!--{$tpl_prev_url|escape}-->">前のページへ<input type="hidden" name="back" id="back" /></a></span>
					</div>
						<!--{/if}-->
						<!--{if $is_cart_btn}-->
					<div class="btn_rpst2">
						<span class="btn_next"><a href="javascript:void(0);" onclick="document.form1.submit();">購入手続きへ<input type="hidden" name="confirm" /></a></span>
					</div>
						<!--{/if}-->
			</div>

            <!--{if $amazon_pay_enabled}-->
            <div style="clear:both;"></div>
            <div id="amazon_button_area" style="width:836px;">
                <div style="float:left;padding-top:5px;">
                    <p style="padding-bottom:3px"><span id="amazon_h">Amazonアカウントで決済できます</span></p>
                    Amazon.co.jp に登録している情報を使って簡単にお支払いができるサービスです。<br />
                    ※Amazonギフト券はご使用いただけません。
                </div>
                <div style="float:right"><!--{amazon_pay_button type="PwA" color="Gold" size="large" parallel="yes"}--></div>
                <div style="clear:both;"></div>
            </div>
            <!--{/if}-->
		</form>
	<!--{else}-->
		<p class="empty"><em>※ 現在カート内に商品はございません。</em></p>
	<!--{/if}-->
</div>
<!--▲CONTENTS-->
