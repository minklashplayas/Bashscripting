Claro, aquí tienes algunos ejemplos de códigos de Python que podrías utilizar para automatizar tareas básicas:

1. **Copiar archivos de una carpeta a otra**:
```python
import shutil

# Rutas de origen y destino
origen = '/ruta/de/la/carpeta/origen'
destino = '/ruta/de/la/carpeta/destino'

# Copiar archivos
shutil.copytree(origen, destino)
```

2. **Renombrar archivos en una carpeta**:
```python
import os

# Ruta de la carpeta
carpeta = '/ruta/de/la/carpeta'

# Renombrar archivos
for archivo in os.listdir(carpeta):
    os.rename(os.path.join(carpeta, archivo), os.path.join(carpeta, 'nuevo_nombre_' + archivo))
```

3. **Eliminar archivos de una carpeta según ciertos criterios**:
```python
import os

# Ruta de la carpeta
carpeta = '/ruta/de/la/carpeta'

# Eliminar archivos que contienen cierta palabra clave en el nombre
palabra_clave = 'borrar'
for archivo in os.listdir(carpeta):
    if palabra_clave in archivo:
        os.remove(os.path.join(carpeta, archivo))
```

4. **Enviar un correo electrónico automáticamente**:
```python
import smtplib
from email.mime.text import MIMEText

# Configuración del servidor SMTP
smtp_server = 'smtp.gmail.com'
smtp_port = 587
sender_email = 'tu_correo@gmail.com'
receiver_email = 'correo_destino@gmail.com'
password = 'tu_contraseña'

# Crear el mensaje
mensaje = MIMEText('Este es un mensaje de prueba enviado desde Python.')
mensaje['Subject'] = 'Asunto del mensaje'
mensaje['From'] = sender_email
mensaje['To'] = receiver_email

# Conectar al servidor SMTP y enviar el mensaje
with smtplib.SMTP(smtp_server, smtp_port) as server:
    server.starttls()
    server.login(sender_email, password)
    server.sendmail(sender_email, receiver_email, mensaje.as_string())
```

Estos son solo algunos ejemplos simples de tareas que puedes automatizar con Python. Puedes personalizarlos según tus necesidades específicas y combinarlos para crear flujos de trabajo más complejos. Recuerda siempre tener cuidado al manipular archivos y al enviar correos electrónicos automáticamente.
## 
¡Claro! Aquí tienes algunos ejemplos adicionales de tareas que puedes automatizar con Python:

5. **Descargar archivos de internet**:
```python
import requests

# URL del archivo a descargar
url = 'https://ejemplo.com/archivo.zip'

# Ruta donde guardar el archivo descargado
ruta_destino = '/ruta/de/destino/archivo.zip'

# Descargar el archivo
response = requests.get(url)
with open(ruta_destino, 'wb') as f:
    f.write(response.content)
```

6. **Extraer contenido de archivos comprimidos**:
```python
import zipfile

# Ruta del archivo comprimido
archivo_zip = '/ruta/del/archivo/comprimido.zip'

# Ruta donde extraer los archivos
carpeta_destino = '/ruta/de/la/carpeta/destino'

# Extraer archivos
with zipfile.ZipFile(archivo_zip, 'r') as zip_ref:
    zip_ref.extractall(carpeta_destino)
```

7. **Automatizar interacciones en páginas web (web scraping)**:
```python
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

# Iniciar el navegador web
driver = webdriver.Chrome()

# Abrir una página web
driver.get('https://ejemplo.com')

# Encontrar un campo de entrada y escribir texto
campo_busqueda = driver.find_element_by_id('campo_busqueda')
campo_busqueda.send_keys('Python')
campo_busqueda.send_keys(Keys.RETURN)

# Encontrar elementos y extraer información
resultados = driver.find_elements_by_class_name('resultado')
for resultado in resultados:
    print(resultado.text)

# Cerrar el navegador
driver.quit()
```

8. **Automatizar tareas de análisis de datos**:
```python
import pandas as pd

# Cargar datos desde un archivo CSV
datos = pd.read_csv('archivo.csv')

# Realizar algún tipo de análisis
media = datos['columna'].mean()
print('La media de la columna es:', media)

# Guardar resultados en otro archivo
datos.to_excel('resultado.xlsx', index=False)
```

Estos son solo algunos ejemplos más de tareas que puedes automatizar con Python. La versatilidad del lenguaje te permite abordar una amplia variedad de problemas y procesos automatizables. ¡Espero que encuentres útiles estos ejemplos!


Por supuesto, aquí tienes algunos ejemplos un poco más avanzados de tareas que puedes automatizar con Python:

9. **Automatizar el envío de mensajes a través de APIs de mensajería**:
```python
import requests

# Configuración de la API de mensajería (por ejemplo, Twilio)
account_sid = 'tu_account_sid'
auth_token = 'tu_auth_token'
from_number = '+1234567890'  # Tu número de teléfono de Twilio
to_number = '+0987654321'    # El número de teléfono del destinatario

# Mensaje a enviar
mensaje = 'Este es un mensaje de prueba enviado desde Python.'

# Enviar el mensaje
url = 'https://api.twilio.com/2010-04-01/Accounts/{}/Messages.json'.format(account_sid)
payload = {'From': from_number, 'To': to_number, 'Body': mensaje}
r = requests.post(url, auth=(account_sid, auth_token), data=payload)

if r.status_code == 201:
    print('Mensaje enviado correctamente.')
else:
    print('Error al enviar el mensaje:', r.text)
```

10. **Automatizar la generación de informes utilizando plantillas de documentos**:
```python
from docx import Document
from docx.shared import Inches

# Crear un nuevo documento
documento = Document()

# Agregar contenido al documento
documento.add_heading('Informe Mensual', level=1)
documento.add_paragraph('Este es un informe mensual generado automáticamente.')

# Guardar el documento
ruta_destino = '/ruta/de/destino/informe.docx'
documento.save(ruta_destino)
```

11. **Automatizar la interacción con bases de datos**:
```python
import sqlite3

# Conectar a la base de datos SQLite
conexion = sqlite3.connect('base_de_datos.db')

# Crear una tabla
cursor = conexion.cursor()
cursor.execute('''CREATE TABLE IF NOT EXISTS usuarios
                  (id INTEGER PRIMARY KEY, nombre TEXT, edad INTEGER)''')

# Insertar datos en la tabla
cursor.execute("INSERT INTO usuarios (nombre, edad) VALUES (?, ?)", ('Juan', 30))
conexion.commit()

# Consultar datos
cursor.execute("SELECT * FROM usuarios")
for fila in cursor.fetchall():
    print(fila)

# Cerrar la conexión
conexion.close()
```

Estos ejemplos muestran cómo puedes automatizar tareas más avanzadas, como el envío de mensajes a través de APIs, la generación de informes utilizando plantillas de documentos y la interacción con bases de datos. ¡Espero que te sean útiles para tus proyectos de automatización!

##

Por supuesto, aquí tienes un ejemplo de automatización de interacción con un sitio web utilizando la biblioteca `requests` para realizar solicitudes HTTP y la biblioteca `Beautiful Soup` para analizar y extraer información de HTML:

```python
import requests
from bs4 import BeautifulSoup

# URL del sitio web a interactuar
url = 'https://example.com'

# Realizar una solicitud GET al sitio web
response = requests.get(url)

# Comprobar si la solicitud fue exitosa (código de estado 200)
if response.status_code == 200:
    # Parsear el contenido HTML de la página web
    soup = BeautifulSoup(response.text, 'html.parser')

    # Encontrar elementos específicos en la página y extraer información
    titulo = soup.find('h1').text.strip()
    parrafos = soup.find_all('p')

    # Imprimir el título y los párrafos encontrados
    print('Título:', titulo)
    print('Párrafos:')
    for p in parrafos:
        print('-', p.text.strip())
else:
    print('Error al cargar la página:', response.status_code)
```

Este ejemplo muestra cómo puedes realizar una solicitud GET a un sitio web, analizar el contenido HTML de la página con BeautifulSoup y extraer información específica, como el título y los párrafos. Puedes adaptar este código para interactuar con otros sitios web y realizar diferentes acciones, como completar formularios, hacer clic en botones, etc. Recuerda siempre revisar los términos de servicio del sitio web y cumplir con las políticas de uso aceptable al automatizar la interacción con sitios web.
