import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../widgets/my_drawer.dart';

class Product {
  final int id;
  final String title;
  final String category;

  Product({required this.id, required this.title, required this.category});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      title: json['title'] as String,
      category: json['category'] as String,
    );
  }
}

class DataFetchPage extends StatefulWidget {
  const DataFetchPage({Key? key}) : super(key: key);

  @override
  State<DataFetchPage> createState() => _DataFetchPageState();
}

class _DataFetchPageState extends State<DataFetchPage> {
  final String _baseUrl = 'https://dummyjson.com/';
  final String _endpoint = 'products';

  List<Product> _products = [];
  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final response = await http.get(Uri.parse('$_baseUrl$_endpoint'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> productList = data['products'];
        setState(() {
          _products = productList
              .map((json) => Product.fromJson(json))
              .toList();
        });
      } else {
        setState(() {
          _error = 'Échec du chargement des produits : ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        _error = 'Erreur : ${e.toString()}. Vérifiez votre connexion Internet.';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Widget _buildProductItem(Product product) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          child: Text(
            product.id.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          product.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        subtitle: Text(
          'Catégorie : ${product.category}',
          style: TextStyle(color: Colors.grey[600]),
        ),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Appuyé sur : ${product.title}')),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Récupération de Données'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: fetchProducts,
            tooltip: 'Actualiser',
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 60,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _error!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.red, fontSize: 18),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: fetchProducts,
                      icon: const Icon(Icons.refresh),
                      label: const Text('Réessayer'),
                    ),
                  ],
                ),
              ),
            )
          : _products.isEmpty
          ? const Center(child: Text('Aucun produit à afficher.'))
          : ListView.builder(
              itemCount: _products.length,
              itemBuilder: (context, index) {
                return _buildProductItem(_products[index]);
              },
            ),
    );
  }
}
