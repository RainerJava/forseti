/*
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
*/
package forseti.sets;



public class TBL_INVSERV_LINEAS
{
	private String m_ID_Linea;
	private String m_ID_InvServ;
	private String m_Descripcion;
	private byte m_SincronizacionWeb;

	public void setID_Linea(String ID_Linea)
	{
		m_ID_Linea = ID_Linea;
	}

	public void setID_InvServ(String ID_InvServ)
	{
		m_ID_InvServ = ID_InvServ;
	}

	public void setDescripcion(String Descripcion)
	{
		m_Descripcion = Descripcion;
	}

	public void setSincronizacionWeb(byte SincronizacionWeb)
	{
		m_SincronizacionWeb = SincronizacionWeb;
	}


	public String getID_Linea()
	{
		return m_ID_Linea;
	}

	public String getID_InvServ()
	{
		return m_ID_InvServ;
	}

	public String getDescripcion()
	{
		return m_Descripcion;
	}

	public byte getSincronizacionWeb()
	{
		return m_SincronizacionWeb;
	}


}

