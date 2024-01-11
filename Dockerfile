# Usa la imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo en la carpeta de la aplicación
WORKDIR /usr/src/app

# Copia los archivos de requerimientos al directorio de trabajo
COPY requirements.txt .

RUN  pip install --upgrade pip

# Instala las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Base de Datos de Ixchel 
ENV 6f3c14e0-182f-4aa0-b911-885e5e5f5b4b 'mysql+mysqlconnector://root:bH-g4--6CcGAbEged3FeCgaG4h1aceHC@monorail.proxy.rlwy.net:50514/msvc_ixchel_db'

# Copia el código fuente de la aplicación al directorio de trabajo
COPY . .

# Expón el puerto en el que la aplicación se ejecutará
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
