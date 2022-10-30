import mysql.connector

class conectar ():

    def __init__(self) -> None:
        try:
            self.conexion = mysql.connector.connect(
                 host = 'localhost',
                port = '3306',
                user='root', 
                password = '3578',  # utilizar la contraseña de mysql
                db = 'disqueria_grupo_ispt', # nombre de base de datos
            )

        except mysql.connector.Error as descripcionError:
            print("¡No se conectó!", descripcionError)
#Listado de álbumes disponibles por artista, en orden alfabético
    def ListarAlbumes(self):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                cursor.execute("SELECT ALBUM.cod_album, ALBUM.nombre, INTERPRETE.nombre, INTERPRETE.apellido, GENERO.nombre, DISCOGRAFICA.nombre, ALBUM.precio, ALBUM.cantidad, FORMATO.tipo FROM ALBUM, INTERPRETE, DISCOGRAFICA, FORMATO, GENERO WHERE ALBUM.id_interprete = INTERPRETE.id_interprete AND ALBUM.id_discografica = DISCOGRAFICA.id_discografica AND ALBUM.id_formato = FORMATO.id_formato AND ALBUM.id_genero = GENERO.id_genero ORDER By INTERPRETE.nombre")                
                resultados = cursor.fetchall() 
                self.conexion.close()
                return resultados              
            except mysql.connector.Error as descripcionError:
                print("¡No se conectó!", descripcionError) 

#Listado de álbumes disponibles por genero           
    def ListarAlbumesGenero(self):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                cursor.execute("SELECT ALBUM.cod_album, ALBUM.nombre, INTERPRETE.nombre, INTERPRETE.apellido, GENERO.nombre, DISCOGRAFICA.nombre, ALBUM.precio, ALBUM.cantidad, FORMATO.tipo FROM ALBUM, INTERPRETE, DISCOGRAFICA, FORMATO, GENERO WHERE ALBUM.id_interprete = INTERPRETE.id_interprete AND ALBUM.id_discografica = DISCOGRAFICA.id_discografica AND ALBUM.id_formato = FORMATO.id_formato AND ALBUM.id_genero = GENERO.id_genero ORDER By GENERO.nombre")                
                resultados = cursor.fetchall() 
                self.conexion.close()
                return resultados              
            except mysql.connector.Error as descripcionError:
                print("¡No se conectó!", descripcionError) 
#Listado de las otras tablas
    def ListarInterprete(self):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                cursor.execute("SELECT * from INTERPRETE")
                resultados = cursor.fetchall()
                self.conexion.close()
                return resultados
            except mysql.connector.Error as descripcionError:
                print("¡No se conectó!", descripcionError)

    def ListarTema(self):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                cursor.execute("SELECT * from TEMA")
                resultados = cursor.fetchall() 
                self.conexion.close()
                return resultados  
            except mysql.connector.Error as descripcionError:
                print("¡No se conectó!", descripcionError)

    def ListarGenero(self):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                cursor.execute("SELECT * from GENERO")
                resultados = cursor.fetchall() 
                self.conexion.close()
                return resultados  
            except mysql.connector.Error as descripcionError:
                print("¡No se conectó!", descripcionError)

    def ListarDiscografica(self):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                cursor.execute = ("SELECT * from DISCOGRAFICA")
                resultados = cursor.fetchall() 
                self.conexion.close()
                return resultados
            except mysql.connector.Error as descripcionError:
                print("¡No se conectó!", descripcionError)

    def ListarFormato(self):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                cursor.execute = ("SELECT * from FORMATO")
                resultados = cursor.fetchall() 
                self.conexion.close()
                return resultados
            except mysql.connector.Error as descripcionError:
                print("¡No se conectó!", descripcionError)

#Listado de álbumes disponibles por artista, en orden alfabético.

con= conectar()
print ("Listado de álbumes disponibles por artista, en orden alfabético ")
for album in con.ListarAlbumes():
    print ("Album: ", album[1] + ". " + "INTERPRETE: ", album[2])
con= conectar()
#Listado de álbumes disponibles por genero  en orden alfabético.
print ("Listado de álbumes disponibles por genero, en orden alfabético ")
for genero in con.ListarAlbumesGenero():
    print ("Album: ", genero[1] + ". " + "GENERO: ", genero[4])
