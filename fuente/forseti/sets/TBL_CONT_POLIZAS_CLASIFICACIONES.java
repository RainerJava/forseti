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


public class TBL_CONT_POLIZAS_CLASIFICACIONES
{
	private String m_ID_Clasificacion;
	private String m_Descripcion;
	private String m_Ficha;
	
	public void setID_Clasificacion(String ID_Clasificacion)
	{
		m_ID_Clasificacion = ID_Clasificacion;
	}

	public void setDescripcion(String Descripcion)
	{
		m_Descripcion = Descripcion;
	}


	public String getID_Clasificacion()
	{
		return m_ID_Clasificacion;
	}

	public String getDescripcion()
	{
		return m_Descripcion;
	}

	public void setFicha(String Ficha) 
	{
		m_Ficha = Ficha;
	}

	public String getFicha()
	{
		return m_Ficha;
	}
}

