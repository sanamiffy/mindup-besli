<!--{$arrOrder.order_name01}--> <!--{$arrOrder.order_name02}--> 様

<!--{$tpl_header}-->

************************
　配送情報とご請求金額
************************

ご注文番号：<!--{$arrOrder.order_id}-->
お支払合計：￥ <!--{$arrOrder.payment_total|number_format|default:0}-->
ご決済方法：<!--{$arrOrder.payment_method}-->
　お届け日：<!--{$arrOrder.deliv_date|default:"指定なし"}-->
お届け時間：<!--{$arrOrder.deliv_time|default:"指定なし"}-->
<!--{if $arrOrder.deliv_no}-->
配送伝票番号：<!--{$arrOrder.deliv_no}-->
<!--{/if}-->
メッセージ：<!--{$Message_tmp}-->
◎お届け先
　お名前　：<!--{$arrOrder.deliv_name01}--> <!--{$arrOrder.deliv_name02}-->　様
　郵便番号：〒<!--{$arrOrder.deliv_zip01}-->-<!--{$arrOrder.deliv_zip02}-->
　ご住所　：<!--{$arrOrder.deliv_pref}--><!--{$arrOrder.deliv_addr01}--><!--{$arrOrder.deliv_addr02}-->
　電話番号：<!--{$arrOrder.deliv_tel01}-->-<!--{$arrOrder.deliv_tel02}-->-<!--{$arrOrder.deliv_tel03}-->

<!--{if $arrOther.title.value }-->
************************
　<!--{$arrOther.title.name}-->情報
************************

<!--{foreach key=key item=item from=$arrOther}-->
<!--{if $key != "title"}-->
<!--{if $item.name != ""}--><!--{$item.name}-->：<!--{/if}--><!--{$item.value}-->
<!--{/if}-->
<!--{/foreach}-->
<!--{/if}-->

************************
　ご注文商品明細
************************

<!--{section name=cnt loop=$arrOrderDetail}-->
<!--{assign var=product_code value=$arrOrderDetail[cnt].product_code}-->
商品名: <!--{$arrOrderDetail[cnt].product_name}--> <!--{$arrOrderDetail[cnt].classcategory_name1}--> <!--{$arrOrderDetail[cnt].classcategory_name2}-->
商品コード: <!--{$product_code}-->
数量：<!--{$arrOrderDetail[cnt].quantity}-->
金額：￥ <!--{$product_tax_amount_list[$product_code].amount|number_format|escape}--> <!--{if $arrOrderDetail[cnt].tax_id == $tax_id_mitigation}-->※<!--{/if}-->

<!--{/section}-->
------------------------
小　計 ￥ <!--{$arrOrder.subtotal|number_format|default:0|escape}-->
<!--{foreach from=$tax_amount_list key="num" item="tax" name="tax_list"}-->
    <!--{$tax.tax_type_name|escape}-->対象（<!--{$tax.tax_rate|number_format|escape}-->％） ￥ <!--{$tax.amount|number_format|escape}-->
<!--{/foreach}-->
値引き ￥ <!--{$arrOrder.use_point+$arrOrder.discount|number_format|default:0}-->
<!--{foreach from=$tax_amount_list key="num" item="tax" name="tax_list"}-->
<!--{if $tax.proration_price}-->
    <!--{$tax.tax_type_name|escape}-->対象割引後（<!--{$tax.tax_rate|number_format|escape}-->％） ￥ <!--{$tax.proration_price|number_format|escape}-->
<!--{/if}-->
<!--{/foreach}-->
送　料 ￥ <!--{$arrOrder.deliv_fee|number_format|default:0}-->
<!--{if $arrOrder.sendingDetail }-->
<!--{foreach key=key item=item from=$arrOrder.sendingDetail}-->
<!--{if $item.sending_name}-->
<!--{$item.sending_name}--> \ <!--{$item.sending_price|number_format|default:0}-->
<!--{/if}-->
<!--{/foreach}-->
<!--{/if}-->
手数料 ￥ <!--{$arrOrder.charge|number_format|default:0}-->
========================
合　計 ￥ <!--{$arrOrder.payment_total|number_format|default:0}-->
<!--{if $arrOrder.customer_id}-->
========================
<!--{/if}-->
単価欄に※が表示されている商品は軽減税率対象です。
<!--{$tpl_footer}-->
