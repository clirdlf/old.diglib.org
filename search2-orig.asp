<!DOCTYPE html SYSTEM "xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en"
xml:lang="en">
<head>
<meta name="dc.Title" content="DLF. Use, users, and user support" />
<meta name="dc.Creator" content="Digital Library Federation" />
<meta name="dc.Subject" content="" />
<meta name="dc.Description" content="" />
<meta name="dc.Publisher"
content="Digital Library Federation. Washington, DC" />
<meta name="dc.Contributor"
content="David Seaman. Converted from htm to xhtml and added DC metadata." />
<meta name="dc.Date" content="2002-09-11" />
<meta name="dc.Type" content="text" />
<meta name="dc.Format" content="text/html" />
<meta name="dc.Identifier" content="use.htm" />
<meta name="dc.Source" content="none" />
<meta name="dc.Language" content="en-us" />
<meta name="dc.Relation" content="http://www.diglib.org/" />
<meta name="dc.Coverage" content="none" />
<meta name="dc.Rights"
content="Copyright 2002, Council on Library and Information Resources. Digital Library Federation. Publicly-accessible." />
<title>DLF. Use, users, and user support.</title>
</head>
<body background="img/DLFsidebar.gif" bgcolor="#FFFFFF"
link="#006600" alink="#660000" vlink="#CC6600" text="#000000">
<!-- Begin Table -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- DLF Graphic -->
<tr>
<td valign="bottom" align="left" colspan="3"><img
src="img/spacer.gif" width="12" height="1" border="0"
align="bottom" alt="x" /> <img src="img/dlflogosquare.gif"
alt="DLF logo" align="bottom" width="56" height="50" hspace="0"
vspace="15" /> <img src="img/spacer.gif" width="20" height="1"
border="0" align="bottom" alt="x" /> <img
src="img/dlflogotext.gif" alt="DLF logo" align="bottom"
width="282" height="41" hspace="1" vspace="15" /> </td>
</tr>



<!-- Navigation column -->
<tr>
<td valign="top" align="left" width="180"><img
src="img/spacer.gif" width="180" height="1" border="0"
align="left" alt="x" /> <br clear="all" />
 <a href="dlfhomepage.htm"><img src="img/rdlfhome.gif"
width="155" height="16" alt="DLF Home" border="0" /></a> 

<p><a href="about.htm"><img src="img/rabout.gif" width="155"
height="16" alt="About" border="0" /></a></p>

<p><a href="architectures.htm"><img src="img/rarch.gif"
width="155" height="16" alt="Architectures, systems and tools"
border="0" /></a></p>

<p><a href="preserve.htm"><img src="img/rpresv.gif" width="155"
height="16" alt="Digital preservation" border="0" /></a></p>

<p><a href="collections.htm"><img src="img/rcoll.gif" width="155"
height="16" alt="Digital collections" border="0" /></a></p>

<p><a href="standards.htm"><img src="img/rsandp.gif" width="155"
height="16" alt="Standards and practices" border="0" /></a></p>

<p><a href="use.htm"><img src="img/ruandu.gif" width="155"
height="16" alt="Use and users" border="0" /></a></p>

<p><a href="roles.htm"><img src="img/rrandr.gif" width="155"
height="16" alt="Roles and responsibilities"
border="0" /></a></p>

<p><a href="forums.htm"><img src="img/rforum.gif" width="155"
height="16" alt="DLF Forum" border="0" /></a></p>

<p><a href="publications.htm"><img src="img/rpandr.gif"
width="155" height="16" alt="Publications and resources"
border="0" /></a></p>
</td>
<!-- Gutter column -->
<td valign="top"><img src="img/spacer.gif" alt="x" align="top"
width="25" height="1" /> </td>
<!-- Text column -->
<td valign="top" width="75%"><!-- Begin text here -->
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td valign="top"><p><br />
      </p></td>
    </tr>
    <tr>
      <td valign="top"><img src="img/spacer.gif" width="1" height="25" border="0" valign="TOP" /> <br clear="all" />
          <%
QueryForm = Request.ServerVariables("PATH_INFO")

strQuery = ""
If Not(IsEmpty(Request("qu"))) AND Len(Request("qu")) > 0 Then strQuery = Request("qu")

intPage = 1
If Not(IsEmpty(Request("pg"))) Then
	On Error Resume Next
	intPage = CInt(Request("pg"))
	On Error Goto 0
End If

searchArea = ""
If Not(IsEmpty(Request("area"))) Then
	On Error Resume Next
	searchArea = CStr(Request("area"))
	On Error Goto 0
End If

If Len(strQuery) > 0 Then

    Set objQuery = Server.CreateObject("IXSSO.Query")
    Set objUtil = Server.CreateObject("IXSSO.Util")
    objQuery.Catalog = "diglib"
    objQuery.Query = strQuery & " AND (NOT #vpath *\_vti_*.) AND (NOT #filename *pv.htm?)"
 	If searchArea = "diglib" Then		'Restrict search to CLIR (non-DLF) areas only?
 		objQuery.Query = objQuery.Query & " AND (NOT #vpath \clir\*)"
 	End If
    objQuery.SortBy = "rank[d]"
    objQuery.Columns = "DocTitle, vpath, path, filename, size, write, characterization"

	If searchArea <> "dlf" Then
		objUtil.AddScopeToQuery objQuery, "c:\inetpub\wwwroot\diglib", "deep"
	Else
		objUtil.AddScopeToQuery objQuery, "c:\inetpub\wwwroot\diglib", "deep"
	End If

	On Error Resume Next
    Set rs = objQuery.CreateRecordSet("nonsequential")
    If Err <> 0 Then
		Response.Write Err.Description & "<BR>"
		errorOccurred = True
	End If
	On Error Goto 0

	If Not errorOccurred Then
	If Not rs.EOF Then

    rs.PageSize = 10
	rs.AbsolutePage = intPage

	intCurrRecord = rs.AbsolutePosition
    intLastRecordOnPage = intCurrRecord + rs.PageSize - 1
    If rs.RecordCount <> -1 And rs.RecordCount < intLastRecordOnPage Then intLastRecordOnPage = rs.RecordCount

    Response.Write "Results " & intCurrRecord & " to " & intLastRecordOnPage
    If rs.RecordCount <> -1 Then
        Response.Write " of " & rs.RecordCount
    End If
    Response.Write " matching &quot;" & strQuery & "&quot;.<BR>"
    Response.Write "<dl>" & vbCrLf
	Do While Not rs.EOF And intCurrRecord <= intLastRecordOnPage
%>
          <p> </p>
          <dt><%= intCurrRecord%>.
              <%if VarType(rs("DocTitle")) = 1 or rs("DocTitle") = "" then%>
              <b><a href="<%=rs("vpath")%>"><%= Server.HTMLEncode(rs("filename"))%></a></b>
              <%else%>
              <b><a href="<%=rs("vpath")%>"><%= Server.HTMLEncode(rs("DocTitle"))%></a></b>
              <%end if%>
          </dt>
          <dd>
            <%if VarType(rs("characterization")) = 8 and rs("characterization") <> "" then%>
            <%= Server.HTMLEncode(rs("characterization"))%>... <br />
            <%end if%>
            <cite> <a href="<%=rs("vpath")%>">http://<%=Request("server_name")%><%=rs("vpath")%></a> </cite>
            <%
		rs.MoveNext
		intCurrRecord = intCurrRecord + 1
	Loop

	If objQuery.QueryIncomplete then
		Response.Write "<P><I><B>The query is too expensive to complete.</B></I><BR>"
	end if

	if objQuery.QueryTimedOut then
		Response.Write "<P><I><B>The query took too long to complete.</B></I><BR>"
	end if

	Response.Write "</dl>" & vbCrLF

	else	'rs.EOF
		Response.Write "Your search did not match any documents."
	end if
%>
            <p><br />
            </p>
            <table width="60%">
              <tr>
                <td valign="top"><a href="search.html">New search</a></td>
                <%
    ' Output the "previous" button, if applicable.
    ' This retrieves the previous page of documents for the query.
	If intPage > 1 Then
%>
                <td align="left" valign="top">
                  <form action="<%=QueryForm%>" method="get">
                    <input type="hidden" name="qu" value="<%=Server.HTMLEncode(strQuery)%>" />
                    <input type="hidden" name="pg" value="<%=intPage-1%>" />
                    <input type="hidden" name="area" value="<%=searchArea%>" />
                    <input type="submit" value="Previous <%=rs.PageSize%> results" />
                </form></td>
                <%	end if

    ' Output the "next" button, if applicable.
    ' This button retrieves the next page of documents for the query.
    ' If the rs.RecordCount is available, the number of
    ' documents on the next page will be displayed.
	if Not rs.EOF then %>
                <td align="right" valign="top">
                  <form action="<%=QueryForm%>" method="get">
                    <input type="hidden" name="qu" value="<%=Server.HTMLEncode(strQuery)%>" />
                    <input type="hidden" name="pg" value="<%=intPage+1%>" />
                    <input type="hidden" name="area" value="<%=searchArea%>" />
                    <% NextString = "Next "
               if rs.RecordCount <> -1 then
                   NextSet = (rs.RecordCount - intCurrRecord) + 1
                   if NextSet > rs.PageSize then
                       NextSet = rs.PageSize
                   end if
                   NextString = NextString & NextSet & " results"
               else
                   NextString = NextString & " page of results"
               end if
             %>
                    <input type="submit" value="<%=NextString%>" />
                </form></td>
                <%	end if %>
                <% end if %>
              </tr>
            </table>
            <%
Else   ' query string is empty
%>
            <p>Please enter a search string.</p>
            <br />
            <a href="search.html">New search</a>
            <%
End If
%>
        </dd></td>
    </tr>
    <tr>
      <td valign="bottom">&nbsp;</td>
    </tr>
  </table>
  <!-- End text -->
  <!-- Comments and credits -->
<p><img src="img/spacer.gif" alt="x" align="top" width="400"
height="10" /><br />
 <font size="1"><a href="mailto:dlf@clir.org">Please send
comments or suggestions</a>.<br />
 Last updated: <!--#echo var="LAST_MODIFIED" -->
<br />
 &copy; 2002, Council on Library and Information
Resources</font></p>

<!-- Link to CLIR pages -->
<table border="0" cellpadding="0" cellspacing="0" width="140">
<tr>
<td><img src="img/clirlogo.gif" alt="CLIR" width="40"
height="40" /></td>
<td><a href="http://www.clir.org"><font size="2">CLIR Home
Page</font><br />
</a> </td>
</tr>
</table></td>
</tr>
</table>
</body>
</html>

