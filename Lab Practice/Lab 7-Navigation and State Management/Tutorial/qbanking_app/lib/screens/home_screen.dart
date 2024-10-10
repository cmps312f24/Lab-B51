import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qbanking_app/routes/app_router.dart';
import 'package:qbanking_app/screens/shell_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> _menuItems = [
    {
      'label': 'Withdraw',
      'icon': Icons.account_balance,
      'routeName': AppRouter.withdraw.name,
    },
    {
      'label': 'Deposits',
      'icon': Icons.account_balance_wallet,
      'routeName': AppRouter.deposit.name,
      'params': {'accountNo': '123456'},
    },
    {
      'label': 'Transfers',
      'icon': Icons.transfer_within_a_station,
      'routeName': AppRouter.transfer.name,
    },
    {
      'label': 'Transactions',
      'icon': Icons.account_balance_wallet,
      'routeName': AppRouter.transaction.name,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/banner.jpg'),
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [
                for (var item in _menuItems)
                  GestureDetector(
                    onTap: () {
                      if (item['label'] == 'Deposits' ||
                          item['label'] == 'Withdraw') {
                        context.pushNamed(item['routeName'],
                            pathParameters: {"accountNo": "123213"});
                      } else {
                        context.pushNamed(item['routeName']);
                      }
                    },
                    child: Card(
                      elevation: 5,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(item['icon']),
                            Text(
                              item['label'],
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
