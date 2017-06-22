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