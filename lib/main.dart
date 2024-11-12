import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

// 選ばれたラジオボタンの ID を保持する Provider
final radioIdProvider = StateProvider<String?>((ref) => null);

// 選ばれたチェックボックスのIDたちを保持する Provider
final checkedIdsProvider = StateProvider<Set<String>>((ref) => {});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ラジオボタンIDに合わせて画面を変化させる
    final radioId = ref.watch(radioIdProvider);
    // チェックボックスのIDたちに合わせて画面を変化させる
    final checkedIds = ref.watch(checkedIdsProvider);

    // ラジオボタンを押された時の処理
    void onRadioChanged(String? id) {
      ref.read(radioIdProvider.notifier).state = id;
    }

    // チェックボックスを押された時の処理
    void onChangedCheckbox(String id) {
      final newSet = Set.of(checkedIds);
      if (newSet.contains(id)) {
        newSet.remove(id);
      } else {
        newSet.add(id);
      }
      ref.read(checkedIdsProvider.notifier).state = newSet;
    }

    final col = Column(
      children: [
        // ラジオボタングループ
        RadioListTile(
          groupValue: radioId,
          onChanged: onRadioChanged,
          value: 'A',
          title: const Text('ラジオA'),
        ),
        RadioListTile(
          groupValue: radioId,
          onChanged: onRadioChanged,
          value: 'B',
          title: const Text('ラジオB'),
        ),
        RadioListTile(
          groupValue: radioId,
          onChanged: onRadioChanged,
          value: 'C',
          title: const Text('ラジオC'),
        ),

        // チェックボックスグループ
        CheckboxListTile(
          onChanged: (value) => onChangedCheckbox('1'),
          title: const Text('チェックボックス1'),
          value: checkedIds.contains('1'),
        ),
        CheckboxListTile(
          onChanged: (value) => onChangedCheckbox('2'),
          title: const Text('チェックボックス2'),
          value: checkedIds.contains('2'),
        ),
        CheckboxListTile(
          onChanged: (value) => onChangedCheckbox('3'),
          title: const Text('チェックボックス3'),
          value: checkedIds.contains('3'),
        ),

        ElevatedButton(
          onPressed: () {
            debugPrint('ラジオボタンの値: $radioId');
            debugPrint('チェックボックスの値: $checkedIds');
          },
          child: const Text('Submit'),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(child: col),
    );
  }
}
