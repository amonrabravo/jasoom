import "package:injectable/injectable.dart";
import "package:jasoom/app/router/router.dart";
    
@lazySingleton
class RouterService {
  final JasoomRouter router = JasoomRouter();
}