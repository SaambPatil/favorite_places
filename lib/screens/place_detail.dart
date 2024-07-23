import 'package:flutter/material.dart';
import 'package:favorite_places/models/place.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Center(
        child: Column(
          children: [
            // Displaying the image of the place
            Image.file(
              place.image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height *
                  0.5, // Adjust height as needed
            ),
            // A simple text to display the title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.title,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
