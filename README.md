# **Mercado libre ETL web Scraping y Analisis**

<h1>Indice</h1>
<div class="alert alert-block alert-info" style="margin-top: 20px">
    <ul>
        <li>
            <a href="#Codigo-Python">Código Python</a>
            <ul>
                <li><a href="#Funciones">Funciones</a></li>
                <li><a href="#Main">Main</a></li>
            </ul>
        </li>
        <li>
            <a href="#Dataset">Dataset</a>
        </li>
        <li>
            <a href="#Power-BI">Power BI</a>
            <ul>
                <li><a href="#DAX">DAX</a></li>
                <li><a href="#Dashboard">Dashboard</a></li>
            </ul>
        </li>
        <li>
            <a href="#Conclusiones">Conclusiones</a>
        </li>
    </ul>
</div>



# **Introducción**
Este proyecto tiene como objetivo automatizar la extracción, transformación y carga (ETL) de datos desde Mercado Libre mediante web scraping. Utilizamos Python como herramienta principal, junto con las librerías BeautifulSoup, requests y pandas, para recopilar, limpiar y transformar datos no estructurados en datos estructurados.

Los datos procesados se guardan en un archivo CSV quedando listos para integrarse con otras herramientas, a modo de ejemplo vamos a usar power bi para explorar los datos, construir visualizaciones que faciliten la interpretación de los resultados y generar valiosos insights.

# **Codigo Python**

A modo de ejemplo vamos a trabajar con la categoria "componentes de pc", pero podria ser cualquier categoria de productos en mercado libre simplemente cambiado el link.

<img src="Images/URL.png" alt="URL" width="1020" height="206">


## Funciones:
- #### *get_product_links*: su primer parametro es el link de la sección  a scrapear y el segundo la cantidad de paginas, asi se puede elegir que sección  recopilar datos y la cantidad de paginas. La funcion retorno una lista con los links de todos los productos producto en el rango.

  <img src="Images/get_product_link.png" alt="URL" width="757" height="411">

  
- #### *extract_product_data*: recibe un link de una publicacion de un producto como parametro, utilizando request y BeautifulSoup guarda el html del la pagina, crea un diccionario scrapeando por ejemplo el titulo, el precio, el tipo de producto, etc. Esta funcion extrae y hace pequeñas transformaciones para adaptar los datos en un buen formato, finalmente devuelve un diccionario con las claves y los valores del producto.

<img src="Images/extract_product_data.png" alt="URL" width="794" height="623">


- #### *classify_product_type*: funcion complentaria que nos ayuda a llenar la columna "type" recorre los titulos de los producto buscando palabras claves como "procesador", "gabinete", "ram" si encuentra coincidencia el producto se guarda en esa categoria.



## **MAIN**

inicializa una lista vacía llamada all_products, esta lista almacena cada diccionario de cada producto, al finalizar el bucle se convierte el diccionario en un DataFrame de pandas, para luego guardarlo como csv.
en este ejemplo de Scrapearon 10 paginas y se creo un dataSet con 477 filas que representan cada producto, de esta manera de registra de forma estructurada la informacion de cada producto de forma automatica y queda
lista para utilizarse en distintas herramientas, como excel, sql, power Bi, etc.

<img src="Images/main.png" alt="URL" width="748" height="441">


# **dataset**

<img src="Images/dataSet.png" alt="URL" width="1089" height="413">

# **Power bi**

## **DAX**
utilizamos una formula DAX para crear una nueva columna que almacena la recaudación estimada por cada producto.

<img src="Images/columna_recaudacion.png" alt="URL" width="1039" height="241">


## **Dashboard**


<img src="Images/dashboard_page-0001.jpg" alt="URL" width="1080" height="730">


# **conclusiones**
