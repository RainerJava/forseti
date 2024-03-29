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

public class view_cajas_vs_gengasto
{
	private byte m_Tipo;
	private int m_Clave;
	private byte m_ID_EntidadCompra;
	private String m_Descripcion;
	private boolean m_Enlazado;

	public void setTipo(byte Tipo)
	{
		m_Tipo = Tipo;
	}

	public void setClave(int Clave)
	{
		m_Clave = Clave;
	}

	public void setID_EntidadCompra(byte ID_EntidadCompra)
	{
		m_ID_EntidadCompra = ID_EntidadCompra;
	}

	public void setDescripcion(String Descripcion)
	{
		m_Descripcion = Descripcion;
	}

	public void setEnlazado(boolean Enlazado)
	{
		m_Enlazado = Enlazado;
	}


	public byte getTipo()
	{
		return m_Tipo;
	}

	public int getClave()
	{
		return m_Clave;
	}

	public byte getID_EntidadCompra()
	{
		return m_ID_EntidadCompra;
	}

	public String getDescripcion()
	{
		return m_Descripcion;
	}

	public boolean getEnlazado()
	{
		return m_Enlazado;
	}


}

