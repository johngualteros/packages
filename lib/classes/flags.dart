class Flags {
    Flags({
        required this.png,
        required this.svg,
        required this.alt,
    });

    String png;
    String svg;
    String alt;

    factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
    );

    Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
        "alt": alt,
    };
}