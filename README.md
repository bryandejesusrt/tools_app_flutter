# App de Herramientas con flutter


La "App de Herramientas" es una aplicación versátil diseñada para simplificar diversas tareas cotidianas. Desde determinar la edad con solo ingresar el nombre hasta obtener información detallada sobre universidades de un país, la aplicación ofrece una variedad de utilidades intuitivas y prácticas. Con funcionalidades como la consulta del clima en tiempo real y la recopilación de las últimas noticias del periódico HOY, la aplicación se convierte en un recurso integral que brinda conveniencia y acceso a información relevante. Explora la interfaz fácil de usar y aprovecha estas herramientas para mejorar tu día a día.

Esta aplicación no solo destaca por su funcionalidad, sino también por su interfaz visualmente atractiva y fácil de navegar. Las capturas de pantalla reflejan una experiencia de usuario agradable, con secciones claramente organizadas y un diseño limpio. Desde cálculos de edad hasta la exploración de universidades y la obtención de datos climáticos, la "App de Herramientas" se presenta como una aplicación integral que combina utilidad y estética para ofrecer una experiencia completa a sus usuarios.

Esta aplicación de herramientas incluye las siguiente funcionalidades que facilitan la resolución de diversas tareas. Incluye:

1. **Calculadora de Edad:**
   - Ingresa tu nombre y obtén automáticamente mediante un API de hace un aproximado de tu edad y en base a tu edad te da una foto de tu edad, si eres adulto, joven o anciano.

2. **Determinador de Sexo:**
   - Introduce tu nombre y recibe tu sexo, luego manera automática la app determina tu sexto, y en base a tu sexo te pinta en pantalla un imagen de tu sexo.

3. **Universidades por País:**
   - Proporciona el nombre de un país y recibe un listado de sus universidades, con este listado también hay un icono donde le das click y automáticamente te dirige hacia el sitio web oficial de la institución académica.

4. **Información del Clima:**
   - Utiliza la ubicación actual para mostrar datos climáticos como temperatura, presión atmosférica, velocidad del viento y humedad, con esta información puede serte muy util en el dia a dia.

5. **Últimas Noticias (Periódico HOY):**
   - La app hace una consulta las últimas noticias de periódico HOY y le puedes dar click a una de estas noticias para ver el detalle de la noticia elegida y ver el detalle de la misma.

6. **Perfil del Desarrollador:**
   - En la parte del menu superior hay un icono redondeado con una imagen de perfil, que cuando le das click aparece el perfil del desarrollador donde se muestra toda la información del quien desarrollo la app y habla sobre su vida.

¡Explora esta aplicación de herramientas para simplificar tus tareas diarias!

>[!Note]
>Esta aplicacion,no esta apta para usarse en producción, solo es un app  de practica de la tecnología de flutter, forma parte del la materia de desarrollo de aplicaciones móviles.

## Desarrollador
Desarrolladdor de la App: [Bryan De Jesus Rosa Tavarez](https://github.com/bryandejesusrt)

## APi's Utilizadas
- **Predice Genero:** Aceptar el nombre de una persona y predecir su genero: (https://api.genderize.io/?name=irma).  

- **Predicir Edad:** Vista que acepte el nombre de una persona y determine la edad de la misma (https://api.agify.io/?name=meelad).  

- **Universidades:** Acepte el nombre de un país en ingles: muestra las universidades del país seleccionado,  url: http://universities.hipolabs.com/search?country=Dominican+Republic.    

- **Clima en RD:** La aplicación nos va a mostrar como estará el clima para el dia en que estamos visualizando la tarea.('https://api.openweathermap.org/data/2.5/weather?q=$cityName,do&appid=$apiKey') .  

- **Pagina de wordpress:** Una vista donde mostraras el logo de alguna página web hecha con WordPress y luego mostraras el titular y resumen de las últimas noticias publicadas en la misma. Colocar un link visitar donde nos lleva a la noticia original: Link del API: (https://hoy.com.do/wp-json/wp/v2/posts).


## Capturas de Pantalla  

>[!NOTE]
>Aquí se muestra un listado de de todas las pantallas desarrollados.

| Pantalla Perfil del usuario 1 |  Pantalla Noticias |
|-----------|-----------|
| ![Imagen 1](https://github.com/Bryan-r15/tools_app_flutter/assets/71520172/1e6a0845-0972-4b84-98b9-cc71155c1652) | ![Imagen 2](https://github.com/Bryan-r15/tools_app_flutter/assets/71520172/b6a9b470-ddfd-4ced-a829-5cb1d9baeba8) |

| Pantalla Universidades por pais |  Pantalla de Inicio |
|-----------|-----------|
| ![Imagen 3](https://github.com/Bryan-r15/tools_app_flutter/assets/71520172/8b6d29e4-8606-4587-a950-46d8becad7ec) | ![Imagen 4](https://github.com/Bryan-r15/tools_app_flutter/assets/71520172/84980be2-c05d-4e8e-9782-17e2fc822f4e) |

| Pantalla de sexo |  Pantalla de edades |
|-----------|-----------|
| ![Imagen 5](https://github.com/Bryan-r15/tools_app_flutter/assets/71520172/2be0630d-723b-49bd-b68a-0d75aa2abb31) | ![Imagen 6](https://github.com/Bryan-r15/tools_app_flutter/assets/71520172/c597a8b5-0a8c-4504-aa1e-5e107a757ac3) |


## Cómo Iniciar el Proyecto Flutter

## Inicialización del Proyecto Flutter

Este archivo describe los pasos necesarios para inicializar el proyecto Flutter después de clonarlo o descargarlo y ponder como fin ejecutarlo.

## Requisitos Previos

- [Flutter](https://flutter.dev/docs/get-started/install) debe estar instalado en tu máquina.
- Luego tener instalado el [SDK de android](https://developer.android.com/studio?gclid=Cj0KCQiAsvWrBhC0ARIsAO4E6f_VCAIrDy7owWqHHW32_UT96LLPgdtfWdG0Rzro-kbWEv0YQTeZIssaAs-dEALw_wcB&gclsrc=aw.ds&hl=es-419) y tener instalado un dispositivo de emulación(teléfono) 
- Luego asegúrate de tener todas las dependencias necesarias instaladas. Puedes ejecutar el siguiente comando:

  ```bash
  flutter doctor
  ```
- Asegúrate de solucionar cualquier problema identificado por flutter doctor antes de continuar.

### Pasos de Inicialización

1. **Descargar el Proyecto:**
Clona el repositorio o descarga el proyecto desde GitHub.
  ```bash
git clone https://github.com/tu-usuario/tu-proyecto-flutter.git
  ```

2. **Limpiar el Proyecto:**
Ejecuta el siguiente comando para limpiar el proyecto.

  ```bash
flutter clean
  ```

3. **Obtener Dependencias:**
   Ejecuta el siguiente comando para obtener todas las dependencias del proyecto.

  ```bash
flutter pub get
  ```

Esto descargará todas las dependencias definidas en el archivo pubspec.yaml.

4.  Configuración Adicional (si es necesario):
Realiza cualquier configuración adicional necesaria según las instrucciones del proyecto.

### Ejecutar la Aplicación
Una vez completados los pasos anteriores, puedes ejecutar la aplicación Flutter con el siguiente comando:

 ```bash
flutter run
 ```
Esto iniciará la aplicación en el emulador o dispositivo conectado.














