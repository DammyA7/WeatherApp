import 'package:geolocator/geolocator.dart';

class Location {
  double Longitude, Latitude;

  Future<void> getCurrentLocation() async{
    try{
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      Latitude = position.latitude;
      Longitude = position.longitude;
    }
    catch(e){
      print(e);
    }
  }
}


