function ColorPicker(tar,e){
	window.open('./color_picker.php?tar='+tar,'ColorPicker','width=340,height=250');
}

/**
 * モバイル用詳細-メインコメントのキャレット位置取得
 * @author Y.Hanafuji 2009/04/02 
 */
function getCaretPosition(area,text) {
	if(area.createTextRange){ // IE
		var sValue = area.value;
		var caretPosition = area.selectionStart;
		var iNewSelectionEnd = area.selectionEnd;
		if(typeof caretPosition != "number"){
			var rngObj_S = document.selection.createRange();
			var rngObj_A = area.createTextRange();
			var rngObj_B = area.createTextRange();
			var iMaxIndex = rngObj_A.text.length;
			rngObj_B.moveToPoint(rngObj_S.offsetLeft, rngObj_S.offsetTop);
			rngObj_A.setEndPoint("StartToStart", rngObj_B);
			var iIndex = iMaxIndex - rngObj_A.text.length;
			
			//最後尾の改行計算バグ補正
			if(iIndex == iMaxIndex){
				var rngObj_T = area.createTextRange();
				rngObj_T.collapse(true);
				rngObj_T.setEndPoint("EndToStart", rngObj_A);
				var iCount = 0;
				while(rngObj_T.expand("character"))
				iCount++;
				iIndex += ((sValue.length - iIndex) - iCount*2);
			}
			
			caretPosition = iIndex;
			return caretPosition;
		}
	} else if(area.setSelectionRange) { // FireFox
		var caretPosition = area.selectionStart;
		return caretPosition;
	}
}
/**
 * モバイル用詳細-メインコメントのキャレット位置設定
 * @author Y.Hanafuji 2009/04/02 
 */
function setCaretPosition(area,text) {
	if(area.createTextRange){ // IE
		var areaRange = area.createTextRange();
		areaRange.moveEnd('character', -text.length);			// 選択開始位置
		areaRange.moveStart('character', 0);		// 選択開始位置
		areaRange.select();							// 指定位置選択
		return;
	} else if(area.setSelectionRange) { // FireFox
		area.setSelectionRange(0 ,0);
		return;
	}
}

/**
 * テキストエリアからタグを検索
 * @param	tags	タグ種キーワード(正規表現switch用)
 * @param	area_id	テキストエリアのid(テキストエリアにはnameも念のため同名で設定しておくこと)
 * 
 * @author Y.Hanafuji 2009/04/06 
 */
function seach_tag(tags,area_id) {
	var textarea = document.getElementById(area_id);			// モバイル用詳細メインコメントオブジェクト
	var txt      = textarea.value;								// テキストエリアの内容抜き出し
	var counter  = new String;
	var tag = '';
	
	switch(tags){
		case "a":
			tag = new RegExp('href *= *[\"\']','i');		// <A>タグの検索(iオプションは大文字小文字を判別しない)
			break;
		case "img":
			tag = new RegExp('img *src *= *[\"\']','i');	// <IMG>タグの検索(iオプションは大文字小文字を判別しない)
			break;
		default:
			return;
	}
	
	textarea.focus(); // テキストエリアにフォーカスを合わせる(念のため)
	
	var match_wd_length = 0;
	var sRange = 0;
	var eRange = 0;
	var initial_flg = false;
	
	if(txt.match(tag) == null){ // そもそも存在しなければエラー
		window.alert("見つかりませんでした");
		return;
	}
	
	var txt2 = txt.replace(/\r\n/ig,"\n");				// 改行コードの置換
	counter = getCaretPosition(textarea,txt2);			// キャレット位置取得
	counter -= 0;										// 取得値の数値化(取り出した値は文字列扱いの為)
	var txt3 = txt2.substr(counter,txt2.length);		// 前回検索した文字列の次からを検索対象とする
	var match_wd = txt3.match(tag);						// 文字列を検索
	if(match_wd != null){ // 見つかった場合
		match_wd_length = match_wd.toString().length;	// 検索結果文字列長取得(タグキーワードにスペースが含まれる可能性がある為)
		sRange = txt3.search(tag);						// 検索結果文字列開始位置を取得(見つかった文字がどこにあるか)
		
		txt_tmp = txt3.substr((sRange+match_wd_length),txt3.length);				// 文字列の見つかった場所の後から文末までを抜き出す
		eRange = (sRange+match_wd_length+counter)+txt_tmp.search(/\"|\'/i);			// 抜き出した文の最初に現れる("|')の位置を検索
		
		if (textarea.createTextRange) { // InternetExplorer
			var range = textarea.createTextRange();									// テキストレンジオブジェクト生成
			range.moveStart('character', (sRange+match_wd_length+counter));			// 選択開始位置(基の文で)
			range.moveEnd('character', -(txt2.length-eRange));						// 選択終了位置(基の文で)
			range.select();															// 指定範囲選択
		} else if (textarea.setSelectionRange) { // FireFox
			textarea.setSelectionRange((sRange+match_wd_length+counter), eRange);	// 指定範囲選択
		}
	}else{
		setCaretPosition(textarea,txt2);											// キャレット位置を初期化
		window.alert("文末迄検索しました。\n先頭へ戻ります。");
		initial_flg = true;
	}
	
	if(initial_flg){ // 文末まで検索したらもっかい呼び出す
		return seach_tag(tags,area_id);
	}else{
		return;
	}
}

