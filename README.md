# Microsoft SQL-Server als Docker Container
Mit leeren Datenbanken vorkonfigurierte Datenbankserver zum Testen der Applikationen.
Folgende Datenbank-Versionen stehen als Container bereit:
 * Microsoft SQL Server 2017 (Slim Oracle Linux)
 * Microsoft SQL Server 2019 (Slim Oracle Linux)

## Wie verwende ich die Container
 1. Wenn noch nicht geschehen in privatem DockerHub "amanaconsulting" einloggen (docker login)
 
 
 2. Image von DockerHub ziehen:
 	
	Mssql 2017: 	
	
		docker pull amanaconsulting/dbmssql:2017
	
 	Mssql 2019: 	
	
		docker pull amanaconsulting/dbmssql:2019
 
 
 3. Container starten:
 
 	Mssql 2017:	
	
		docker run --name mssql2017 -d -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Amana2020!' -p 1433:1433  amanaconsulting/dbmssql:2017
	
	Mssql 2019:	
		
		docker run --name mssql2019 -d -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Amana2020!' -p 1433:1433  amanaconsulting/dbmssql:2019
 
 
 4. Mit Datenbank verbinden:
 
	<table>
	<tr> <td><b>Datenbank</b></td> <td><b>Benutzer</b></td> <td><b>Passwort</b></td></tr>
	<tr> <td>DAC6</td> <td>dac6</td> <td>dac6</td> </tr>
	<tr> <td>GLC</td> <td>glc</td> <td>glc</td> </tr>
	<tr> <td>GTC</td> <td>gtc</td> <td>gtc</td> </tr>
	<tr> <td>MIGTEST</td> <td>migtest</td> <td>migtest</td> </tr>
	<tr> <td>PORTAL</td> <td>portal</td> <td>portal</td> </tr>
	<tr> <td>VAT</td> <td>vat</td> <td>vat</td> </tr>
	</table> 
