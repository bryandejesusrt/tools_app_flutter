import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:tools_app/pages/age.dart';
import 'package:tools_app/pages/news.dart';
import 'package:tools_app/pages/sexo.dart';
import 'package:tools_app/pages/tool.dart';
import 'package:tools_app/pages/university.dart';
import 'package:tools_app/pages/weather.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List tabItems = [
    'Sexo',
    'Edad',
    'Universidades',
    'Clima',
    'Noticias',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              tabItems[_selectedIndex],
              style: const TextStyle(
                color: Color.fromARGB(255, 139, 140, 156),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
                icon: const Icon(Icons.home_filled),
                color: const Color.fromARGB(255, 148, 150, 193),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Tolls(),
                    ),
                  );
                }),
            InkWell(
              onTap: () {
                double screenWidth = MediaQuery.of(context).size.width;
                double screenHeight = MediaQuery.of(context).size.height;

                double popupWidthPercentage = 1.0; // 100% del ancho
                double popupHeightPercentage = 0.7; // 70% del alto

                double popupWidth = screenWidth * popupWidthPercentage;
                double popupHeight = screenHeight * popupHeightPercentage;

                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return Container(
                      width: popupWidth,
                      height: popupHeight,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            color: const Color.fromARGB(255, 148, 150, 193),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                    icon: const Icon(
                                      Icons.keyboard_arrow_left_rounded,
                                      color: Color.fromARGB(255, 216, 216, 216),
                                    ),
                                    onPressed: () {}),
                                const Expanded(
                                  child: Center(
                                    child: Text(
                                      'Desarrollado de la app',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                    icon: const Icon(
                                      Icons.info,
                                      color: Color.fromARGB(255, 216, 216, 216),
                                    ),
                                    onPressed: () {})
                              ],
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(90),
                                      child: const Image(
                                        image: AssetImage(
                                            'assets/images/avatar.jpg'),
                                        width: 180,
                                        height: 180,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Bryan De Jesus Rosa Tavarez',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        '2021-2239@itla.edu.do📧\nDesarrrollador de software.🧑‍💻\n                    ITLA🏢',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        '''Mi vida''',
                                        style: TextStyle(
                                          fontSize: 21,
                                          color:
                                              Color.fromARGB(255, 88, 88, 88),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        '''Bryan De Jesús Rosa Tavarez es un emprendedor y líder comunitario dominicano. Desde su juventud, ha demostrado un profundo interés por la tecnología y el emprendimiento, pasiones que ha convertido en los cimientos de su exitosa carrera y su impacto en la comunidad.

Después de obtener su título en ingeniería de sistemas de la Universidad Autónoma de Santo Domingo, Bryan fundó Cyclopesoft, una empresa de tecnología que se especializa en brindar servicios de desarrollo de software y soluciones tecnológicas a pequeñas y medianas empresas. A través de su empresa, Bryan ha sido un impulsor clave del crecimiento empresarial y del desarrollo económico en su país.

Además de sus logros empresariales, Bryan es un miembro activo de su comunidad y ha liderado numerosos proyectos de voluntariado y participación comunitaria. Su pasión por la educación y la tecnología lo ha llevado a colaborar con organizaciones sin fines de lucro, brindando acceso a la tecnología y la educación a jóvenes de recursos limitados.

En su tiempo libre, Bryan disfruta de la música y el deporte, y es un ávido aficionado de los videojuegos y la programación. Su dedicación y compromiso hacia el éxito de su empresa y su comunidad son evidentes en todo lo que emprende. Siempre está en búsqueda de nuevas formas para generar un impacto positivo en el mundo.''',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromARGB(255, 65, 65, 65),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 16,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: const Image(
                    image: AssetImage('assets/images/avatar.jpg'),
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.wc_outlined),
            title: const Text('Sexo'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.cake_outlined),
            title: const Text('Edad'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.school_rounded),
            title: const Text('Estudios'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.cloudy_snowing),
            title: const Text('Clima'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.newspaper_rounded),
            title: const Text('Noticias'),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const <Widget>[
          GenderPredictionTab(),
          AgePredictionTab(),
          UniversityTab(),
          WeatherApp(),
          News(),

          // news(),
        ],
      ),
    );
  }
}
