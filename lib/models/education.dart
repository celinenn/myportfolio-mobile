import 'package:json_annotation/json_annotation.dart';

part 'education.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Education {
  const Education({
    this.id,
    required this.title,
    this.school = 'Unknown',
    this.category = 'bachelors',
    this.thumbnail,
    this.startedAt,
    this.endedAt,
  });

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;
  final String title;

  @JsonKey(defaultValue: 'Unknown')
  final String school;

  @JsonKey(defaultValue: 'bachelors')
  final String category;
  final String? thumbnail;
  final DateTime? startedAt;
  final DateTime? endedAt;

  bool get isOngoing => endedAt == null;

  Map<String, dynamic> toJson() => _$EducationToJson(this);
}
