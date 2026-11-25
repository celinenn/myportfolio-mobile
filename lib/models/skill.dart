import 'package:json_annotation/json_annotation.dart';

part 'skill.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Skill {
  const Skill({
    this.id,
    required this.title,
    required this.type,
    this.proficiency = 'expert',
  });

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;
  final String title;
  final String type;

  @JsonKey(defaultValue: 'expert')
  final String proficiency;

  Map<String, dynamic> toJson() => _$SkillToJson(this);
}
