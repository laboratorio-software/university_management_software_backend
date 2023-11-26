## Generall TO-DOs
TODO #1 - When deleting records, we need to ensure that the delete process is also being performed in DB.
TODO #2 - When taking DB into productions, we need to make sure there are admin user configured, and that the test user is deleted (if there is one).
TODO #3 - Configure Swagger to show not the schem but the personalized data to the users create endpoint.
TODO #4 - Find a way to delete records completeley from DB when deleting them from the app. Tables that have foreign keys are not being deleted completely. For example users profile when deleted, the User record in User table is not being deleted.
TODO #4 - Add allowed hosts origns to the .env file
<hr>

## VARIOUS IMPORTANT NOTES

1. Para configurar las bases de datos:
    - Cambiar el archivo .env -> Crear uno si no lo está.
    - Instalar mysqlclient, puede ser necesario primero instalarlo desde el sistema operativo (apt) y luego con python   (pip)

2. Looking for reusability, low dependency and high cohesion, allowing to have a modular project
**Hora:** Sab 4 de Nov de 2023, 11:40 pm

Se utilizó chat_gpt, y luego una revisión a mano para entender la mejor manera de separar las funciones de la aplicación, dado el modelo de bases de datos desarrollado. Esta fué la respuesta:


> Basándome en el modelo relacional que has proporcionado, aquí tienes una sugerencia para dividir el sistema en varias aplicaciones Django para asegurar un diseño modular, con bajo acoplamiento y alta cohesión:
> 
> 1. **Usuarios**:
>    - Modelos: `Usuario`, `Tipo_documento_identidad`, `Rol`
>    - Funcionalidad: Gestión de usuarios, roles y tipos de documentos.
> 
> 2. **ProgramasAcademicos**:
>    - Modelos: `Programa_academico`, `Programa_academico_con_asignaturas`, `Cambios_en_asignatura`
>    - Funcionalidad: Creación y gestión de programas académicos y su relación con las asignaturas.
> 
> 3. **Asignaturas**:
>    - Modelos: `Asignatura`, `Aignatura_con_grupos_de_notas`, `Grupo_nota`, `Nota`
>    - Funcionalidad: Creación y gestión de asignaturas, grupos de notas, y notas individuales.
> 
> 4. **CursosExtension**:
>    - Modelos: `Curso_extension`
>    - Funcionalidad: Creación y gestión de cursos de extensión.
> 
> 5. **Grupos**:
>    - Modelos: `Grupo`, `Usuarios_en_grupo`, `Clases_de_grupo`, `Clases`
>    - Funcionalidad: Creación y gestión de grupos, asignación de usuarios a grupos y programación de clases.
> 
> La idea detrás de este diseño es asegurar que cada aplicación tenga una responsabilidad única y clara. Por ejemplo, la aplicación **Usuarios** maneja todo lo relacionado con los usuarios, mientras que **ProgramasAcademicos** se encarga de la lógica relacionada con la gestión de programas académicos.
> 
> Este diseño también permite un alto nivel de reusabilidad. Si, por ejemplo, en el futuro se desea crear otro sistema que también necesite gestionar usuarios, podrías reutilizar la aplicación **Usuarios** con facilidad. Además, al separar las funcionalidades en aplicaciones diferentes, facilitas el mantenimiento y la escalabilidad de cada módulo de manera independiente. *

3. Documentación de la API
**Hora**: Dom 5 de Nov de 2023, 6:08 pm

Se utilizó drf_spectacular y su configuración con @extended_schema para poder hacer la documentación de los endpoints mas explicaita, teniendo en cuenta que estamos usando viewsets.
Se puede obserar que para cada viewset se define un conjunto de endpoints que son los bases proporcionados por drf y que con extend_schema se define cada enpoint sin necesidad de overidear la estructura base del endpoint. En el caso tal de que se necesite overirdear, se puede escribir el nombre tal cual, y cambiar la definición por aparte.
[Chat con gpt](https://chat.openai.com/share/5814f4d4-3a17-4859-8c30-71f701dbb348)

4. Funcionamiento de autenticación
Se esta utilizando DRf simpleJWT. Se tienes las siguientes rutas:
- /_nombre de la api_/token/ -> POST -> Para obtener el token de acceso y de refresh
- /_nombre de la api_/token/refresh/ -> POST -> Para refrescar el token de acceso

    1. Flujo de trabajo del token
        - El usuario se registra
        - El usuario inicia sesión y obtiene el token de acceso y el token de actualización
        - El usuario hace solicitudes a las rutas protegidas con el token de acceso. Por defecto todas las rutas de la API están protegidas gracias a la configuración ubicada en `settings.py` de:
            ```python
            ...
                'DEFAULT_PERMISSION_CLASSES': [
                    'rest_framework.permissions.IsAuthenticated',
                ]
            ```
        - El token de acceso expira en 10 minutos y el token de refresco expira en 24 horas, pero el usuario puede obtener nuevos tokens utilizando el token de acceso. Este se envía como parametro del body con el campo "refresh_token".
        - Para cerrar sesión se debe enviar a la API el token de refresco para que sea eliminado de la base de datos. Esto se hace en la ruta `/.../logout/` con el método POST. Se envía el token de refresco en el body con el campo "refresh_token". Se debe acompañar el request con el token de acceso ubicandolo en el header de autorización. Una vez recibida la respuesta 201, se procede a eliminar los tokens almacenados en el local storage del navegador.
        - DE lo anterior, se obtendrá un nuevo token una vez se inicie sesión.



