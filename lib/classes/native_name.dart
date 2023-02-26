import 'package:packages/classes/translation.dart';

class NativeName {
    NativeName({
        required this.spa,
    });

    Translation spa;

    factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        spa: Translation.fromJson(json["spa"]),
    );

    Map<String, dynamic> toJson() => {
        "spa": spa.toJson(),
    };
}