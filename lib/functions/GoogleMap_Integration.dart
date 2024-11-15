import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:latlong2/latlong.dart';

class RandomLocationMap extends StatefulWidget {
  const RandomLocationMap({super.key});

  @override
  _RandomLocationMapState createState() => _RandomLocationMapState();
}

class _RandomLocationMapState extends State<RandomLocationMap> {
  LatLng location = const LatLng(10.41667, 76.5);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: location,
        initialZoom: 9,
        interactionOptions: const InteractionOptions(
          flags: InteractiveFlag.all,
        ),
      ),
      children: [
        TileLayer(
          tileProvider: CancellableNetworkTileProvider(),
          urlTemplate:
              'https://api.maptiler.com/maps/satellite/{z}/{x}/{y}@2x.jpg?key=tXbtaxHISDiVwl3zZ8JF',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: location,
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/i.png',
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
