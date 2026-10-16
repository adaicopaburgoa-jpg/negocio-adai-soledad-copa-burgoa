# Guia de Metodos HTTP

En esta seccion se explican los cinco metodos HTTP principales utilizados en el desarrollo web y las APIs REST, documentados con ejemplos reales sobre la API publica **JSONPlaceholder** (`https://jsonplaceholder.typicode.com/posts`).

---

## 1. GET
* **Para que sirve?:** Se utiliza para solicitar o recuperar informacion de un recurso existente en el servidor. No modifica ningun dato.
* **Como se usa:** Se envia una peticion indicando la URL del recurso que se desea consultar.
* **Ejemplo real:**
  * **URL:** `https://jsonplaceholder.typicode.com/posts/1`
  * **Body:** Ninguno (los metodos GET no llevan cuerpo).
  * **Codigo de Estado (Status Code):** `200 OK` (Indica que la peticion fue exitosa).

---

## 2. POST
* **Para que sirve?:** Se utiliza para crear un nuevo recurso en el servidor.
* **Como se usa:** Se envia la informacion del nuevo recurso dentro del cuerpo de la peticion (*body*) en formato JSON.
* **Ejemplo real:**
  * **URL:** `https://jsonplaceholder.typicode.com/posts`
  * **Body (JSON):**
    ```json
    {
      "title": "Nuevo Post de Prueba",
      "body": "Contenido del post creado para la practica.",
      "userId": 1
    }
    ```
  * **Codigo de Estado (Status Code):** `201 Created` (Indica que el recurso fue creado exitosamente).

---

## 3. PUT
* **Para que sirve?:** Se utiliza para **reemplazar por completo** un recurso existente. Si falta algun campo en la peticion, este se sobrescribe o elimina.
* **Como se usa:** Se envia la estructura completa del recurso actualizado a traves del cuerpo de la peticion.
* **Ejemplo real:**
  * **URL:** `https://jsonplaceholder.typicode.com/posts/1`
  * **Body (JSON):**
    ```json
    {
      "id": 1,
      "title": "Post Actualizado con PUT",
      "body": "Este texto reemplaza completamente el contenido anterior.",
      "userId": 1
    }
    ```
  * **Codigo de Estado (Status Code):** `200 OK`.

---

## 4. PATCH
* **Para que sirve?:** Se utiliza para realizar **actualizaciones parciales** en un recurso. Solo modifica los campos que se envian, dejando intactos los demas.
* **Como se usa:** Se envia unicamente el campo o los campos que se desean modificar en el cuerpo de la peticion.
* **Ejemplo real:**
  * **URL:** `https://jsonplaceholder.typicode.com/posts/1`
  * **Body (JSON):**
    ```json
    {
      "title": "Titulo Modificado Parcialmente con PATCH"
    }
    ```
  * **Codigo de Estado (Status Code):** `200 OK`.

---

## 5. DELETE
* **Para que sirve?:** Se utiliza para eliminar un recurso especifico del servidor.
* **Como se usa:** Se envia la peticion especificando el identificador unico del recurso que se desea borrar.
* **Ejemplo real:**
  * **URL:** `https://jsonplaceholder.typicode.com/posts/1`
  * **Body:** Ninguno.
  * **Codigo de Estado (Status Code):** `200 OK` (o `204 No Content`).

---

## Diferencia clave entre PUT y PATCH
* **PUT** realiza una sustitucion total: sobreescribe el recurso entero enviando todos sus atributos obligatoriamente. Si se omite un campo, este se pierde o se vacia.
* **PATCH** realiza una modificacion selectiva: actualiza unicamente los campos especificos que se envian en la peticion, conservando el resto de la informacion intacta.

*Nota:* En herramientas de prueba como **JSONPlaceholder**, las modificaciones (PUT, PATCH, DELETE) se simulan localmente y reciben respuestas exitosas, pero los datos reales en el servidor no se alteran de forma permanente.