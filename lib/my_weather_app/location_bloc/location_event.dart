import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LocationEvent extends Equatable {
  LocationEvent([List props = const <dynamic>[]]) : super(props);
}

class GetLocation extends LocationEvent{
  @override
  String toString() => "GetLocation";
}