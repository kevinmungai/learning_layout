import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learning_layout/my_weather_app/location_bloc/bloc.dart';
import 'package:meta/meta.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState>{

  @override
  // TODO: implement initialState
  get initialState => UnknownLocation();

  @override
  Stream<LocationState> mapEventToState(LocationEvent event) async* {
    // TODO: implement mapEventToState
    if (event is GetLocation) {
      print("GETLOCATION inside!!!");
      final result = await LocationApi.getCurrentLocation();
      print("about to leave event!!!");
      print("result is $result");
      yield result;
      print("left event!!!");
    }
  }
}