import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

class MapPage extends StatefulWidget {
  const MapPage({super.key});
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Set<Marker> _markers = {};
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _fetchMarkers();
  }

  Future<void> _fetchMarkers() async {
    final response = await http.get(
      Uri.parse('https://lokacije.gimnazija.net/api/locations'),
    );

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);

      final markers = data.map((item) {
        return Marker(
          markerId: MarkerId('${item['lat']}_${item['lng']}'),
          position: LatLng(item['lat'], item['lng']),
          infoWindow: InfoWindow(
            title: item['material'],   // type of material to be recycled
            snippet: item['address'],  // address
          ),
        );
      }).toSet();

      setState(() {
        _markers = markers;
        _loading = false;
      });
    } else {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(color: Colors.green),
      );
    }

    return GoogleMap(
      initialCameraPosition: const CameraPosition(
        target: LatLng(44.733, 18.098),
        zoom: 7,
      ),
      markers: _markers,
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
    );
  }
}
