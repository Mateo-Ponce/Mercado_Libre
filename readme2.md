# Scraper de Componentes de PC en MercadoLibre

[![Versión de Python](https://img.shields.io/badge/python-3.8%2B-azul)](https://python.org)  
[![Licencia: MIT](https://img.shields.io/badge/Licencia-MIT-verde)](LICENSE)

Un scraper multihilo en Python que extrae listados de componentes de PC de MercadoLibre Argentina, limpia y categoriza los datos de producto, y los almacena en SQL Server o CSV.

---

## 📋 Índice

1. [Características](#-características)  
2. [Requisitos](#-requisitos)  
3. [Instalación](#-instalación)  
4. [Configuración](#-configuración)  
5. [Uso](#-uso)  
6. [Estructura del Código](#-estructura-del-código)  
7. [Esquema de la Base de Datos](#-esquema-de-la-base-de-datos)  
8. [Resultados y Ejemplos](#-resultados-y-ejemplos)  
9. [Contribuciones](#-contribuciones)  
10. [Licencia](#-licencia)  
11. [Contacto](#-contacto)  

---

## ✨ Características

- **Scraping multihilo** con número de hilos configurables  
- Cabeceras y delays aleatorios para simular navegación humana  
- Manejo automático de paginación  
- Clasificación de productos (CPU, RAM, GPU, etc.)  
- Limpieza de URLs para eliminar parámetros de tracking  
- Exportación a CSV e inserción masiva en SQL Server  
- Eliminación de duplicados y estadísticas de extracción  

---

## 🔧 Requisitos

- Python 3.8 o superior  
- Windows/macOS/Linux  
- SQL Server (con ODBC Driver 17) si se usan inserciones en DB  

---

## 🚀 Instalación

1. **Clonar el repositorio**  
   ```bash
   git clone https://github.com/tu-usuario/mercadolibre-pc-scraper.git
   cd mercadolibre-pc-scraper

## Configuración
### configuración DB
<img src="dataBaseConfing.png" alt="URL" width="854" height="206">

   
