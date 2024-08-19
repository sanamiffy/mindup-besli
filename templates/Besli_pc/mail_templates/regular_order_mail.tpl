<!--{$arrOrder.order_name01}--> <!--{$arrOrder.order_name02}--> 様

<!--{$tpl_header}-->

************************
　配送情報とご請求金額
************************

ご注文番号：<!--{$arrOrder.order_id}-->
お支払合計：<!--{$arrOrder.payment_total|number_format|default:0}-->円
ご決済方法：<!--{$arrOrder.payment_method}-->
<!--{if $regular.first_date}-->
初回お届け日：<!--{$regular.first_date|date_format:"%Y年%m月%d日"}-->
<!--{/if}-->
<!--{if $regular.second_date}-->
2回目お届け日：<!--{$regular.second_date|date_format:"%Y年%m月%d日"}-->
<!--{/if}-->
お届け時間：<!--{$arrOrder.deliv_time|default:"指定なし"}-->
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
商品名: <!--{$arrOrderDetail[cnt].product_name}--> <!--{$arrOrderDetail[cnt].classcategory_name1}--> <!--{$arrOrderDetail[cnt].classcategory_name2}-->
商品コード: <!--{$arrOrderDetail[cnt].product_code}-->
数量：<!--{$arrOrderDetail[cnt].quantity}-->
金額：<!--{$arrOrder.subtotal|number_format|default:0}-->円<!--{if $arrOrder.combine_view_flg}--> [同梱商品分 <!--{$arrOrder.regular_add_price}-->円]<!--{/if}-->

<!--{/section}-->
------------------------
小　計 <!--{$arrOrder.subtotal|number_format|default:0}--> (うち消費税 <!--{$arrOrder.tax|number_format|default:0}-->円）
値引き <!--{$arrOrder.use_point+$arrOrder.discount|number_format|default:0}-->円
送　料 <!--{$arrOrder.deliv_fee|number_format|default:0}-->円
<!--{if $arrOrder.sendingDetail }-->
<!--{foreach key=key item=item from=$arrOrder.sendingDetail}-->
<!--{if $item.sending_name}-->
<!--{$item.sending_name}--> \ <!--{$item.sending_price|number_format|default:0}-->
<!--{/if}-->
<!--{/foreach}-->
<!--{/if}-->
手数料 <!--{$arrOrder.charge|number_format|default:0}-->円
<!--{if $arrOrder.relay_fee != 0}-->離島手数料 <!--{$arrOrder.relay_fee|number_format|default:0}-->円<!--{/if}-->

========================
合　計 <!--{$arrOrder.payment_total|number_format|default:0}-->円
<!--{if $arrOrder.customer_id}-->
========================
<!--{if $point_flg != 2}-->
保持ポイント <!--{$arrCustomer.point|default:0}--> pt
<!--{/if}-->
<!--{/if}-->
<!--{if $arrOrder.special_affairs}-->
************************
　特記事項
************************
<!--{$arrOrder.special_affairs}-->
<!--{/if}-->
<!--{$tpl_footer}-->
