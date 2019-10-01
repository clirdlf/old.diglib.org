/*
	wrap.js
	
	a script that wraps the whole <body> with an extra <div> that provides a warning
	note the dependence on CSS in wrap.css, at least as originally written
	
	Created by Eric Celeste for CLIR, June 2010.
	
	20151123 (efc) avoid wrapping Chrome (46.0.2490.86) pages twice
*/

var dlf_page_already_wrapped = false;

function wrapoldcontent() {

	if ( dlf_page_already_wrapped ) return; // bug in Chrome wraps pages twice otherwise
	
	var message = 'This website is no longer being maintained as of June 2010.<br />For current DLF information please go to: <a href="http://www.diglib.org">www.diglib.org</a>';
	
	var newHTML = '<div class="noticeofold"><div class="noticeofoldtext">' + message + '</div><div class="contentofold">' + document.body.innerHTML + '</div></div>';

	document.body.innerHTML = newHTML;
	
	dlf_page_already_wrapped = true;

}

function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(wrapoldcontent);
