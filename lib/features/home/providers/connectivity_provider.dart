import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'connectivity_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<InternetStatus> internetStatus(InternetStatusRef ref) {
  return InternetConnection().onStatusChange;
}
