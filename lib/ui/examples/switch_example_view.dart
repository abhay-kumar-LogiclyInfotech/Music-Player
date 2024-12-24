import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/components/app_bars/simple_app_bar.dart';
import 'package:responsive_app/utils/app_dimensions.dart';

class SwitchExampleView extends StatefulWidget {
  const SwitchExampleView({super.key});

  @override
  State<SwitchExampleView> createState() => _SwitchExampleViewState();
}

class _SwitchExampleViewState extends State<SwitchExampleView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: const SimpleAppBar(title: "Switch Example View"),
      body: _buildUi(theme),
    );
  }

  Widget _buildUi(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Expanded(child: Text("Notifications")),
              Switch(value: false, onChanged: (value) {})
            ],
          ),
          AppDimensions.smallSizedBox,
          Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.green,
                gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 0),
                      Color.fromARGB(255, 255, 0, 0),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.mirror),
                borderRadius: AppDimensions.cardBorderRadiusMedium),
          ),
          AppDimensions.smallSizedBox,
          CupertinoSlider(
              value: .8,
              thumbColor: theme.colorScheme.secondary,
              activeColor: theme.colorScheme.secondary,
              onChanged: (value) {})
        ],
      ),
    );
  }
}
