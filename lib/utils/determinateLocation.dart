import 'package:geolocator/geolocator.dart';

class determinationPosition {
  /// como chamar await determinationPosition._determinePosition();
  ///
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Serviços de localização estão desabilitados!');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Permissão de localização foi rejeitada!');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Permissão de localização foram permanentemente rejeitadas, não podemos requisitar permissões.');
    }

    return await Geolocator.getCurrentPosition();
  }
}
