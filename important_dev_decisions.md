## Toher not specfied TO-DOs
TODO #1 - When deleting records, we need to ensure that the delete process is also being performed in DB.
TODO #2 - I quit (05-10 at 3:27 am) in gradeGroup model definition. Left subject and subjectWithGroupsOfGrades models, all serializer and viewspkgs for this models, and the last app, groups.


<hr>

## VARIOUS IMPORTANT NOTES

1. Hay un superusuario de prueba con nombre *test* , email *test@example.com* y contraseña *default123* (contraseña de esta manera debido al protoclo de seguridad en contraseñas, que no lo quise bypasear :v). En producción y demás deber;a ser borrado y solamente se podrá acceder mediante usuarios mejor esepcificados. 
2. Para configurar las bases de datos:
    - Cambiar el archivo .env -> Crear uno si no lo está.
    - Instalar mysqlclient, puede ser necesario primero instalarlo desde el sistema operativo (apt) y luego con python   (pip)

<hr>

### 1. Looking for reusability, low dependency and high cohesion, allowing to have a modular project
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

### 2. Documentación de la API
**Hora**: Dom 5 de Nov de 2023, 6:08 pm

Se utilizó drf_spectacular y su configuración con @extended_schema para poder hacer la documentación de los endpoints mas explicaita, teniendo en cuenta que estamos usando viewsets.
Se puede obserar que para cada viewset se define un conjunto de endpoints que son los bases proporcionados por drf y que con extend_schema se define cada enpoint sin necesidad de overidear la estructura base del endpoint. En el caso tal de que se necesite overirdear, se puede escribir el nombre tal cual, y cambiar la definición por aparte.
[Chat con gpt](https://chat.openai.com/share/5814f4d4-3a17-4859-8c30-71f701dbb348)





