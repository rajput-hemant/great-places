import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/great_places.dart';
import 'add_place_screen.dart';
import 'place_detail_screen.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Image.asset(
            'assets/images/marker.png',
            height: 40,
            width: 40,
          ),
          const SizedBox(width: 10),
          const Text('Great Places'),
        ]),
      ),
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
                                itemBuilder: (context, i) => Card(
                                  elevation: 5,
                                  shadowColor: Colors.grey,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage:
                                          FileImage(greatPlaces.items[i].image),
                                    ),
                                    title: Text(greatPlaces.items[i].title),
                                    subtitle: Text(
                                      greatPlaces.items[i].location!.address!,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    onTap: () => Navigator.pushNamed(
                                      context,
                                      PlaceDetailScreen.routeName,
                                      arguments: greatPlaces.items[i].id,
                                    ),
                                  ),
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
