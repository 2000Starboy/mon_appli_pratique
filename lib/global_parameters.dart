import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/counter_page.dart';
import 'pages/data_fetch_page.dart';

class GlobalParameters {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const HomePage(),
    '/counter': (context) => const CounterPage(),
    '/data': (context) => const DataFetchPage(),
  };

  static final List<Map<String, dynamic>> menus = [
    {"title": "Accueil", "route": "/", "icon": const Icon(Icons.home)},
    {
      "title": "Compteur",
      "route": "/counter",
      "icon": const Icon(Icons.calculate),
    },
    {
      "title": "Récupération de Données",
      "route": "/data",
      "icon": const Icon(Icons.cloud_download),
    },
  ];
}
