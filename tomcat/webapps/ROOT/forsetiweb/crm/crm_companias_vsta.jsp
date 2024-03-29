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
<%@ page import="forseti.*, forseti.sets.*"%>
<%
	String crm_companias = (String)request.getAttribute("crm_companias");
	if(crm_companias == null)
	{
		RequestDispatcher despachador = getServletContext().getRequestDispatcher("/forsetiweb/errorAtributos.jsp");
      	despachador.forward(request,response);
		return;
	}
	
	// Parametros de entidad cuando se generan por primera vez
	String titulo =  JUtil.getSesion(request).getSesion("CRM_COMPANIAS").generarTitulo();
	String donde = JUtil.getSesion(request).getSesion("CRM_COMPANIAS").generarWhere();
	String orden = JUtil.getSesion(request).getSesion("CRM_COMPANIAS").generarOrderBy();
	String colvsta = JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","COLUMNAS",1);
	String coletq = JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","COLUMNAS",2);
	int etq = 1, col = 1;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script language="JavaScript" type="text/javascript" src="../../compfsi/comps.js">
</script>
<script language="JavaScript" type="text/javascript" src="../../compfsi/staticbar.js">
</script>
<script language="JavaScript" type="text/javascript">
<!-- 
if(top.location == self.location) {
	top.location.href = "../forsetiweb/forseti.html"
}
if(parent.tiempo.document.URL.indexOf('crm_companias_tmp.jsp') == -1) {
	parent.tiempo.document.location.href = "../forsetiweb/crm/crm_companias_tmp.jsp"
}
if(parent.entidad.document.URL.indexOf('crm_companias_ent.jsp') == -1) {
	parent.entidad.document.location.href = "../forsetiweb/crm/crm_companias_ent.jsp"
}
if(parent.ztatuz.document.URL.indexOf('crm_companias_sts.jsp') == -1) {
	parent.ztatuz.document.location.href = "../forsetiweb/crm/crm_companias_sts.jsp"
}
-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../../compfsi/estilos.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
<form action="/servlet/CEFCRMCompaniasDlg" method="post" enctype="application/x-www-form-urlencoded" name="crm_companias" target="_self">
<div id="topbar">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="titCuerpoBco" align="center" valign="middle" bgcolor="#333333"><%= titulo %></td>
  </tr>
<%	
	String mensaje = JUtil.getMensaje(request, response);	
	out.println(mensaje);
%>  
  <tr>
    <td bgcolor="#333333">
		<table width="100%" border="0" cellpadding="0" cellspacing="5">
		 <tr> 
          <td> 
		    <div align="right">
			  <input name="proceso" type="hidden" value="ACTUALIZAR">
			  <input name="submit" type="image" onClick="javascript:establecerProcesoSVE(this.form.proceso, 'AGREGAR_COMPANIA',<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","AGREGAR_COMPANIA",4) %>,<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","AGREGAR_COMPANIA",5) %>)" src="../imgfsi/<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","AGREGAR_COMPANIA") %>" alt="" title="<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","AGREGAR_COMPANIA",2) %>" border="0">
              <input name="submit" type="image" onClick="javascript:establecerProcesoSVE(this.form.proceso, 'CAMBIAR_COMPANIA',<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","CAMBIAR_COMPANIA",4) %>,<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","CAMBIAR_COMPANIA",5) %>)" src="../imgfsi/<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","CAMBIAR_COMPANIA") %>" alt="" title="<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","CAMBIAR_COMPANIA",2) %>" border="0">
              <input name="submit" type="image" onClick="javascript:establecerProcesoSVE(this.form.proceso, 'CONSULTAR_COMPANIA',<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","CONSULTAR_COMPANIA",4) %>,<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","CONSULTAR_COMPANIA",5) %>)" src="../imgfsi/<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","CONSULTAR_COMPANIA") %>" alt="" title="<%= JUtil.Msj("CEF","CRM_COMPANIAS","VISTA","CONSULTAR_COMPANIA",2) %>" border="0">
              <a href="/servlet/CEFCRMCompaniasCtrl" target="_self"><img src="../imgfsi/actualizar.png" alt="" title="<%= JUtil.Msj("GLB","VISTA","GLB","HERRAMIENTAS",1) %>" border="0"></a> 
             </div></td>
        </tr>
      </table></td>
  </tr> 
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
	  <table width="100%" border="0" cellpadding="1" cellspacing="0">
        <tr bgcolor="#0099FF">
			<td width="3%" align="center">&nbsp;</td>
			<td align="left"><a class="titChico" href="/servlet/CEFCRMCompaniasCtrl?orden=nm_legal&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
			<td width="10%" align="left"><a class="titChico" href="/servlet/CEFCRMCompaniasCtrl?orden=id_sector&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
			<td width="10%" align="left"><a class="titChico" href="/servlet/CEFCRMCompaniasCtrl?orden=id_legal&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
			<td width="10%" align="center"><a class="titChico" href="/servlet/CEFCRMCompaniasCtrl?orden=id_status&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
		</tr>
	 </table>
	</td>
  </tr>
</table>	
</div>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
 	  <td height="120" bgcolor="#333333">&nbsp;</td>
	</tr>
  	<tr>
      <td> 
        <table width="100%" border="0" cellpadding="1" cellspacing="0">
<%
	JCRMCompaniesViewSet set = new JCRMCompaniesViewSet(request);
	set.m_Where = donde;
	set.m_OrderBy = orden; 
	set.Open();
	
	for(int i=0; i < set.getNumRows(); i++)
	{
		String clase;
		
	   	if(set.getAbsRow(i).getID_status().equals("Activa"))
			clase = "";
		else if(set.getAbsRow(i).getID_status().equals("Disuelta"))
			clase = " class=\"txtChicoRj\"";
		else
			clase = "";
		%>
          <tr<%= clase %>>
	      	<td width="3%" align="center"><input type="radio" name="id" value="<%= set.getAbsRow(i).getGU_company() %>"></td>
			<td align="left"><%= set.getAbsRow(i).getNM_legal() %></td>
			<td width="10%" align="left"><%= set.getAbsRow(i).getID_sector() %></td>
			<td width="10%" align="left"><%= set.getAbsRow(i).getID_legal() %></td>
			<td width="10%" align="center"><%= set.getAbsRow(i).getID_status() %></td>
		  </tr>		
<%
	}
	//out.println(set.getSQL());
%>		

     </table>
	 </td>
  </tr>
</table>
</form>
</body>
</html>
