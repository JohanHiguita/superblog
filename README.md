# README

Registrarse
El usuario oprime el vínculo "Registrarse" en la barra de navegación principal. Allí ingresa un email y una contraseña. Si la información es válida, lo redirecciona a la lista de preguntas. De lo contrario, muestra un mensaje con los errores.

Ingresar
El usuario oprime el vínculo "Ingresar" en la barra de navegación. Allí ingresa su email y contraseña. Si son válidas, el sistema lo autentica y lo redirecciona a la lista de preguntas. De lo contrario, muestra un mensaje diciendo: "Tu email y/o contraseña son inválidas. Intenta nuevamente."

Listar Posts
Cuando un usuario (autenticado o no autenticado) ingresa a la aplicación, lo primero que ve es la lista de posts de todos los usuarios ordenados por fecha de creación ascendentemente. Para cada entrada se debe mostrar su título, correo del usuario que lo publicó, fecha de creación y los primeros 250 caracteres de la entrada. Por último, si el usuario está autenticado y el post pertenece a él, se deben mostrar links para editar y eliminar el post.

Ver Post
Cuando un usuario hace click sobre un post en la lista de posts, es redireccionado a una página que muestra el post completo.

Crear Post
Para crear un post, el usuario debe estar autenticado y hacer click sobre la opción "Nuevo Post" del menú principal. En el formulario deberá ingresar un título, el cuerpo del post (que debe soportar Markdown) y oprimir el botón "Crear post".

Si la información es válida (el título y el cuerpo no están vacíos, y el cuerpo tiene más de 250 caracteres) se crea el registro en la base de datos y se redirecciona al usuario a la lista de posts que debe mostrar un mensaje diciendo que el post fue creado exitosamente. De lo contrario, se muestra un mensaje con los errores.

Editar Post
Para editar un post, el usuario debe estar autenticado y hacer click sobre la opción "Editar" debajo del post que desee editar (el usuario debe ser el autor del post para que la opción esté visible). El sistema lo redirecciona al formulario de edición que muestra el título y el cuerpo. Para guardar los cambios deberá oprimir el botón "Editar Post".

Si la información es válida (el título y el cuerpo no están vacíos, y el cuerpo tiene más de 250 caracteres) se actualiza el registro en la base de datos y se redirecciona al usuario a la lista de posts que debe mostrar un mensaje diciendo que el post fue modificado exitosamente. De lo contrario, se muestra un mensaje con los errores.

Eliminar Post
Para eliminar un post, el usuario debe estar autenticado y hacer click sobre la opción "Eliminar" debajo del post que desee eliminar (el usuario debe ser el autor del post para que la opción esté visible). El sistema muestra un mensaje de confirmación que el usuario debe aceptar para eliminar el post.

Comentar Post
Para comentar sobre un post, el usuario debe estar autenticado e ingresar al post sobre el que desea comentar. Al final del post aparecerá un formulario con un único campo (el comentario) y un botón para comentar. El usuario deberá ingresar su comentario y oprimir el botón para dejar su comentario.

Criterios de evaluación
Está publicado en Heroku: 50 puntos.
Cada caso de uso: 50 puntos (son 9 casos de uso).
El modelo Post valida que el usuario esté presente: 5 puntos
El modelo Post valida que el título esté presente: 5 puntos
El modelo Post valida que el cuerpo esté presente: 5 puntos
El modelo Post valida que el cuerpo tenga al menos 250 caraceteres: 10 puntos
Los errores de validación al crear y editar un post son desplegados en pantalla: 15 puntos
Al listar los posts, la fecha de cada post está en palabras: 10 puntos.
Al listas los posts, la fecha de cada post está en español: 10 puntos.
Al listar los posts, se muestran los primeros 250 caracteres del texto: 10 puntos.
Al listar los posts, las opciones de editar y eliminar solo se muestran para usuarios autenticados y solo si el usuario es el autor del post: 10 puntos.
El formulario de comentar un post solo se muestra si el usuario está autenticado: 10 puntos.
Los posts soportan Markdown: 15 puntos
