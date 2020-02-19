import 'package:geolocator/geolocator.dart';

class Location {
  double _longitude;
  double _latitude;

  double get longitude => _longitude;
  double get latitude => _latitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      _latitude = position.latitude;
      _longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
