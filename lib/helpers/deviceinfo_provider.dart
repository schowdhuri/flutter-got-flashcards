import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flashcards/models/deviceinfo.dart';

class DeviceInfoProvider extends StatelessWidget {
  final Widget child;

  DeviceInfoProvider({
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mqd = MediaQuery.of(context);
    DeviceInfo deviceInfo = new DeviceInfo(
      size: mqd.size,
      orientation: mqd.orientation,
    );
    return Provider.value(
      value: deviceInfo,
      child: child,
    );
  }
}
