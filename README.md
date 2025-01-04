# **Mercado libre ETL web Scraping y Analisis**

# **Introducción**
Este proyecto tiene como objetivo automatizar la extracción, transformación y carga (ETL) de datos desde Mercado Libre mediante web scraping. Utilizamos Python como herramienta principal, junto con las librerías BeautifulSoup, requests y pandas, para recopilar, limpiar, transformar y almacenar datos de manera estructurada.

Los datos procesados se guardan en un archivo CSV, listos para integrarse con herramientas como SQL, Excel, o Power BI.
Finalmente, utilizamos Power BI para explorar los datos, construir visualizaciones que faciliten la interpretación de los resultados y generar poderosos insights.

# **Codigo Python**

A modo de ejemplo vamos a trabajar con la categoria "componentes de pc", pero podria ser cualquier categoria de productos en mercado libre simplemente cambiado el link.

<img src="Images/URL.png" alt="URL" width="1020" height="206">


### **Codigo Python**

se utilizan 3 funciones:
- get_product_links
