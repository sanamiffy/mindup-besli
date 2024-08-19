<!--{if $layout == 'lp_header'}-->
<!--{* ↓↓ヘッダーデザイン↓↓ *}-->

<p>
    ここにヘッダーデザイン設定
</p>

<!--{* ↓↓商品切替スクロールリンク↓↓ *}-->
<p>
    <a href="#" data-value-name="1" class="auto_select_name" style="cursor: pointer">ここを押すと、商品名1が選択されます。</a><br>
    <a href="#" data-value-name="2" class="auto_select_name" style="cursor: pointer">ここを押すと、商品名2が選択されます。</a><br>
    <a href="#" data-value-name="3" class="auto_select_name" style="cursor: pointer">ここを押すと、商品名3が選択されます。</a><br>
    <a href="#" data-value-name="4" class="auto_select_name" style="cursor: pointer">ここを押すと、商品名4が選択されます。</a><br>
</p>
<!--{* ↓↓商品切替スクロールリンク↓↓ *}-->

<!--{* ↑↑ヘッダーデザイン↑↑ *}-->
<!--{/if}-->

<!--{if $layout == 'lp_product'}-->
<!--{* ↓↓商品リスト↓↓ *}-->
<option value=""<!--{if $select === ''}--> selected="selected"<!--{/if}-->>＜＜商品を選択してください＞＞</option>
<option value="1"<!--{if $select === '1'}--> selected="selected"<!--{/if}-->>商品名1</option>
<option value="2"<!--{if $select === '2'}--> selected="selected"<!--{/if}-->>商品名2</option>
<option value="3"<!--{if $select === '3'}--> selected="selected"<!--{/if}-->>商品名3</option>
<option value="4"<!--{if $select === '4'}--> selected="selected"<!--{/if}-->>商品名4</option>
<!--{* ↑↑商品リスト↑↑ *}-->
<!--{/if}-->

<!--{if $layout == 'lp_footer'}-->
<!--{* ↓↓フッターデザイン↓↓ *}-->

ここにフッターデザイン設定

<!--{* ↑↑フッターデザイン↑↑ *}-->

<!--{* ↓↓商品切替スクロールリンクの設定↓↓ *}-->
<script>
$(function(){
  $(".auto_select_name").click(function(){
    var product_id = $(this).attr("data-value-name");
    $("#product_id").val(product_id);
    $('#class_category_select').empty();
    lp_init(product_id, $('#quantity').val(), null);
    lp.adjustScroll(
       '#product_id', <!--{* 基準となる位置のidを指定してください *}-->
       -20,           <!--{* この数値は適宜修正してください *}-->
       true           <!--{* スクロールアニメーションが不要の場合は false にしてください。 *}-->
    );
    return false;
  });
});
</script>
<!--{* ↑↑商品切替スクロールリンク↑↑ *}-->
<!--{/if}-->
