import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Define the events
abstract class MapEvent {}

class GetCurrentLocationEvent extends MapEvent {}

// Define the states
abstract class MapState {}

class MapLoadingState extends MapState {}

class MapLoadedState extends MapState {
  final LatLng location;

  MapLoadedState(this.location);
}

// Define the BLoC
class MapBloc extends Bloc<MapEvent, MapState> {
  final Geolocator _geolocator = Geolocator();

  MapBloc() : super(MapLoadingState()) {
    on<GetCurrentLocationEvent>((event, emit) async {
      final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      emit(MapLoadedState(LatLng(position.latitude, position.longitude)));
    });
  }
}

class CMP extends StatefulWidget {
  const CMP({super.key});

  @override
  _CMPState createState() => _CMPState();
}

class _CMPState extends State<CMP> {
  final MapBloc _mapBloc = MapBloc();

  @override
  void initState() {
    super.initState();
    _mapBloc.add(GetCurrentLocationEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Me'),
      ),
      body: BlocProvider(
        create: (_) => _mapBloc,
        child: BlocBuilder<MapBloc, MapState>(
          builder: (context, state) {
            if (state is MapLoadedState) {
              return GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: state.location,
                  zoom: 15,
                ),
                markers: {
                  Marker(
                    markerId: const MarkerId('my_location'),
                    position: state.location,
                    icon: BitmapDescriptor.defaultMarker,
                  ),
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
