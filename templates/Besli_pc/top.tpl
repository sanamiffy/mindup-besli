<!--{php}-->
	$original_logo = '';//original_pc_flasharea_image
	$tmp = glob(HTML_PATH.'upload/logo_image/top_page_main_visual_image_pc*');
	if(isset($tmp[0]) && $tmp[0] && preg_match('|([^\/]+)$|',$tmp[0],$cap)){
		$original_pc_flasharea_image = $cap[1];
		$this->assign('original_pc_flasharea_image',$original_pc_flasharea_image);
	}
<!--{/php}-->

<div id="top_smp_mainban">
<a href="https://besliselect.com/shopping/lp.php?p=mindup" target="_blank"><img src="../../gold/img/mindup/topban/top_ban_smt.jpg" alt="マインドアップ" /></a>
</div>