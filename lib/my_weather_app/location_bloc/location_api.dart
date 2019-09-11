import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'bloc.dart';

class LocationApi {



  static getCurrentLocation () async {
    Location _location = Location();
    try{
      final LocationData locationData = await _location.getLocation();
      print("location is => { lat : ${locationData.latitude}, long : ${locationData.longitude} }");
      return LocationFound(locationData: locationData);
    } on PlatformException catch (e) {
      if (e.code == "PERMISSION_DENIED") {
        return LocationPermissionDenied(error: e.message);
      }
    }
  }
}