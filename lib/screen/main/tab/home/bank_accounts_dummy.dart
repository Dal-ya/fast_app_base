import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 30000000, accountTypeName: '신한 주거래 우대통장(저축예금)');
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 40000000, accountTypeName: '저축예금');
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 500000000, accountTypeName: '저축예금');

final bankAccountTtos = BankAccount(bankTtoss, 10000000);
final bankAccountKakao =
    BankAccount(bankKakao, 50000000, accountTypeName: '입출금통장');
final bankAccountKakao2 =
BankAccount(bankKakao, 50000000, accountTypeName: '입출금통장');
final bankAccountKakao3 =
BankAccount(bankKakao, 50000000, accountTypeName: '입출금통장');

final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountTtos,
  bankAccountKakao,
  bankAccountKakao2,
  bankAccountKakao3
];
