class Cop {
    Cop({
        required this.name,
        required this.symbol,
    });

    String name;
    String symbol;

    factory Cop.fromJson(Map<String, dynamic> json) => Cop(
        name: json["name"],
        symbol: json["symbol"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
    };
}