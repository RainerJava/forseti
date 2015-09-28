<!--
    Forseti, El ERP Gratuito para PyMEs
    Copyright (C) 2015 Gabriel Gutiérrez Fuentes.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
-->
<%@ page import="forseti.*, forseti.sets.*, java.util.*, java.io.*"%>
<%
	String adm_awss3_dlg = (String)request.getAttribute("adm_awss3_dlg");
	if(adm_awss3_dlg == null)
	{
		RequestDispatcher despachador = getServletContext().getRequestDispatcher("/forsetiadmin/errorAtributos.jsp");
      	despachador.forward(request,response);
		return;
	}
	
	String titulo;
	if(request.getParameter("proceso") != null)
		titulo =  JUtil.getSesion(request).getSesion("ADM_AWSS3").generarTitulo(JUtil.Msj("CEF","ADM_AWSS3","VISTA",request.getParameter("proceso"),3));
	else
	{
		String proceso = (String)request.getAttribute("proceso");
		titulo =  JUtil.getSesion(request).getSesion("ADM_AWSS3").generarTitulo(JUtil.Msj("CEF","ADM_AWSS3","VISTA",proceso,3));
	}
	
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Forseti</title>
<script language="JavaScript" type="text/javascript" src="../../compfsi/comps.js" >
</script>
<script language="JavaScript" type="text/javascript" src="../../compfsi/staticbar.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../../compfsi/estilos.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
<form action="/servlet/CEFAdmAWSS3Dlg" method="post" enctype="multipart/form-data" name="adm_awss3_dlg" target="_self">
<div id="topbar"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td class="titCuerpoBco" valign="middle" bgcolor="#333333"><%= titulo %></td>
    </tr>
    <tr> 
      <td>
	   <table width="100%" bordercolor="#333333" border="1" cellpadding="4" cellspacing="0">
          <tr>
            <td align="right" class="clockCef">
		     		<input type="submit" name="aceptar" onClick="javascript: this.disabled=true;" value="<%= JUtil.Msj("GLB","GLB","GLB","ACEPTAR") %>">
       				<input type="button" name="cancelar" onClick="javascript: document.location.href='/servlet/CEFAdmAWSS3Ctrl?ID_MODULO=<%= request.getParameter("ID_MODULO") %>&OBJIDS=<%= request.getParameter("OBJIDS") %>&IDSEP=<%= request.getParameter("IDSEP") %>'" value="<%= JUtil.Msj("GLB","GLB","GLB","CANCELAR") %>">
            </td>
          </tr>
        </table> 
      </td>
    </tr>
</table>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  	<tr>
 	  <td height="109" bgcolor="#333333">&nbsp;</td>
	</tr>
<%	
	String mensaje = JUtil.getMensaje(request, response);	
	out.println(mensaje);
	//out.print(JUtil.depurarParametros(request));
%>
  <tr> 
    <td> 
	    <table width="100%" border="0" cellpadding="1" cellspacing="0">
          <tr>
			<td width="20%"><div align="right"><%= JUtil.Msj("GLB","GLB","GLB","ARCHIVO") %></div></td>
			<td width="80%">
			  <input name="ID_MODULO" type="hidden" value="<%= request.getParameter("ID_MODULO") %>">
			  <input name="OBJIDS" type="hidden" value="<%= request.getParameter("OBJIDS") %>">
			  <input name="IDSEP" type="hidden" value="<%= request.getParameter("IDSEP") %>"> 
              <input name="archivo" type="file" class="cpoColAzc" size="254"></td>
		   </tr>
		 </table>
	  </td>
  </tr>
</table>
</form>
</body>
</html>
