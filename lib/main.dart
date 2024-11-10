import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp/page_a.dart';
import 'package:flutterapp/page_b.dart';
import 'package:flutterapp/page_c.dart';

void main() {
  final app = MaterialApp(
    home: Home(),
  );
  final scope = ProviderScope(
    child: app,
  );

  runApp(scope);
}

final isOnProvider = StateProvider((ref) => true);

final valueProvider = StateProvider((ref) {
  return 0.0;
});

final rangeProvider = StateProvider((ref) {
  return const RangeValues(0.0, 1.0);
});

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // トグルスイッチ
    final isOn = ref.watch(isOnProvider);
    final toggle = Switch(
      value: isOn,
      onChanged: (isOn) {
        ref.read(isOnProvider.notifier).state = isOn;
      },
      activeColor: Colors.blue,
      activeTrackColor: Colors.green,
      inactiveThumbColor: Colors.black,
      inactiveTrackColor: Colors.grey,
    );

    final value = ref.watch(valueProvider);
    final sider = Slider(
      value: value,
      onChanged: (value) {
        ref.read(valueProvider.notifier).state = value;
      },
      thumbColor: Colors.blue,
      activeColor: Colors.green,
      inactiveColor: Colors.grey,
    );

    // 赤色のコンテナ
    final container = Container(
      color: Colors.red,
      width: value * 100,
      height: 100,
    );

    final range = ref.watch(rangeProvider);
    final rangeSlider = RangeSlider(
      values: range,
      onChanged: (range) {
        ref.read(rangeProvider.notifier).state = range;
      },
      activeColor: Colors.green,
      inactiveColor: Colors.grey,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            toggle,
            sider,
            container,
            rangeSlider,
          ],
        ),
      ),
    );
  }
}
