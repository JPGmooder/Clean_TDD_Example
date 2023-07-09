import 'package:equatable/equatable.dart';

class ActivityEntity extends Equatable {
  final String name;
  final String url;
  final String type;

  const ActivityEntity({
    required this.name,
    required this.url,
    required this.type
  });

  @override
  List<Object?> get props => [name, url, type];
}
