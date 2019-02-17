import 'package:flutter/material.dart';

const double kColorItemHeight = 80.0;

class Palette {
  Palette({ this.name, this.primary, this.accent, this.threshold = 900});

  static String tag = 'wallet';
  final String name;
  final MaterialColor primary;
  final MaterialAccentColor accent;
  final int threshold; // titles for indices > threshold are white, otherwise black

  bool get isValid => name != null && primary != null && threshold != null;
}

final List<Palette> allPalettes = <Palette>[

  Palette(name: 'Bitcoin', primary: Colors.green, accent: Colors.greenAccent, threshold: 500),
  Palette(name: 'Litecoin', primary: Colors.green, accent: Colors.greenAccent, threshold: 500),
  Palette(name: 'Ethereum', primary: Colors.green, accent: Colors.greenAccent, threshold: 500),
  Palette(name: 'Zcash', primary: Colors.green, accent: Colors.greenAccent, threshold: 500),

];


class ColorItem extends StatelessWidget {
  const ColorItem({
    Key key,
    @required this.index,
    @required this.color,
    this.prefix = '',
  }) : assert(index != null),
        assert(color != null),
        assert(prefix != null),
        super(key: key);

  final int index;
  final Color color;
  final String prefix;

  String colorString() => "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      child: Container(
        height: kColorItemHeight,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        color: color,
        child: SafeArea(
          top: false,
          bottom: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Janurary 1st, 1970'),
              Text('+ 1.23'),
            ],
          ),
        ),
      ),
    );
  }
}

class PaletteTabView extends StatelessWidget {
  PaletteTabView({
    Key key,
    @required this.colors,
  }) : assert(true),
  //colors != null && colors.isValid
        super(key: key);

  final Palette colors;

  static const List<int> primaryKeys = <int>[50, 100, 200, 300, 400, 500, 600, 700, 800, 900];
  static const List<int> accentKeys = <int>[100, 200, 400, 700];

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextStyle whiteTextStyle = textTheme.body1.copyWith(color: Colors.white);
    final TextStyle blackTextStyle = textTheme.body1.copyWith(color: Colors.black);
    final List<Widget> colorItems = primaryKeys.map<Widget>((int index) {
      return DefaultTextStyle(
        style: index > colors.threshold ? whiteTextStyle : blackTextStyle,
        child: ColorItem(index: index, color: colors.primary[index]),
      );
    }).toList();

    if (colors.accent != null) {
      colorItems.addAll(accentKeys.map<Widget>((int index) {
        return DefaultTextStyle(
          style: index > colors.threshold ? whiteTextStyle : blackTextStyle,
          child: ColorItem(index: index, color: colors.accent[index], prefix: 'A'),

        );
      }).toList());
    }

    return ListView(
      itemExtent: kColorItemHeight,
      children: colorItems,
    );
  }
}

class ColorsDemo extends StatelessWidget {
  static const String routeName = '/colors';
  static String tag = 'colors-demo';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: allPalettes.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text('Wallet'),
          bottom: TabBar(
            isScrollable: true,
            tabs: allPalettes.map<Widget>((Palette swatch) => Tab(text: swatch.name)).toList(),
          ),
        ),
        body: TabBarView(
          children: allPalettes.map<Widget>((Palette colors) {
            return PaletteTabView(colors: colors);
          }).toList(),
        ),
      ),
    );
  }
}