import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:location/location.dart';

@immutable
abstract class LocationState extends Equatable {
  LocationState([List props = const <dynamic>[]]) : super(props);
}

class UnknownLocation extends LocationState {
  @override
  String toString() => "UnknownLocation";
}

class LocationPermissionDenied extends LocationState {
  final String error;

  LocationPermissionDenied({@required this.error}):super([error]);

  @override
  String toString() => "LocationPermissionDenied { error : $error }";
}

class LocationFound extends LocationState {
  final LocationData locationData;

  LocationFound({@required this.locationData}):super([locationData]);

  @override
  String toString() => "LocationFound { lat : ${locationData.latitude}, long : ${locationData.longitude} }";
}