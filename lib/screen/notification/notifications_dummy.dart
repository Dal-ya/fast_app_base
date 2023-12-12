import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TtosNotification>[
  TtosNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(27.minutes),
  ),
  TtosNotification(
    NotificationType.stock,
    '인전분할에 대해 알려드릴게요.',
    DateTime.now().subtract(1.hours),
  ),
  TtosNotification(
    NotificationType.walk,
    '1,000걸음 이상 걸었다면 포인트 받으세요.',
    DateTime.now().subtract(1.hours),
  ),
  TtosNotification(
    NotificationType.moneyTip,
    '유럽 식품 물가가 치솟고 있어요.\n홍길동님, 유럽여행에 관심이 있다면 확인해보세요.',
    DateTime.now().subtract(8.hours),
    isRead: true,
  ),
  TtosNotification(
    NotificationType.luck,
    '행운 복권이 도착했어요',
    DateTime.now().subtract(11.hours),
    isRead: true,
  ),
  TtosNotification(
    NotificationType.people,
    '띵동! 공동구매하러 가기',
    DateTime.now().subtract(12.hours),
  ),
];
