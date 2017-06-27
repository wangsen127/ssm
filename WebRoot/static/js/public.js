function checkPic(filename,suf){
	var pic = ["jpg","jpeg","png","gif","bmp"];
	var suffix = filename.substring(filename.lastIndexOf(".")+1);
	for (var i = 0; i < pic.length; i++) {
		var s = pic[i];
		if(s.toUpperCase()==suffix.toUpperCase()){
			return true;
		}
	}
	return false;
}

function changeToPic(str){
	if(str=="") 
		return "";
	var result = "";
	str = str.toLowerCase();
	if(str=="apk")
		result = "<img src='static/image/filetype/small/apk.png'/>";
	else if(str=="apps")
		result = "<img src='static/image/filetype/small/apps.png'/>";
	else if(str=="cad")
		result = "<img src='static/image/filetype/small/CAD.png'/>";
	else if(str=="doc" || str=="docx")
		result = "<img src='static/image/filetype/small/doc.png'/>";
	else if(str=="exe")
		result = "<img src='static/image/filetype/small/exe.png'/>";
	else if(str=="folder")
		result = "<img src='static/image/filetype/small/folder.png'/>";
	else if(str=="jpg" || str=="jpeg" || str=="png" || str=="gif" || str=="bmp")
		result = "<img src='static/image/filetype/small/img.png'/>";
	else if(str=="ipa")
		result = "<img src='static/image/filetype/small/ipa.png'/>";
	else if(str=="mp3" || str=="wav" || str=="mid" || str=="wma")
		result = "<img src='static/image/filetype/small/music.png'/>";
	else if(str=="pdf")
		result = "<img src='static/image/filetype/small/pdf.png'/>";
	else if(str=="ppt" || str=="pptx")
		result = "<img src='static/image/filetype/small/ppt.png'/>";
	else if(str=="rar" || str=="zip" || str=="7z" || str=="jar" || str=="iso")
		result = "<img src='static/image/filetype/small/rar.png'/>";
	else if(str=="torrent")
		result = "<img src='static/image/filetype/small/torrent.png'/>";
	else if(str=="txt")
		result = "<img src='static/image/filetype/small/txt.png'/>";
	else if(str=="mpeg" || str=="avi" || str=="mov" || str=="wmv" || str=="3gp"
		 || str=="mp4" || str=="rmvb" || str=="rm" || str=="mkv" || str=="flv"
		 || str=="swf")
		result = "<img src='static/image/filetype/small/video.png'/>";
	else if(str=="vsd")
		result = "<img src='static/image/filetype/small/vsd.png'/>";
	else if(str=="xls" || str=="xlsx")
		result = "<img src='static/image/filetype/small/xls.png'/>";
	else
		result = "<img src='static/image/filetype/small/other.png'/>";
	return result;
}