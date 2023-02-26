import 'package:packages/classes/eng.dart';

class Demonyms {
    Demonyms({
        required this.eng,
        required this.fra,
    });

    Eng eng;
    Eng fra;

    factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: Eng.fromJson(json["fra"]),
    );

    Map<String, dynamic> toJson() => {
        "eng": eng.toJson(),
        "fra": fra.toJson(),
    };
}