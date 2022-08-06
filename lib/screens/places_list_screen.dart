import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/great_places.dart';
import 'add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Great Places')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, AddPlaceScreen.routeName),
      ),
      body: FutureBuilder(
        future: Provider.of<GreatPlaces>(context, listen: false)
            .fetchAndSetPlaces(),
        builder: (context, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? const Center(child: CircularProgressIndicator())
                : Consumer<GreatPlaces>(
                    builder: (context, greatPlaces, child) =>
                        greatPlaces.items.isEmpty
                            ? child!
                            : ListView.builder(
                                itemCount: greatPlaces.items.length,
                                itemBuilder: (context, i) => ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        FileImage(greatPlaces.items[i].image),
                                  ),
                                  title: Text(greatPlaces.items[i].title),
                                  onTap: () {
                                    // GO TO details page
                                  },
                                ),
                              ),
                    child: const Center(
                      child: Text(
                        'Got no places yet,\n'
                        'Start adding some!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }
}
