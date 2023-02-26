import 'package:packages/classes/cop.dart';

class Currencies {
    Currencies({
        required this.cop,
    });

    Cop cop;

    factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        cop: Cop.fromJson(json["COP"]),
    );

    Map<String, dynamic> toJson() => {
        "COP": cop.toJson(),
    };
}