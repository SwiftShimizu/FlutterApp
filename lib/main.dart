import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  const app = MaterialApp(
    home: const Home(),
  );
  const scope = ProviderScope(child: app);
  runApp(scope);
}

// どれくらい進んだかを表示する　パーセント
final percentProvider = StateProvider((ref) {
  return 0.00;
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final percent = ref.watch(percentProvider);

    final circular = CircularPercentIndicator(
      percent: percent,
      backgroundColor: Colors.yellow,
      progressColor: Colors.green,
      radius: 60,
      lineWidth: 20,
      center: Text('${percent * 100} %'),
      animation: true,
      animateFromLastPercent: true,
      animationDuration: 200,
    );

    final linear = LinearPercentIndicator(
      percent: percent,
      backgroundColor: Colors.yellow,
      progressColor: Colors.green,
      lineHeight: 20,
      alignment: MainAxisAlignment.center,
      width: 300,
      animation: true,
      animateFromLastPercent: true,
      animationDuration: 200,
      center: Text('${percent * 100} %'),
    );

    final button = ElevatedButton(
      onPressed: () {
        ref.read(percentProvider.notifier).state += 0.1;
      },
      child: const Text('進める'),
    );

    final col = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        circular,
        const SizedBox(height: 50),
        linear,
        const SizedBox(height: 50),
        button,
      ],
    );

    return Scaffold(body: col);
  }
}
