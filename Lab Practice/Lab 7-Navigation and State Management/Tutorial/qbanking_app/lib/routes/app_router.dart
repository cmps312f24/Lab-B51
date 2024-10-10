import 'package:go_router/go_router.dart';
import 'package:qbanking_app/screens/account_screen.dart';
import 'package:qbanking_app/screens/deposit_screen.dart';
import 'package:qbanking_app/screens/home_screen.dart';
import 'package:qbanking_app/screens/new_transfer_screen.dart';
import 'package:qbanking_app/screens/transfer_screen.dart';

class AppRouter {
  // constants
  static const home = (name: 'home', path: '/');
  static const account = (name: 'account', path: '/account');
  static const transaction = (name: 'transaction', path: '/transaction');
  static const transfer = (name: 'transfer', path: '/transfer');
  static const newTransfer =
      (name: 'newTransfer', path: '/transfer/newTransfer');

  static const deposit = (name: 'deposit', path: '/deposit:accountNo');
  static const withdraw = (name: 'withdraw', path: '/withdraw:accountNo');

  static final router = GoRouter(
    initialLocation: home.path,
    routes: [
      GoRoute(
        name: home.name,
        path: home.path,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: account.name,
            path: account.path,
            builder: (context, state) => const AccountScreen(),
          ),
          GoRoute(
              name: transfer.name,
              path: transfer.path,
              builder: (context, state) => const TransferScreen(),
              routes: [
                GoRoute(
                  name: newTransfer.name,
                  path: newTransfer.path,
                  builder: (context, state) => const NewTransferScreen(),
                ),
              ]),
          GoRoute(
            name: transaction.name,
            path: transaction.path,
            builder: (context, state) => const TransferScreen(),
          ),
          GoRoute(
            name: withdraw.name,
            path: withdraw.path,
            builder: (context, state) {
              final accountNo = state.pathParameters['accountNo'];
              return DepositScreen(accountNo: accountNo!);
            },
          ),
          GoRoute(
            name: deposit.name,
            path: deposit.path,
            builder: (context, state) {
              final accountNo = state.pathParameters['accountNo'];
              return DepositScreen(accountNo: accountNo!);
            },
          ),
        ],
      ),
    ],
  );
}

// context.go('/');



/*

GoRoute(
  path : '/',
  routes : [
    GoRoute(
      path : 'a',
      routes : [
        GoRoute(
          path : 'b',
          routes : [
            GoRoute(
              path : 'c',
              
            ),

            GoRoute(
                  path : 'd',
                  routes : []
                )
      ]
    )
  ]
)

/
/a
/a/b
/a/d

/a/b/c

*/