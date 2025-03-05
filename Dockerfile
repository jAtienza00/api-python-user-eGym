# Usa una imagen oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /src

# Copia los archivos necesarios
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos del proyecto
COPY . .

# Expón el puerto que tu aplicación va a usar
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["python3", "app.py"]
