<!--
    Forseti, El ERP Gratuito para PyMEs
    Copyright (C) 2015 Gabriel Guti�rrez Fuentes.

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
<%@ page import="forseti.JUtil" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>Menu Principal</title></head>
<body bgcolor="#333333">

<script language='JavaScript1.2' src='../compfsi/coolmenus3.js'>
/*****************************************************************************
Copyright (c) 2001 Thomas Brattli (www.bratta.com)
eXperience DHTML coolMenus - Get it at www.bratta.com
Version 3.02
This script can be used freely as long as all copyright messages are intact.
******************************************************************************/
</script>
<script>
function lib_bwcheck()
{
	this.ver=navigator.appVersion; this.agent=navigator.userAgent
	this.dom=document.getElementById?1:0
	this.ie5=(this.ver.indexOf("MSIE 5")>-1 && this.dom)?1:0;
	this.ie6=(this.ver.indexOf("MSIE 6")>-1 && this.dom)?1:0;
	this.ie4=(document.all && !this.dom)?1:0;
	this.ie=this.ie4||this.ie5||this.ie6
	this.mac=this.agent.indexOf("Mac")>-1
	this.opera5=this.agent.indexOf("Opera 5")>-1
	this.ns6=(this.dom && parseInt(this.ver) >= 5) ?1:0;
	this.ns4=(document.layers && !this.dom)?1:0;
	this.bw=(this.ie6 || this.ie5 || this.ie4 || this.ns4 || this.ns6 || this.opera5 || this.dom)
	return this
}
var bw=new lib_bwcheck()
var mDebugging=2
oCMenu1=new makeCoolMenu("oCMenu1")
oCMenu1.useframes=1
oCMenu1.frame="cuerpo"
oCMenu1.useclick=0
oCMenu1.useNS4links=1
oCMenu1.NS4padding=2
oCMenu1.checkselect=0
oCMenu1.offlineUrl=""
oCMenu1.onlineUrl=""
oCMenu1.pagecheck=1
oCMenu1.checkscroll=1
oCMenu1.resizecheck=1
oCMenu1.wait=1000
oCMenu1.usebar=0
oCMenu1.barcolor="#23196C"
oCMenu1.barwidth="menu"
oCMenu1.barheight="menu"
oCMenu1.barx="menu"
oCMenu1.bary="menu"
oCMenu1.barinheritborder=0
oCMenu1.rows=1
oCMenu1.fromleft=0
oCMenu1.fromtop=0
oCMenu1.pxbetween=5
oCMenu1.menuplacement="left"

oCMenu1.level[0]=new Array()

oCMenu1.level[0].clip=1
oCMenu1.level[0].clippx=5
oCMenu1.level[0].cliptim=20
oCMenu1.level[0].filter=0

oCMenu1.level[0].align="bottom"


oCMenu1.level[0].width=100
oCMenu1.level[0].height=17
oCMenu1.level[0].bgcoloroff="#333333"
oCMenu1.level[0].bgcoloron="#339900"
oCMenu1.level[0].textcolor="#FFFFFF"
oCMenu1.level[0].hovercolor="#FFFFFF"
oCMenu1.level[0].style="padding:3px; font-family: Arial, 'Apple Chancery','DejaVu Sans Mono', monospace; font-size:10px; font-weight:Bold"
oCMenu1.level[0].border=1
oCMenu1.level[0].bordercolor="#444444"
oCMenu1.level[0].offsetX=0
oCMenu1.level[0].offsetY=0
oCMenu1.level[0].NS4font="Tahoma, Arial, Helvetica"
oCMenu1.level[0].NS4fontSize="2"

oCMenu1.level[1]=new Array()

oCMenu1.level[1].width=130
oCMenu1.level[1].height=18
oCMenu1.level[1].bgcoloroff="#333333"
oCMenu1.level[1].bgcoloron="#339900"
oCMenu1.level[1].textcolor="#FFFFFF"
oCMenu1.level[1].hovercolor="#FFFFFF"
oCMenu1.level[1].style="padding:2px; font-family: Arial, 'Apple Chancery','DejaVu Sans Mono', monospace; font-size:10px; font-weight:Normal"
oCMenu1.level[1].border=0
oCMenu1.level[1].bordercolor="#444444"
oCMenu1.level[1].offsetX=0
oCMenu1.level[1].offsetY=0
oCMenu1.level[1].NS4font="Tahoma, Arial, Helvetica"
oCMenu1.level[1].NS4fontSize="2"

oCMenu1.level[2]=new Array()

oCMenu1.level[2].width=120
oCMenu1.level[2].height=18
oCMenu1.level[2].bgcoloroff="#333333"
oCMenu1.level[2].bgcoloron="#339900"
oCMenu1.level[2].textcolor="#FFFFFF"
oCMenu1.level[2].hovercolor="#FFFFFF"
oCMenu1.level[2].style="padding:2px; font-family: Arial, 'Apple Chancery','DejaVu Sans Mono', monospace; font-size:10px; font-weight:Normal"
oCMenu1.level[2].border=0
oCMenu1.level[2].bordercolor="#444444"
oCMenu1.level[2].offsetX=-5
oCMenu1.level[2].offsetY=0
oCMenu1.level[2].NS4font="Tahoma, Arial, Helvetica"
oCMenu1.level[2].NS4fontSize="2"

oCMenu1.makeMenu('M0-0','','&nbsp;<%= JUtil.Msj("REF","MENU","GLB","DOCUMENTOS") %>','')
	oCMenu1.makeMenu('M1-0','M0-0','&nbsp;<%= JUtil.Msj("REF","MENU","DOCUMENTOS","PEDIDOS") %>','/servlet/fsi_b2b.docs.JDocPedidosCtrl')
	oCMenu1.makeMenu('M2-0','M0-0','&nbsp;<%= JUtil.Msj("REF","MENU","DOCUMENTOS","FACTURAS") %>','/servlet/fsi_b2b.docs.JDocFacturasCtrl')

oCMenu1.makeMenu('M0-1','','&nbsp;<%= JUtil.Msj("REF","MENU","GLB","CUENTA") %>','')
	oCMenu1.makeMenu('M10-0','M0-1','&nbsp;<%= JUtil.Msj("REF","MENU","CUENTA","DATOS") %>','/servlet/fsi_b2b.cuenta.JCuentaDatosCtrl')


oCMenu1.makeStyle(); oCMenu1.construct()
</script>
</body>
</html>