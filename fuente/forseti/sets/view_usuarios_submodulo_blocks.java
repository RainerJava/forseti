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

public class view_usuarios_submodulo_blocks
{
	private String m_ID_Usuario;
	private short m_ID_Block;
	private String m_Etiqueta;
	private boolean m_Permitido;

	public void setID_Usuario(String ID_Usuario)
	{
		m_ID_Usuario = ID_Usuario;
	}

	public void setID_Block(short ID_Block)
	{
		m_ID_Block = ID_Block;
	}

	public void setEtiqueta(String Etiqueta)
	{
		m_Etiqueta = Etiqueta;
	}

	public void setPermitido(boolean Permitido)
	{
		m_Permitido = Permitido;
	}


	public String getID_Usuario()
	{
		return m_ID_Usuario;
	}

	public short getID_Block()
	{
		return m_ID_Block;
	}

	public String getEtiqueta()
	{
		return m_Etiqueta;
	}

	public boolean getPermitido()
	{
		return m_Permitido;
	}


}

