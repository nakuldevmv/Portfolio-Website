import 'package:Nakul_Dev/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'dart:math';

class RandomLocationMap extends StatefulWidget {
  const RandomLocationMap({super.key});

  @override
  _RandomLocationMapState createState() => _RandomLocationMapState();
}

class _RandomLocationMapState extends State<RandomLocationMap> {
  LatLng Location = const LatLng(10.41667, 76.5);
  // final String mapTilerKey = '7msW9bJeQdpwarKYuDzB';
  // final String styleID = 'satellite-v2';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          initialCenter: Location,
          initialZoom: 9,
          interactionOptions: const InteractionOptions(
            flags: InteractiveFlag.all,
          ),
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://api.maptiler.com/maps/satellite/{z}/{x}/{y}@2x.jpg?key=7msW9bJeQdpwarKYuDzB',

            // urlTemplate: 'https://api.maptiler.com/tiles/satellite-v2/{z}/{x}/{y}.jpg?key=7msW9bJeQdpwarKYuDzB',
            // additionalOptions: const {
            //   'styleId': 'satellite-v2',
            //   // : 'streets',
            // },
            // urlTemplate: "https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png",
            // urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            // subdomains: const [
            //   'a',
            //   'b',
            //   'c'
            // ],
          ),
          MarkerLayer(
            markers: [
              // Marker(
              //   point: Location,
              //   width: 80.0,
              //   height: 80.0,
              //   child: const Icon(Icons.location_on, color: Colors.red, size: 40.0),
              // ),
              Marker(
                point: Location,
                width: 200,
                height: 200,
                // anchorPos: AnchorPos.align(AnchorAlign.center),
                child: Image.asset(
                  'assets/i.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Make sure to add this dependency to your pubspec.yaml:
// flutter_map: ^5.0.0
// latlong2: ^0.9.0