import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:qbanking_app/providers/title_provider.dart';
import 'package:qbanking_app/routes/app_router.dart';

class ShellScreen extends ConsumerStatefulWidget {
  final Widget? child;
  const ShellScreen({super.key, this.child});

  @override
  ConsumerState<ShellScreen> createState() => _ShellScreenState();
}

class _ShellScreenState extends ConsumerState<ShellScreen> {
  var title = "QBanking";

  @override
  Widget build(BuildContext context) {
    title = ref.watch(appTitleNotifierProvider);
    //get the name of the current route
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            letterSpacing: 1.5,
          ),
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        // set the current index
        currentIndex: 0,

        // make it active when selected
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Accounts',
          )
        ],
        onTap: (index) {
          if (index == 0) {
            context.push(AppRouter.home.path);
            ref.read(appTitleNotifierProvider.notifier).updateTitle('QBanking');
            // change the title
          } else {
            context.pushNamed(AppRouter.account.name);
            ref.read(appTitleNotifierProvider.notifier).updateTitle('Accounts');
            // navigate to the home screen
            // change the title
          }
        },
      ),
    );
  }
}
