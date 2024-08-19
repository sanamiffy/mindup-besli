<script type="text/javascript">
<!--{include file="`$smarty.const.S_TEMPLATE_PATH`/countdown.tpl" }-->
</script>
<div id="shoppingcolumn">
	<!--{if $tpl_message != ""}-->
		<div class="attention"><!--{$tpl_message}--></div>
	<!--{/if}-->
	<div class="shopping_inner">
		<h2>現在のカゴの中</h2>
				<!--{if count($arrProductsClass) > 0}-->
				<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
					<input type="hidden" name="mode" value="confirm" />
					<input type="hidden" name="cart_no" value="" />
				<!--{foreach from=$arrProductsClass key=arr_key item="values" }-->
			<div class="in_cart_all">
				<div class="cart_pic">
					<span class="phototd">
						<a href="/smp/product/detail/<!--{$values.product_id}-->">
							<img src="<!--{$smarty.const.URL_DIR}-->resize_image.php?image=<!--{$values.main_list_image}-->&amp;width=65&amp;height=65" alt="<!--{$values.name|escape}-->" />
						</a>
					</span>
				</div>
				<!-- Start 商品情報 -->
				<div class="cart_info">
					<h3>
						商品名:<!--{* 商品名 *}--><strong><!--{$values.name|escape}--></strong><!--{if $reg_get == 1}-->(定期購入)<!--{/if}--><br />
						<!--{if $values.classcategory_name1 != ""}-->
							<!--{$values.class_name1}-->：<!--{$values.classcategory_name1}--><br />
						<!--{/if}-->
						<!--{if $values.classcategory_name2 != ""}-->
							<!--{$values.class_name2}-->：<!--{$values.classcategory_name2}-->
						<!--{/if}-->
						<!-- ▼規格3以上▼ -->
						<!--{foreach from=$values.extra_classcategory key=key item=val}-->
							<br />
							<!--{$val.class_name}-->：<!--{foreach from=$val.classcategory item=vval}--><!--{$vval}--><!--{/foreach}-->
						<!--{/foreach}-->
						<!-- ▲規格3以上▲ -->
						<div class="count_down_box" id="count_down_<!--{$values.product_id}-->"></div>
					</h3>
					<p>
						単価:<span class="pricetd02">
							<!--{if $reg_get == 1 && $regular_product.type == 1}-->
								<!--{$tpl_regular_add_price|number_format}-->円
							<!--{else}-->
								<!--{if $values.price02 != ""}-->
									<!--{$values.price02|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->円
								<!--{else}-->
									<!--{$values.price01|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->円
								<!--{/if}-->
							<!--{/if}-->
						</span>/数量:<span id="quantity"><!--{$values.quantity}--></span> 
						<br />
						<p class="cart_num">
							<a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnChangeAction('<!--{$smarty.server.PHP_SELF|escape}-->'); fnModeSubmit('up','cart_no','<!--{$values.cart_no}-->'); return false"><img src="<!--{$TPL_DIR}-->img/cart/plus.gif" width="22" height="22" alt="＋" style="margin-right:5px"/></a>
							<a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnChangeAction('<!--{$smarty.server.PHP_SELF|escape}-->'); fnModeSubmit('down','cart_no','<!--{$values.cart_no}-->'); return false"><img src="<!--{$TPL_DIR}-->img/cart/minus.gif" width="22" height="22" alt="-" /></a>
						</p>
						<p class="cart_delete"><a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnChangeAction('<!--{$smarty.server.PHP_SELF|escape}-->'); fnModeSubmit('delete', 'cart_no', '<!--{$values.cart_no}-->'); return false;"><img src="<!--{$TPL_DIR}-->img/cart/sakujyo.gif" width="60" height="20" alt="-" /></a>
						</p>
					</p>
					<p>
						小計:<span class="pricetd02">
						<!--{if $reg_get == 1 && $regular_product.type == 1}-->
							<!--{$tpl_regular_add_price|number_format}-->円
						<!--{else}-->
							<!--{math equation="x + y" x=$values.total_pretax y=$tpl_regular_add_price assign="total_pretax_view"}--><!--{$total_pretax_view|number_format}-->円
							<!--{if $tpl_regular_add_price > 0 && $regular_product.type == '0'}-->
								<br /><em>[同梱商品分:<!--{$tpl_regular_add_price|number_format}-->円]</em>
							<!--{/if}-->
						<!--{/if}-->			
					</p>
					<!--{if $reg_get == 1}-->
					<!--{else}-->
						<!--{if $use_coupon_list}-->
							<div class="cart_coupon">
								<p>
									クーポン割引額 <span class="pricetd02"><!--{$coupon_discount}--></span>円
									<select style="width: 210px;" name="coupon_selecter" onchange="fnChangeAction('<!--{$smarty.server.PHP_SELF|escape}-->'); fnModeSubmit('coupon','',''); return false">
										<option value="">クーポンを利用する</option>
										<!--{foreach from=$use_coupon_list key=coupon_key item="coupon_val"}-->
										<option value="<!--{$coupon_val.coupon_code}-->" style="<!--{if $coupon_val.use_price > $tpl_total_pretax}-->background-color:#ccc;<!--{/if}-->"<!--{if $use_coupon_no==$coupon_val.coupon_code}--> selected<!--{/if}-->><!--{$coupon_val.note}--></option>
										<!--{/foreach}-->
									</select>
								</p>
							</div>
						<!--{/if}-->
					<!--{/if}-->

						<!--{if $values.sendingDetail }-->
							<div class="cart_sendcost">
								<!--{if $values.sendingDetail.cost == 0 }-->
									<!--{$values.sendingDetail.service}-->無料
								<!--{else}-->
									上記商品は<!--{$values.sendingDetail.service}-->が<br />別途<span class="pricetd02"><!--{$values.sendingDetail.cost}-->円</span>かかります。<br />
									<!--{if $sending_special_fee_is_free_flg}-->あと<span class="pricetd02"><!--{$values.sendingDetail.diff|number_format}-->円以上</span>購入で<br /><!--{$values.sendingDetail.service}-->が無料になります。<!--{/if}-->
								<!--{/if}-->
							</div>
						<!--{/if}-->
					</div>
				</div>
				<!--{/foreach}-->
				<!-- End 商品情報 -->

			<!--Start Coupon-->

                    <!--{if 'code_coupon'|get_option_use_flg == true && $view_coupon_form}-->
                    <!--{if !$use_coupon_list && !$coupon_tr}-->

                            <div class="cart_coupon">
                                <p> 
                                    クーポン適用 <!--{if $use_code_coupon}-->&nbsp;(<!--{$use_code_coupon.code_coupon_code}-->)<!--{/if}-->
                                </p>
                                <p>
                                <!--{if $use_code_coupon}-->
                                    <!--{if $use_code_coupon.discount_unit == 0}--><!--{* 割引の場合 *}-->
                                        <!--{$use_code_coupon.discount_value}-->%off&nbsp;(<!--{$use_code_coupon.format_discount}-->円off)
                                    <!--{else}--><!--{* 値引きの場合 *}-->
                                        <!--{$use_code_coupon.format_discount}-->円off
                                    <!--{/if}-->
                                    <button type="button" onclick="fnChangeAction('<!--{$smarty.server.PHP_SELF|escape}-->'); fnModeSubmit('remove_code_coupon','cart_no','<!--{$values.cart_no}-->'); return false">解除</button>
                                <!--{else}-->
                                    <input type="text" name="coupon_code" value="" id="coupon_code" />
                                    <button type="button" onclick="fnChangeAction('<!--{$smarty.server.PHP_SELF|escape}-->'); fnModeSubmit('code_coupon','cart_no','<!--{$values.cart_no}-->'); return false">適
用</button>
                                    <span id="error_coupon" style="color:red"><!--{$error_code_coupon}--></span>
                                <!--{/if}-->
                                </p>
                            </div>
                    <!--{/if}-->
                    <!--{/if}-->

				<!--{if $coupon_tr}-->
					<div class="resulttd"><span class="pricetd02">クーポン適用 -<!--{$coupon_tr|number_format}-->円</span></div>
				<!--{/if}-->
			<!--End Coupon-->

			<!--Start Sum total-->
				<ul class="cart_total">
					<li>
						小計:<span class="pricetd02">
						<!--{if $reg_get == 1 && $regular_product.type == 1}-->
							<!--{$tpl_regular_add_price|number_format}-->円
						<!--{else}-->
							<!--{math equation="x + y" x=$tpl_total_pretax y=$tpl_regular_add_price assign="total_pretax_view2"}--><!--{$total_pretax_view2|number_format}-->円
						<!--{/if}--></span>
					</li>
					<li>合計:<span class="pricetd02">
						<!--{if $reg_get == 1 && $regular_product.type == 1}-->
						<!--{$tpl_regular_add_price|number_format}-->円
						<!--{else}-->
						<!--{assign var=total_tmp value=$arrData.total-$arrData.deliv_fee}-->
						<!--{math equation="x + y" x=$total_tmp y=$tpl_regular_add_price assign="total_view"}--><!--{$total_view|number_format}-->円
						<!--{/if}--></span>
					</li>
                <!--{if !$use_code_coupon}-->
				<!--{if $arrData.birth_point > 0 and $reg_get != 1}-->
					<li>お誕生月ポイント:<span class="pricetd02"><!--{$arrData.birth_point|number_format}-->pt</span></li>
				<!--{/if}-->
				<!--{if $point_flg != 2 and $reg_get != 1}-->
					<li>今回加算ポイント:<span class="pricetd02"><!--{$arrData.add_point|number_format}-->pt</span></li>
				<!--{/if}-->
                <!--{/if}-->
				</ul>
			<!--End Sum total-->

			<!-- Start ポイント情報 -->
			<div class="point_info">
				<!--{if $point_flg != 2}-->
					<!--{if $tpl_login}-->
						<!--メインコメント-->ポイント制度をご利用になられる場合は、会員登録後ログインしていだだきますようお願い致します。<br />
					<!--{/if}-->
					※ポイントは商品購入時に1pt＝<!--{$smarty.const.POINT_VALUE}-->円として使用することができます。<br />
				<!--{/if}-->
				<!--{* カゴの中に商品がある場合にのみ表示 *}-->
				<!--{if count($arrProductsClass) > 0 }-->
					お買い上げ商品の合計金額:「<em><!--{if $reg_get == 1 && $regular_product.type == 1}--><!--{$tpl_regular_add_price|number_format}--><!--{else}--><!--{math equation="x + y" x=$tpl_total_pretax y=$tpl_regular_add_price assign="total_pretax_view2"}--><!--{$total_pretax_view2|number_format}--><!--{/if}-->円</em>」
					<!--{if !$no_normal_fee_flg}-->
						<!--{if $arrInfo.free_rule > 0}-->
							<!--{if $tpl_deliv_free|number_format > 0 && !$deliv_free}-->
								あと「<em><!--{$tpl_deliv_free|number_format}-->円</em>」で送料無料です！！
							<!--{else}-->
								現在、「<em>送料無料</em>」です！！
							<!--{/if}-->
						<!--{/if}-->
					<!--{/if}-->
				<!--{/if}-->
			</div>
			<!-- End ポイント情報 -->
				<div class="explanation">
					※ 商品写真は参考用写真です。ご注文のカラーと異なる写真が表示されている場合でも、商品名に記載されているカラー表示で間違いございませんのでご安心ください。<br />
					上記内容でよろしければ<br />「購入手続きへ」のボタンをクリックしてください。
				</div>
			</form>
			<!--{else}-->
				<p class="empty" style="margin:10px 0px;"><em>※ 現在カート内に商品はございません。</em></p>
			<!--{/if}-->
	</div>

<!--{* ▼クロスセル▼ *}-->
<!--{assign var=found value=0}-->
<!--{foreach from=$arrProductsClass key=arr_key item="values" name=reg}-->
	<!--{if $values.product_id == '商品IDA'}--><!--{* 商品IDAに追加したい商品ID *}-->
		<!--{assign var=found value=1}-->
	<!--{/if}-->
	<!--{if $values.product_id == '商品IDB' && !$found}--><!--{* 商品IDBにクロスセル対象の商品ID *}-->
		<div class="upsell">
			<a href="/smp/cart/direct.php?param[]=商品IDA|1||&regular="><!--{* 0001に追加したい商品ID　ダイレクト購入リンク *}-->
			商品を追加する
			</a>
		</div>
		<!--{assign var=found value=1}-->
	<!--{/if}-->
<!--{/foreach}-->
<!--{* ▲クロスセル▲ *}-->

	<ul class="btn_area">
		<li class="prv_btn">
			<!--{if $tpl_prev_url != ""}-->
				<a href="<!--{$tpl_prev_url}-->">前のページへ戻る</a>
			<!--{/if}-->
		</li>
		<li class="nx_btn">
			<!--{if $is_cart_btn}-->
				<a href="javascript:void(0);" onclick="document.form1.submit();">購入手続きへ</a>
			<!--{/if}-->
		</li>
	</ul>
    
    <!--{if $amazon_pay_enabled && count($arrProductsClass) > 0}-->
        <div style="clear:both;"></div>
        <div id="amazon_button_area" style="padding-bottom: 1em;">
            <p style="margin:12px 0 3px; padding: 4px 0 2px; background: #232f3e; text-align: center">
                <span id="amazon_h">Amazonアカウントで決済できます</span>
            </p>
                Amazonに登録しているお支払い情報、お届け先情報を使用して簡単にお申込みいただけます。<br>
                （Amazonポイント・ギフト券はご利用いただけません）
            <div style="text-align:center;margin-top:8px">
                <!--{amazon_pay_button type="PwA" color="Gold" size="medium" parallel="yes"}-->
            </div>
        </div>
    <!--{/if}-->

</div>
