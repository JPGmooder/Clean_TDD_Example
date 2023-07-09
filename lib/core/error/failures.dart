import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List<dynamic> properties;
  const Failure({
    required this.properties,
  });
  @override
  List<Object?> get props => properties;
}

class ServerFailure extends Failure {
  ServerFailure({required super.properties});
}

class CacheFailure extends Failure {
  CacheFailure({required super.properties});
}
