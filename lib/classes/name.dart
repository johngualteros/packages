import 'package:packages/classes/native_name.dart';

class Name {
    Name({
        required this.common,
        required this.official,
        required this.nativeName,
    });

    String common;
    String official;
    NativeName nativeName;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: NativeName.fromJson(json["nativeName"]),
    );

    Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName.toJson(),
    };
}