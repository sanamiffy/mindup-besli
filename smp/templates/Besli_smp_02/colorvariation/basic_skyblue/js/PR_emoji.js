//ブラウザ判別
function Browser() {

  var ua, s, i;

  this.isIE    = false;  // Internet Explorer
  this.isNS    = false;  // Netscape
  this.version = null;

  ua = navigator.userAgent;

  s = "MSIE";
  if ((i = ua.indexOf(s)) >= 0) {
    this.isIE = true;
    this.version = parseFloat(ua.substr(i + s.length));
    return;
  }

  s = "Netscape6/";
  if ((i = ua.indexOf(s)) >= 0) {
    this.isNS = true;
    this.version = parseFloat(ua.substr(i + s.length));
    return;
  }

  // Treat any other "Gecko" browser as NS 6.1.

  s = "Safari";
  if ((i = ua.indexOf(s)) >= 0) {
    this.isSA = true;
    this.version = 1.0;
    return;
  }

  s = "Gecko";
  if ((i = ua.indexOf(s)) >= 0) {
    this.isNS = true;
    this.version = 6.1;
    return;
  }

}

//読み込み時実行
var browser = new Browser();


//処理実行前の確認

function f_confirm(text) {
	if (!confirm('「 '+text+' 」 を削除してもよろしいですか？')) {
		return false;
	}
	return true;
}

function f_confirm2(text) {
	if (!confirm(text)) {
		return false;
	}
	return true;
}

//記事の状態変更
function f_change_state(entry_id, state) {
	location.href = "./?mode=list&target=state&eid="+entry_id+"&state="+state;
	return true;
}

//絵文字入力開閉
function inputTagShowHide(id, image){
	var disp = document.getElementById(id).style.display;
	if(disp == "block"){
		document.getElementById(id).style.display = "none";
		document.getElementById(image).src = "./img/tool_img/emoji_on.gif";
	}else{
		document.getElementById(id).style.display = "block";
		document.getElementById(image).src = "./img/tool_img/emoji_off.gif";
	}
	return false;
}

//簡単タグ入力
function addHiyoko(obj)
{
	var item = '\n(・e・)\nひよこまーく';
	
	//IE
	if (document.selection) {
		obj.focus();
		sel = document.selection.createRange();
		sel.text = item;
	}
	
	//Mozilla
	else if (obj.selectionStart || obj.selectionStart == '0') {
		var startPos = obj.selectionStart;
		var endPos   = obj.selectionEnd;
		obj.value = obj.value.substring(0, startPos)
					  + item
					  + obj.value.substring(endPos, obj.value.length);
	//Other
	} else {
		obj.value += item;
	}
}

function addImg(obj,src,width,height,alt,src2)
{
	
	var item ;
	if (src2.length == 0) {
		item = '<img src=\"' + src + '\" width=\"' + width + '\" height=\"' + height + '\" alt=\"' + alt + '\" class=\"pict\" />';
	}
	else {
		item = '<a href=\"' + src2 + '\" target=\"_blank\">';
		item += '<img src=\"' + src + '\" width=\"' + width + '\" height=\"' + height + '\" alt=\"' + alt + '\" class=\"pict\" />';
	    item += '</a>';
    }
	
	//IE
	if (document.selection) {
		obj.focus();
		sel = document.selection.createRange();
		sel.text = item;
	}
	
	//Mozilla
	else if (obj.selectionStart || obj.selectionStart == '0') {
		var startPos = obj.selectionStart;
		var endPos   = obj.selectionEnd;
		obj.value = obj.value.substring(0, startPos)
					  + item
					  + obj.value.substring(endPos, obj.value.length);
	//Other
	} else {
		obj.value += item;
	}
}

// function addEmoji(obj, tag)
// {
// 	var item = '[:' + tag + ':]';
// 	
// 	//IE
// 	if (document.selection) {
// 		obj.focus();
// 		sel = document.selection.createRange();
// 		sel.text = item;
// 	}
// 	
// 	//Mozilla
// 	else if (obj.selectionStart || obj.selectionStart == '0') {
// 		var startPos = obj.selectionStart;
// 		var endPos   = obj.selectionEnd;
// 		obj.value = obj.value.substring(0, startPos)
// 					  + item
// 					  + obj.value.substring(endPos, obj.value.length);
// 	//Other
// 	} else {
// 		obj.value += item;
// 	}
// }

function addTag(obj, tag) {

	
	var startTag = '<' + tag + '>';
	var endTag   = '</' + tag + '>';
	//IE
	if (document.selection) {
		obj.focus();
		var str = document.selection.createRange().text;
		if(!str) {
			return;
		}
		document.selection.createRange().text = '<' + tag + '>' + str + '</' + tag + '>';
		return;
	}
	

	//Mozilla
	else if ((obj.selectionEnd - obj.selectionStart) >0) {
		var startPos = obj.selectionStart;
		var endPos   = obj.selectionEnd;
		
		
		obj.value = obj.value.substring(0, startPos)
				  + startTag
				  + obj.value.substring(startPos, endPos)
				  + endTag
				  + obj.value.substring(endPos, obj.value.length);
		return;
	}
	
	/*
	//Safari
    else if (window.getSelection) {
		var str = window.getSelection();
		alert(str);
	}
	*/
	
	//Other
	else {
		obj.value += startTag + endTag;
	}
}


function changeFontsize(obj, tag) {
	
	var startTag = '<span style=\"font-size:' + tag + '\;\">';
	var endTag   = '</span>';
	//IE
	if (document.selection) {
		obj.focus();
		var str = document.selection.createRange().text;
		if(!str) {
			return;
		}
		document.selection.createRange().text = startTag + str + endTag;
		return;
	}
	//Mozilla
	else if ((obj.selectionEnd - obj.selectionStart) >0) {
		var startPos = obj.selectionStart;
		var endPos   = obj.selectionEnd;
		
		
		obj.value = obj.value.substring(0, startPos)
				  + startTag
				  + obj.value.substring(startPos, endPos)
				  + endTag
				  + obj.value.substring(endPos, obj.value.length);
		return;
	}
	//Other
	else {
		obj.value += startTag + endTag;
	}
}


function addLink(obj) {
	var url = prompt('リンクするサイトのURLを入力してください。', 'http://');
	if (url == null) {
		return;
	}
	
	var startTag = '<a href="' + url + '" target="_blank">';
	var endTag   = '</a>';
	
	//IE
	if (document.selection) {
		obj.focus();
		var str = document.selection.createRange().text;
		if(!str) {
			return;
		}
		document.selection.createRange().text = startTag + str + endTag;
		return;
	}
	//Mozilla
	else if ((obj.selectionEnd - obj.selectionStart) >0) {
		var startPos = obj.selectionStart;
		var endPos   = obj.selectionEnd;
		
		
		obj.value = obj.value.substring(0, startPos)
				  + startTag
				  + obj.value.substring(startPos, endPos)
				  + endTag
				  + obj.value.substring(endPos, obj.value.length);
		return;
	}
	//Other
	else {
		obj.value += startTag + endTag;
	}
	
}


//フォームをPOSTする。
function postForm(obj, action) {
	obj.action = action;
	obj.method = "post";
	obj.submit();
}


//文字列を実体参照化 
// reference from simpleboxes.jugem.cc (c)takkyun
function replaceEntity(str) { // 置換処理
  str = str.split("&").join("&amp;"); // & から変換すること
  str = str.split("<").join("&lt;");
  str = str.split(">").join("&gt;");
  str = str.split('"').join("&quot;");
  return(str);
}
function changeEntity(obj) {
  if (document.selection) { // WinIE
    obj.focus();
    var str = document.selection.createRange().text;
    if (str) {
      document.selection.createRange().text = replaceEntity(str);
    } else if (obj.value && confirm('テキストエリア内の「&,<,>,"」を実体参照化します。\n\nよろしいですか？')) { // 選択されていないとき
      obj.value = replaceEntity(obj.value);
    }
  } else if ( (obj.selectionEnd - obj.selectionStart) > 0 ) { // Mozilla
    var bgnPos = obj.selectionStart;
    var endPos = obj.selectionEnd;
    var bfrStr = obj.value.substring(0, bgnPos);
    var fcsStr = replaceEntity(obj.value.substring(bgnPos, endPos));
    var difLen = fcsStr.length - (endPos - bgnPos);
    var aftStr = obj.value.substring(endPos, obj.value.length);
    obj.value = Array(bfrStr,fcsStr,aftStr).join('');
    obj.setSelectionRange(bgnPos,endPos + difLen); // 選択し直し
  } else if (obj.value) { // Others (テキストエリア内全てが対象)
    if (confirm('テキストエリア内の「&,<,>,"」を実体参照化します。\n\nよろしいですか？')) {
      obj.value = replaceEntity(obj.value);
    }
  }
  return;
}


//実体参照化解除
// reference from simpleboxes.jugem.cc (c)takkyun
function changeTag(str) { // 置換処理
  str = str.split('&lt;').join("<");
  str = str.split('&gt;').join(">");
  str = str.split('&quot;').join('"');
  str = str.split('&amp;').join("&"); // & は最後に変換
  return(str);
}
function reverseEntity(obj) {
  if (document.selection) { // WinIE
    obj.focus();
    var str = document.selection.createRange().text;
    if (str) {
      document.selection.createRange().text = changeTag(str);
    } else if (obj.value && confirm('テキストエリア内の実体参照文字を「&,<,>,"」に変換します。\n\nよろしいですか？')) { // 選択されていないとき
      obj.value = changeTag(obj.value);
    }
  } else if ( (obj.selectionEnd - obj.selectionStart) > 0 ) { // Mozilla
    var bgnPos = obj.selectionStart;
    var endPos = obj.selectionEnd;
    var bfrStr = obj.value.substring(0, bgnPos);
    var fcsStr = changeTag(obj.value.substring(bgnPos, endPos));
    var difLen = fcsStr.length - (endPos - bgnPos);
    var aftStr = obj.value.substring(endPos, obj.value.length);
    obj.value = Array(bfrStr,fcsStr,aftStr).join('');
    obj.setSelectionRange(bgnPos,endPos + difLen); // 選択し直し
  } else if (obj.value) { // Others (テキストエリア内全てが対象)
    if (confirm('テキストエリア内の実体参照文字を「&,<,>,"」に変換します。\n\nよろしいですか？')) {
      obj.value = changeTag(obj.value);
    }
  }
  return;
}


//textarea伸縮
function increaseNotesHeight(thisTextarea, add) {
	if (thisTextarea) {
		newHeight = parseInt(thisTextarea.style.height) + add;
		thisTextarea.style.height = newHeight + "px";
	}
	if (document.getElementById('notes_height')) {
		document.getElementById('notes_height').value = newHeight;
	}
}

function decreaseNotesHeight(thisTextarea, subtract) {
	if (thisTextarea) {
		if ((parseInt(thisTextarea.style.height) - subtract) > 30) {
			newHeight = parseInt(thisTextarea.style.height) - subtract;
			thisTextarea.style.height = newHeight + "px";
		}
		else {
			newHeight = 30;
			thisTextarea.style.height = "30px";
		}			
	}
	if (document.getElementById('notes_height')) {
		document.getElementById('notes_height').value = newHeight;
	}
}


	//**************************************************************************************
	////////////////////   指定サイズでウィンドウを開き、センターに表示   //////////////////
	//--------------------------------------------------------------------------------------
	//	    gf_OpenNewWindow(URL,NAME,SIZE)
	//		SIZEは、"width=800:height=600"のように入力してください
	//**************************************************************************************
	function gf_OpenNewWindow(pURL,pName,pSize){
		var wWidth,wHeight;
		var wSize,wFeatures;
		var wLeft,wTop,PositionX,PositionY;

		wWidth = window.screen.availWidth/2;
		wHeight = window.screen.availHeight/2;
		wSize = pSize.split(":");
		wLeft = wSize[0].split("=");
		wTop = wSize[1].split("=");
		PositionX = wWidth-wLeft[1]/2;
		PositionY = wHeight-wTop[1]/2;
		
		wFeatures = wSize+",left="+PositionX+",top="+PositionY;
		wWindow = window.open(pURL,pName,wFeatures+",scrollbars=yes,status=yes,resizable=yes");

		wWindow.focus();

	}

	//*******************************
	// HELPウィンドウ
	//*******************************
	function jf_Help(){
		gf_OpenNewWindow("../../admin/etc/help/manual.html","HELP","width=500:height=600");
	}


// help popupの表示・非表示

if(document.getElementById){
	document.writeln('<style type="text/css" media="all">');
	document.writeln('<!--');
	document.writeln('.help{display:none;}');
	document.writeln('-->');
	document.writeln('</style>');
}

/*
function showHelp(showid,hideid){
		document.getElementById(showid).style.display = "inline";
		if (hideid != 'nohide'){
		document.getElementById(hideid).style.visibility = "hidden";
		}
	if(showid == 'help_category_id'){
		document.getElementById(showid).style.margin = "-60px 0 0 0";
	}
}
*/

function showHelp(showid,hideid){
	var elShow = document.getElementById(showid);
	var elHide = document.getElementById(hideid);
	
	elShow.style.display = "inline";
	if (hideid != 'nohide'){
		elHide.style.visibility = "hidden";
	}
	
	if(browser.isSA){
		elShow.style.margin = "20px 0 0 0";
    }else if(showid == 'help_category_id'){
    	elShow.style.margin = "-60px 0 0 0";
    }
}

function hideHelp(showid,hideid){
		document.getElementById(showid).style.display = "none";
		if (hideid != 'nohide'){
		document.getElementById(hideid).style.visibility = "visible";
		}
}


function EmojiWin(tar,e){
	x=getMouseX(e)+50;
	y=getMouseY(e);
	window.open('../design/emoji.php?mode=emoji&id='+tar,'EmojiWindow','left='+x+',top='+y+',width=320,height=280');
}
function getMouseX(e){
	if(document.all)   return window.event.screenX
	else if(document.layers || document.getElementById )return e.screenX
}

function getMouseY(e){
	if(document.all)   return window.event.screenY
	else if(document.layers || document.getElementById )return e.screenY
}

function switchObj(id){
	var obj = document.getElementById(id);
	if(obj.style.display=='none'){
		obj.style.display='block';
	}else{
		obj.style.display='none';
	}

}

function addColor(obj,color){
	
	//var tag='span style="color:'+color+'"';
	var startTag = '<span style="color:#'+color+'">';
	var endTag   = '</span>';
	//IE
	if (document.selection) {
		obj.focus();
		var str = document.selection.createRange().text;
		if(!str) {
			return;
		}
		document.selection.createRange().text = startTag + str + endTag;
		return;
	}
	//Mozilla
	else if ((obj.selectionEnd - obj.selectionStart) >0) {
		var startPos = obj.selectionStart;
		var endPos   = obj.selectionEnd;
		
		
		obj.value = obj.value.substring(0, startPos)
				  + startTag
				  + obj.value.substring(startPos, endPos)
				  + endTag
				  + obj.value.substring(endPos, obj.value.length);
		return;
	}
	//Other
	else {
		obj.value += startTag + endTag;
	}
}