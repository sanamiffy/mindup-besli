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
<!--{$arrOrder.order_name01}--> <!--{$arrOrder.order_name02}--> �l

<!--{$tpl_header}-->

************************
�@�z�����Ƃ��������z
************************

�������ԍ��F<!--{$arrOrder.order_id}-->
���x�����v�F�� <!--{$arrOrder.payment_total|number_format|default:0}-->
�����ϕ��@�F<!--{$arrOrder.payment_method}-->
<!--{$arrOrder.deliv_date_display}-->�F<!--{$arrOrder.deliv_date|default:"�w��Ȃ�"}-->
���͂����ԁF<!--{$arrOrder.deliv_time|default:"�w��Ȃ�"}-->
<!--{if $arrOrder.deliv_no}-->
�z���`�[�ԍ��F<!--{$arrOrder.deliv_no}-->
<!--{/if}-->
���b�Z�[�W�F<!--{$Message_tmp}-->
�����͂���
�@�����O�@�F<!--{$arrOrder.deliv_name01}--> <!--{$arrOrder.deliv_name02}-->�@�l
�@�X�֔ԍ��F��<!--{$arrOrder.deliv_zip01}-->-<!--{$arrOrder.deliv_zip02}-->
�@���Z���@�F<!--{$arrOrder.deliv_pref}--><!--{$arrOrder.deliv_addr01}--><!--{$arrOrder.deliv_addr02}-->
�@�d�b�ԍ��F<!--{$arrOrder.deliv_tel01}-->-<!--{$arrOrder.deliv_tel02}-->-<!--{$arrOrder.deliv_tel03}-->

<!--{if $arrOther.title.value }-->
************************
�@<!--{$arrOther.title.name}-->���
************************

<!--{foreach key=key item=item from=$arrOther}-->
<!--{if $key != "title"}-->
<!--{if $item.name != ""}--><!--{$item.name}-->�F<!--{/if}--><!--{$item.value}-->
<!--{/if}-->
<!--{/foreach}-->
<!--{/if}-->

************************
�@���������i����
************************

<!--{section name=cnt loop=$arrOrderDetail}-->
<!--{assign var=product_code value=$arrOrderDetail[cnt].product_code}-->
���i��: <!--{$arrOrderDetail[cnt].product_name}--> <!--{$arrOrderDetail[cnt].classcategory_name1}--> <!--{$arrOrderDetail[cnt].classcategory_name2}-->
���i�R�[�h: <!--{$product_code|escape}-->
���ʁF<!--{$arrOrderDetail[cnt].quantity}--> ��
���z�F�� <!--{$product_tax_amount_list[$product_code].amount|number_format|escape}--> <!--{if $arrOrderDetail[cnt].tax_id == $tax_id_mitigation}-->��<!--{/if}-->

<!--{/section}-->
------------------------
���@�v �� <!--{$arrOrder.subtotal|number_format|default:0|escape}-->
<!--{foreach from=$tax_amount_list key="num" item="tax" name="tax_list"}-->
    <!--{$tax.tax_type_name|escape}-->�Ώہi<!--{$tax.tax_rate|number_format|escape}-->���j �� <!--{$tax.amount|number_format|escape}-->
<!--{/foreach}-->
�l���� �� <!--{$arrOrder.use_point+$arrOrder.discount|number_format|default:0}-->
<!--{foreach from=$tax_amount_list key="num" item="tax" name="tax_list"}-->
<!--{if $tax.proration_price}-->
    <!--{$tax.tax_type_name|escape}-->�Ώۊ�����i<!--{$tax.tax_rate|number_format|escape}-->���j �� <!--{$tax.proration_price|number_format|escape}-->
<!--{/if}-->
<!--{/foreach}-->
���@�� �� <!--{$arrOrder.deliv_fee|number_format|default:0}-->
<!--{if $arrOrder.sendingDetail }-->
<!--{foreach key=key item=item from=$arrOrder.sendingDetail}-->
<!--{if $item.sending_name}-->
<!--{$item.sending_name}--> \ <!--{$item.sending_price|number_format|default:0}-->
<!--{/if}-->
<!--{/foreach}-->
<!--{/if}-->
�萔�� �� <!--{$arrOrder.charge|number_format|default:0}-->
<!--{if $arrOrder.relay_fee != 0}-->�����萔�� �� <!--{$arrOrder.relay_fee|number_format|default:0}--><!--{/if}-->

========================
���@�v �� <!--{$arrOrder.payment_total|number_format|default:0}-->
<!--{if $arrOrder.customer_id}-->
========================
<!--{if $point_flg != 2}-->
<!--{* �������O�̃|�C���g {$tpl_user_point} pt *}-->
���g�p�|�C���g <!--{$arrOrder.use_point|default:0}--> pt
������Z�������Z�|�C���g <!--{$arrOrder.add_point|default:0}--> pt
�ێ��|�C���g <!--{$arrCustomer.point|default:0}--> pt
<!--{/if}-->
<!--{/if}-->
<!--{if $arrOrder.special_affairs}-->
************************
�@���L����
************************
<!--{$arrOrder.special_affairs}-->
<!--{/if}-->
�P�����Ɂ����\������Ă��鏤�i�͌y���ŗ��Ώۂł��B
<!--{$tpl_footer}-->
