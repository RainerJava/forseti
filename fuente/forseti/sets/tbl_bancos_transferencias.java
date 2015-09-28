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



public class tbl_bancos_transferencias
{
	private int m_IDMovOrigen;
	private int m_IDMovDestino;

	public void setIDMovOrigen(int IDMovOrigen)
	{
		m_IDMovOrigen = IDMovOrigen;
	}

	public void setIDMovDestino(int IDMovDestino)
	{
		m_IDMovDestino = IDMovDestino;
	}


	public int getIDMovOrigen()
	{
		return m_IDMovOrigen;
	}

	public int getIDMovDestino()
	{
		return m_IDMovDestino;
	}


}
