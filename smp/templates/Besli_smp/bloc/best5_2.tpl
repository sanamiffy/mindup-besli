<!--▼オススメ商品ここから-->
<div id="recomendarea">
	<h2>おすすめ情報</h2>
	<!--{section name=cnt loop=$arrBestProducts}-->
		<div class="recomendblock">
			<div class="recomendleft">
				<!--{if $arrBestProducts[cnt].main_list_image != ""}-->
					<!--{assign var=image_path value="`$arrBestProducts[cnt].main_list_image`"}-->
				<!--{else}-->
					<!--{assign var=image_path value="`$smarty.const.NO_IMAGE_DIR`"}-->
				<!--{/if}-->
				<a href="/smp/product/detail/<!--{$arrBestProducts[cnt].product_id}-->">
				<img src="/upload/save_image/<!--{$image_path|sfRmDupSlash}-->" style="width: 68px; height: 68px" alt="<!--{$arrBestProducts[cnt].name|escape}-->" />
				</a>
			</div>
			<div class="recomendright">
				<a href="/smp/product/detail/<!--{$arrBestProducts[cnt].product_id}-->">
				<h3><!--{$arrBestProducts[cnt].name|escape}--></h3>
				<!--{assign var=price01 value=`$arrBestProducts[cnt].price01_min`}-->
				<!--{assign var=price02 value=`$arrBestProducts[cnt].price02_min`}-->
				<!--{assign var=session_customer_id value=$smarty.session.customer|@null_coalescing:"customer_id"}-->
				<p>
				価格<span class="mini">(税込)</span>：<span class="price">
				<!--{if $price02 == ""}-->
					<!--{$price01|reduce_price:$arrBestProducts[cnt].product_id:$session_customer_id|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->
				<!--{else}-->
					<!--{$price02|reduce_price:$arrBestProducts[cnt].product_id:$session_customer_id|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->
				<!--{/if}-->円
				</span>
				</p>
					<p class="mini"><!--{$arrBestProducts[cnt].comment|escape|nl2br|mb_strimwidth:0:100:'...':'UTF-8'}--></p>
				</a>
			</div>
		</div>
	<!--{/section}-->
</div>
<!--▲オススメ商品ここまで-->
