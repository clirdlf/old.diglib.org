<%@LANGUAGE = VBSCRIPT%> <html><head><title>DLF Registration Form</title>
<%

' Get the form data
NameTitleOrganization        = Request.Form("NameTitleOrganization")
Address   = Request.Form("Address")
Address2  = Request.Form("Address2")
City      = Request.Form("City")
State     = Request.Form("State")
Province  = Request.Form("Province")
Zip		  = Request.Form("Zip")
Country   = Request.Form("Country")
Phone	  = Request.Form("Phone")
Fax  	  = Request.Form("Fax")
sendemail = Request.Form("email")
recipient="chartmann@clir.org"

subject = "DLF Event Registration: DLF Fall Forum 2005"
body = "<html><body><p>Name, Title, Organization: " & NameTitleOrganization
body = body & "<br>Email: " & sendemail
body = body & "<br>Address: " & Address
body = body & "<br>Address2: " & Address2
body = body & "<br>City: " & City
body = body & "<br>State: " & State
body = body & "<br>Zip: " & Zip
body = body & "<br>Country: " & Country
body = body & "<br>Phone: " & Phone
body = body & "<br>Fax: " & Fax & "</p></body></html>"

' Create the JMail message Object
set msg = Server.CreateOBject( "JMail.Message" )

' Set logging to true to ease any potential debugging
' And set silent to true as we wish to handle our errors ourself
msg.Logging = true
msg.silent = true

' Enter the sender data
msg.From = sendemail
msg.contenttype="text/html"

' Note that as addRecipient is method and not
' a property, we do not use an equals ( = ) sign
msg.AddRecipient recipient

' The subject of the message
msg.Subject = subject

' And the body
msg.body = body

' Now send the message, using the indicated mailserver
if not msg.Send("isiweb.infosrc.com" ) then
    Response.write "<pre>" & msg.log & "</pre>"
 else %>

<!DOCTYPE html SYSTEM "xhtml1-transitional.dtd">
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Registration for DLF Spring Forum 2005 Confirmation Page</title>
<meta http-equiv="Content-Type"
content="text/html; charset=windows-1252" />
<script type="text/javascript" language="javascript"
src="http://www.diglib.org/img/js">
</script>

<meta content="DLF Forum Registration Confirmation : Charlottesville : Fall 2005"
name="dc.Title" />
<meta content="Digital Library Federation" name="dc.Creator" />
<meta content="Forum" name="dc.Subject" />
<meta content="" name="dc.Description" />
<meta content="Digital Library Federation. Washington, DC"
name="dc.Publisher" />
<meta content="David Seaman. Added DC metadata."
name="dc.Contributor" />
<meta content="2005-01-03 name=" />
<meta content="text" name="dc.Type" />
<meta content="text/html" name="dc.Format" />
<meta content="/forums/spring2005/" name="dc.Identifier" />
<meta content="none" name="dc.Source" />
<meta content="en-us" name="dc.Language" />
<meta content="http://www.diglib.org/" name="dc.Relation" />
<meta content="none" name="dc.Coverage" />
<meta
content="Copyright 2005, Council on Library and Information Resources. Digital Library Federation. Publicly-accessible"
 name="dc.Rights" />



<script language="JavaScript" type="text/JavaScript">
<!--
function mmLoadMenus() {
  if (window.mm_menu_0509010157_0) return;
  window.mm_menu_0509010157_0 = new Menu("root",118,15,"Arial, Helvetica, sans-serif",11,"#330033","#330033","#cccc99","#cccc99","left","middle",2,0,500,-5,7,true,false,true,12,false,true);
  mm_menu_0509010157_0.addMenuItem("&nbsp;&nbsp;");
  mm_menu_0509010157_0.addMenuItem("DLF&nbsp;documents","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("and&nbsp;promotes&nbsp;","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("strategies&nbsp;for","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("building&nbsp;sustainable,&nbsp;","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("scalable&nbsp;digital&nbsp;","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("collections,&nbsp;and","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("encourages&nbsp;the","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("development&nbsp;of","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("new&nbsp;collections","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("and&nbsp;related","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("services.","location='../../collections.htm'");
  mm_menu_0509010157_0.addMenuItem("&nbsp;&nbsp;");
   mm_menu_0509010157_0.hideOnMouseOut=true;
   mm_menu_0509010157_0.menuBorder=0;
   mm_menu_0509010157_0.menuLiteBgColor='#ffffff';
   mm_menu_0509010157_0.menuBorderBgColor='#555555';
   mm_menu_0509010157_0.bgColor='#555555';
  window.mm_menu_0429144626_0 = new Menu("root",118,15,"Arial, Helvetica, sans-serif",11,"#330033","#330033","#cccc99","#cccc99","left","middle",2,0,500,-5,7,true,false,true,12,false,true);
  mm_menu_0429144626_0.addMenuItem("&nbsp;&nbsp;");
  mm_menu_0429144626_0.addMenuItem("DLF&nbsp;identifies,","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("documents,&nbsp;and","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("endorses&nbsp;standards","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("and&nbsp;best&nbsp;practices","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("that&nbsp;support&nbsp;the","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("effective&nbsp;creation,","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("interchange,","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("re-use,&nbsp;and&nbsp;","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("persistence&nbsp;of","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("digital&nbsp;library","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("objects.","location='../../produce.htm'");
  mm_menu_0429144626_0.addMenuItem("&nbsp;&nbsp;");
   mm_menu_0429144626_0.hideOnMouseOut=true;
   mm_menu_0429144626_0.menuBorder=0;
   mm_menu_0429144626_0.menuLiteBgColor='#ffffff';
   mm_menu_0429144626_0.menuBorderBgColor='#555555';
   mm_menu_0429144626_0.bgColor='#555555';
  window.mm_menu_0509010816_1 = new Menu("root",118,15,"Arial, Helvetica, sans-serif",11,"#330033","#330033","#cccc99","#cccc99","left","middle",2,0,500,-5,7,true,false,true,12,false,true);
  mm_menu_0509010816_1.addMenuItem("&nbsp;&nbsp;");
  mm_menu_0509010816_1.addMenuItem("DLF&nbsp;focuses&nbsp;on","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("practical&nbsp;initiatives","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("and&nbsp;research&nbsp;in","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("under-served","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("areas&nbsp;of&nbsp;digital&nbsp;","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("preservation,&nbsp;and","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("is&nbsp;committed&nbsp;to","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("long-term&nbsp;access","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("to&nbsp;the&nbsp;digital","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("intellectual&nbsp;and","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("scholarly&nbsp;record.","location='../../preserve.htm'");
  mm_menu_0509010816_1.addMenuItem("&nbsp;&nbsp;");
   mm_menu_0509010816_1.hideOnMouseOut=true;
   mm_menu_0509010816_1.menuBorder=0;
   mm_menu_0509010816_1.menuLiteBgColor='#ffffff';
   mm_menu_0509010816_1.menuBorderBgColor='#555555';
   mm_menu_0509010816_1.bgColor='#555555';
  window.mm_menu_0509011300_2 = new Menu("root",118,15,"Arial, Helvetica, sans-serif",11,"#330033","#330033","#cccc99","#cccc99","left","middle",2,0,500,-5,7,true,false,true,12,false,true);
  mm_menu_0509011300_2.addMenuItem("&nbsp;&nbsp;");
  mm_menu_0509011300_2.addMenuItem("DLF&nbsp;encourages","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("initiatives&nbsp;that","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("assess&nbsp;and","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("explain&nbsp;patterns","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("of&nbsp;digital&nbsp;library","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("usage,&nbsp;to&nbsp;help","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("libraries&nbsp;build","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("better-informed,","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("more&nbsp;useable,","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("collections&nbsp;and","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("services.","location='../../use.htm'");
  mm_menu_0509011300_2.addMenuItem("&nbsp;&nbsp;");
   mm_menu_0509011300_2.hideOnMouseOut=true;
   mm_menu_0509011300_2.menuBorder=0;
   mm_menu_0509011300_2.menuLiteBgColor='#ffffff';
   mm_menu_0509011300_2.menuBorderBgColor='#555555';
   mm_menu_0509011300_2.bgColor='#555555';
  window.mm_menu_0509011629_3 = new Menu("root",118,15,"Arial, Helvetica, sans-serif",11,"#330033","#330033","#cccc99","#cccc99","left","middle",2,0,500,-5,7,true,false,true,12,false,true);
  mm_menu_0509011629_3.addMenuItem("&nbsp;&nbsp;");
  mm_menu_0509011629_3.addMenuItem("DLF&nbsp;defines&nbsp;and","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("and&nbsp;develops","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("prototypes&nbsp;for&nbsp;","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("digital&nbsp;library","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("architectures,","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("systems,&nbsp;and","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("system&nbsp;components,","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("communicates","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("important&nbsp;technical","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("trends,&nbsp;and","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("encourages","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("technology&nbsp;","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("transfer&nbsp;and","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("information&nbsp;sharing.","location='../../architectures.htm'");
  mm_menu_0509011629_3.addMenuItem("&nbsp;&nbsp;");
   mm_menu_0509011629_3.hideOnMouseOut=true;
   mm_menu_0509011629_3.menuBorder=0;
   mm_menu_0509011629_3.menuLiteBgColor='#ffffff';
   mm_menu_0509011629_3.menuBorderBgColor='#555555';
   mm_menu_0509011629_3.bgColor='#555555';

  mm_menu_0509011629_3.writeMenus();
} // mmLoadMenus()

//-->
</script>
<script language="JavaScript1.2" src="mm_menu.js" type="text/JavaScript"></script>

<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}

function MM_jumpMenuGo(selName,targ,restore){ //v3.0
  var selObj = MM_findObj(selName); if (selObj) MM_jumpMenu(targ,selObj,restore);
}

function quoteRotate() {
	if (Math.random) {
		strQuote = "quote1.gif^quote2.gif^quote3.gif^quote4.gif^quote5.gif^quote6.gif";
		arrQuote = strQuote.split("^");
		var num = Math.floor(Math.random() * arrQuote.length);
		quote_rotate.src = "../../images/"+arrQuote[num];
	}
}
//-->
</script>
<link media="screen" href="../../styles.css" rel="stylesheet" type="text/css" />
<link media="print" href="../../print.css" rel="stylesheet" type="text/css" />

</head>
<body onload="MM_preloadImages('images/preserve_r.gif','images/use_r.gif','images/build_r.gif','images/logo_r.gif','images/produce_r.gif')">
<script language="JavaScript1.2" type="text/JavaScript">mmLoadMenus();</script>
<a name="top"></a>
<table border="0" cellpadding="0" cellspacing="0">
  <tr class="noprint">
    <td width="192" height="133" rowspan="3" valign="bottom"><a href="../../dlfhomepage.htm" onmouseout="MM_swapImgRestore()" onblur="MM_swapImgRestore()" onmouseover="MM_swapImage('dlf_logo','','../../images/logo_r.gif',1)" onfocus="MM_swapImage('dlf_logo','','../../images/logo_r.gif',1)"><img src="../../images/logo.gif" alt="Digital Library Federation, Link: Home" name="dlf_logo" width="192" height="133" border="0" id="dlf_logo" /></a></td>

    <td width="333" height="95" colspan="3" rowspan="2" valign="top"><img src="../../images/quote_hold.gif" name="quote_rotate" alt="random quote" width="333" height="95" /></td>

    <td width="77" height="45" colspan="2" valign="top"><a href="../../publications.htm"><img src="../../images/pubs.gif" alt="Link: Publications" width="77" height="27" border="0" /></a></td>

    <td width="50" height="45" valign="top">
<img src="../../images/forum.gif" alt="Forum" width="50" height="27" border="0" /></td>

    <td width="71" height="45" colspan="2" valign="top"><a href="../../about.htm"><img src="../../images/about.gif" alt="Link: About DLF" width="71" height="27" border="0" /></a></td>

    <td width="53" height="45" valign="top">
<a href="../../news.htm"><img src="../../images/news.gif" alt="Link: News" width="53" height="27" border="0" /></a></td>
  </tr>
  <tr>
    <td width="251" height="50" colspan="6" valign="top">

<table width="251" border="0" cellpadding="0" cellspacing="0">
        <tr class="noprint"> 
          <td valign="top">
<a href="http://www.diglib.org/search.html">Search</a>
<!-- <form action="" method="post" name="searchform" id="search">
              <label for="textfield"><span class="news">Search&nbsp;</span></label>
              <input name="textfield" id="textfield" type="text" size="15" />
              <a href="javascript:document.searchform.submit();">
<img src="../../images/go.gif" alt="Link: go search" width="20" height="20" border="0" 
align="middle" /></a>&nbsp; 

<a href="sitemap/dlfsite.htm">
<img src="../../images/sitemap.gif" alt="Link: Sitemap" width="47" height="20" border="0" align="middle" /> </a>
</form> -->

</td>
</tr>
</table></td>
  </tr>
  <tr class="noprint"><!-- rollover descriptions for navigation do not line up correctly in Mac IE 5 browser -->

   <td width="117" height="38" valign="top"><a href="../../collections.htm" onmouseout="MM_startTimeout();MM_swapImgRestore();" onblur="MM_startTimeout();MM_swapImgRestore();" onmouseover="MM_showMenu(window.mm_menu_0509010157_0,0,38,null,'collect');MM_swapImage('collect','','images/collect_r.gif',1);" onfocus="MM_showMenu(window.mm_menu_0509010157_0,0,38,null,'collect');MM_swapImage('collect','','images/collect_r.gif',1);"><img src="../../images/collect.gif" alt="Link: Digital Collections" name="collect" width="117" height="38" border="0" id="collect" /></a></td>
       <td width="117" height="38" valign="top"><a href="../../produce.htm" onmouseout="MM_startTimeout();MM_swapImgRestore()" onblur="MM_startTimeout();MM_swapImgRestore();" onmouseover="MM_showMenu(window.mm_menu_0429144626_0,0,38,null,'produce');MM_swapImage('produce','','images/produce_r.gif',1)" onfocus="MM_showMenu(window.mm_menu_0429144626_0,0,38,null,'produce');MM_swapImage('produce','','images/produce_r.gif',1)"><img src="../../images/produce.gif" alt="Link: Digital Production" name="produce" width="117" height="38" border="0" id="produce" /></a></td>
    <td width="117" height="38" colspan="2" valign="top"><a href="../../preserve.htm" onmouseout="MM_startTimeout();MM_swapImgRestore()" onblur="MM_startTimeout();MM_swapImgRestore();" onmouseover="MM_showMenu(window.mm_menu_0509010816_1,0,38,null,'preserve');MM_swapImage('preserve','','images/preserve_r.gif',1)" onfocus="MM_showMenu(window.mm_menu_0509010816_1,0,38,null,'preserve');MM_swapImage('preserve','','images/preserve_r.gif',1)"><img src="../../images/preserve.gif" alt="Link: Digital Preservation" name="preserve" width="117" height="38" border="0" /></a></td>
    <td width="117" height="38" colspan="3" valign="top"><a href="../../use.htm" onmouseout="MM_startTimeout();MM_swapImgRestore()" onblur="MM_startTimeout();MM_swapImgRestore();" onmouseover="MM_showMenu(window.mm_menu_0509011300_2,0,38,null,'use'); MM_swapImage('use','','images/use_r.gif',1)" onfocus="MM_showMenu(window.mm_menu_0509011300_2,0,38,null,'use'); MM_swapImage('use','','images/use_r.gif',1)"><img src="../../images/use.gif" alt="Link: Use, users, and user support" name="use" width="117" height="38" border="0" /></a></td>
    <td width="116" height="38" colspan="2" valign="top"><a href="../../architectures.htm" onmouseout="MM_startTimeout();MM_swapImgRestore()" onblur="MM_startTimeout();MM_swapImgRestore();" onmouseover="MM_showMenu(window.mm_menu_0509011629_3,0,38,null,'build'); MM_swapImage('build','','images/build_r.gif',1)" onfocus="MM_showMenu(window.mm_menu_0509011629_3,0,38,null,'build'); MM_swapImage('build','','images/build_r.gif',1)"><img src="../../images/build.gif" alt="Link: Build: Digital Library Architectures, Systems, and Tools" name="build" width="116" height="38" border="0" /></a></td>
  </tr>
  <tr>
    <td class="noprint" width="192" height="634" valign="top" bgcolor="#CCCC99"><table width="192" border="0" cellpadding="0" cellspacing="18">
        <tr> 
       <td align="left" valign="top"> 

<p class="level2nav">DLF PARTNERS</p>
<script src="../../members.js" type="text/javascript"> </script> 

</td>
        </tr>
        <tr> 
          <td align="left" valign="top"><img src="../../images/horizline.gif" alt="&quot;&quot;" width="156" height="16" /></td>
        </tr>

        <tr> 
        <td align="left" valign="top"> <p class="level2nav">DLF ALLIES</p>
<script src="../../allies.js" type="text/javascript"> </script> 

        </td>
        </tr>

      <tr> 
          <td align="left" valign="top"><img src="images/horizline.gif" alt="&quot;&quot;" width="156" height="16" /></td>
        </tr>
        <tr>
          <td align="left" valign="top"><p class="level2nav">Comments</p>
<p class="news">Please send the <a href="mailto:dlf@clir.org">DLF Executive Director</a> 
your comments or suggestions. </p></td>
        </tr>
      </table></td>
    <td width="584" height="634" colspan="9" valign="top">

<!-- <img src="images/books.gif" alt="photo of books" width="56" height="59" /> -->

<!-- Begin text here -->

 <table width="100%" border="0" cellpadding="0" cellspacing="26">
        <tr> 
          <td align="left" valign="top"> 

<!-- form information -->
<!-- line calling the script -->
<form action="http://198.77.80.3/cgi-bin/FormMail-clir-reg.pl" method="post">

<!-- hidden field for who the message will come "from" -->
<input type="hidden" name="registrar" value="dseaman@clir.org">

<!-- hidden field for who will receive the information at CLIR -->
<input type="Hidden" name="recipient" value="chartmann@clir.org">

<!-- hidden field for page redirect to thank you page -->
<input type="hidden" name="redirect" value="http://www.diglib.org/forums/spring2005/registrationthanks.html">

<!-- hidden field with email subject line information -->
<input type="Hidden" name="subject" value="DLF Event Registration: DLF Spring Forum 2005">

<!-- hidden field for required fields -->
<input type="hidden" name="required" value="NameTitleOrganization, Address, City, Zip, Country, Phone, E-mail">



<!-- change -->
<h2><a href="http://www.diglib.org/forums/fall2005/">DLF Fall Forum 2005</a>: Charlottesville, Virginia</h2>

<table>
<tr>
<td>
<h3>1:00 p.m., Monday, November 7 &ndash;<br />
1:00 p.m., Wednesday, November 9, 2005</h3>
<!-- change -->
<dl>
</FONT>
<p>
Thank you for registering for the DLF Fall Forum 2005. This Web page validates your registration. Please print a copy for your records. We look forward to seeing you in Charlottesville! </p>
</p>
<!-- space at end of page --><!-- End text --><!-- Comments and credits -->
<p><b><img height="10" alt=""
src="http://www.diglib.org/img/spacer.gif" width="400"
align="top" /><br />
<font size="1"><a href="mailto:dseaman@clir.org">Please send comments
or suggestions</a>.<br />
</p>
</td>
</tr>
</tbody>
</table>

<script type="text/javascript" language="javascript">
postamble();
</script>



            <p><a href="#top" class="link">return to top &gt;&gt;</a></p></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p align="center" class="copyright">Copyright &copy; 2005 Digital Library 
        Federation. All rights reserved.</p>

<p align="center" class="copyright"> Last updated: 
<script language="JavaScript" type="text/javascript">

<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
var days = new Array(8);
days[1] = "Sunday";
days[2] = "Monday";
days[3] = "Tuesday";
days[4] = "Wednesday";
days[5] = "Thursday";
days[6] = "Friday";
days[7] = "Saturday";
var months = new Array(13);
months[1] = "January";
months[2] = "February";
months[3] = "March";
months[4] = "April";
months[5] = "May";
months[6] = "June";
months[7] = "July";
months[8] = "August";
months[9] = "September";
months[10] = "October";
months[11] = "November";
months[12] = "December";
var dateObj = new Date(document.lastModified)
var wday = days[dateObj.getDay() + 1]
var lmonth = months[dateObj.getMonth() + 1]
var date = dateObj.getDate()
var fyear = dateObj.getYear()
if (fyear < 2000) 
fyear = fyear + 1900
document.write(wday + ", " + lmonth + " " + date + ", " + fyear)
// End -->
</script>
</p>

 </td>
  </tr>
  <tr>
    <td width="192" height="1" valign="top"><img src="transparent.gif" alt="" width="192" height="1" /></td>
    <td width="117" height="1" valign="top"><img src="transparent.gif" alt="" width="117" height="1" /></td>
    <td width="117" height="1" valign="top"><img src="transparent.gif" alt="" width="117" height="1" /></td>
    <td width="99" height="1" valign="top"><img src="transparent.gif" alt="" width="99" height="1" /></td>
    <td width="18" height="1" valign="top"><img src="transparent.gif" alt="" width="18" height="1" /></td>
    <td width="59" height="1" valign="top"><img src="transparent.gif" alt="" width="59" height="1" /></td>
    <td width="50" height="1" valign="top"><img src="transparent.gif" alt="" width="50" height="1" /></td>
    <td width="8" height="1" valign="top"><img src="transparent.gif" alt="" width="8" height="1" /></td>
    <td width="63" height="1" valign="top"><img src="transparent.gif" alt="" width="63" height="1" /></td>
    <td width="53" height="1" valign="top"><img src="transparent.gif" alt="" width="53" height="1" /></td>
  </tr>
</table>
<script language="JavaScript" type="text/JavaScript"><!--
	quoteRotate();
//--></script>

<%
end if


' And we're done! the message has been sent.


%>
</body>
</html>