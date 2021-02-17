import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';
part 'cast.g.dart';

@freezed
abstract class Cast with _$Cast {
  factory Cast({
    @JsonKey(name: 'original_name') String originalName,
    String character,
    @JsonKey(name: 'profile_path') String profilePath,
  }) = _Cast;
  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
// class Cast {
//   String originalName;
//   String character;
//   String profilePath;

//   Cast({
//     this.originalName,
//     this.character,
//     this.profilePath,
//   });

//   Cast copyWith({
//     String originalName,
//     String character,
//     String profilePath,
//   }) {
//     return Cast(
//       originalName: originalName ?? this.originalName,
//       character: character ?? this.character,
//       profilePath: profilePath ?? this.profilePath,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'original_name': originalName,
//       'character': character,
//       'profile_path': profilePath,
//     };
//   }

//   factory Cast.fromMap(Map<String, dynamic> map) {
//     if (map == null) return null;

//     return Cast(
//       originalName: map['original_name'],
//       character: map['character'],
//       profilePath: map['profile_path'],
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Cast.fromJson(String source) => Cast.fromMap(json.decode(source));

//   @override
//   String toString() =>
//       'Cast(originalName: $originalName, character: $character, profilePath: $profilePath)';

//   @override
//   bool operator ==(Object o) {
//     if (identical(this, o)) return true;

//     return o is Cast &&
//         o.originalName == originalName &&
//         o.character == character &&
//         o.profilePath == profilePath;
//   }

//   @override
//   int get hashCode =>
//       originalName.hashCode ^ character.hashCode ^ profilePath.hashCode;
// }
