import 'package:get/get.dart';

import '../modules/accountcreated/bindings/accountcreated_binding.dart';
import '../modules/accountcreated/views/accountcreated_view.dart';
import '../modules/addcrdeitcard/bindings/addcrdeitcard_binding.dart';
import '../modules/addcrdeitcard/views/addcrdeitcard_view.dart';
import '../modules/authentic/bindings/authentic_binding.dart';
import '../modules/authentic/views/authentic_view.dart';
import '../modules/authenticDetail/bindings/authentic_detail_binding.dart';
import '../modules/authenticDetail/views/authentic_detail_view.dart';
import '../modules/bottombar/bindings/bottombar_binding.dart';
import '../modules/bottombar/views/bottombar_view.dart';
import '../modules/cardPayment/bindings/card_payment_binding.dart';
import '../modules/cardPayment/views/card_payment_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/changepassword/bindings/changepassword_binding.dart';
import '../modules/changepassword/views/changepassword_view.dart';
import '../modules/deliverymethod/bindings/deliverymethod_binding.dart';
import '../modules/deliverymethod/views/deliverymethod_view.dart';
import '../modules/editprofile/bindings/editprofile_binding.dart';
import '../modules/editprofile/views/editprofile_view.dart';
import '../modules/forgotpassword/bindings/forgotpassword_binding.dart';
import '../modules/forgotpassword/views/forgotpassword_view.dart';
import '../modules/givefeedback/bindings/givefeedback_binding.dart';
import '../modules/givefeedback/views/givefeedback_view.dart';
import '../modules/great/bindings/great_binding.dart';
import '../modules/great/views/great_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/makearequest/bindings/makearequest_binding.dart';
import '../modules/makearequest/views/makearequest_view.dart';
import '../modules/myorder/bindings/myorder_binding.dart';
import '../modules/myorder/views/myorder_view.dart';
import '../modules/mywallet/bindings/mywallet_binding.dart';
import '../modules/mywallet/views/mywallet_view.dart';
import '../modules/notifications/bindings/notifications_binding.dart';
import '../modules/notifications/views/notifications_view.dart';
import '../modules/orderconfirm/bindings/orderconfirm_binding.dart';
import '../modules/orderconfirm/views/orderconfirm_view.dart';
import '../modules/orderdetails/bindings/orderdetails_binding.dart';
import '../modules/orderdetails/views/orderdetails_view.dart';
import '../modules/orderplacedsuccessfully/bindings/orderplacedsuccessfully_binding.dart';
import '../modules/orderplacedsuccessfully/views/orderplacedsuccessfully_view.dart';
import '../modules/password/bindings/password_binding.dart';
import '../modules/password/views/password_view.dart';
import '../modules/passwordchanged/bindings/passwordchanged_binding.dart';
import '../modules/passwordchanged/views/passwordchanged_view.dart';
import '../modules/payment/bindings/payment_binding.dart';
import '../modules/payment/views/payment_view.dart';
import '../modules/product/bindings/product_binding.dart';
import '../modules/product/views/product_view.dart';
import '../modules/productdetail/bindings/productdetail_binding.dart';
import '../modules/productdetail/views/productdetail_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/schedule/bindings/schedule_binding.dart';
import '../modules/schedule/views/schedule_view.dart';
import '../modules/scheduleTwo/bindings/schedule_two_binding.dart';
import '../modules/scheduleTwo/views/schedule_two_view.dart';
import '../modules/service/bindings/service_binding.dart';
import '../modules/service/views/service_view.dart';
import '../modules/serviceorderdetails/bindings/serviceorderdetails_binding.dart';
import '../modules/serviceorderdetails/views/serviceorderdetails_view.dart';
import '../modules/serviceordertwo/bindings/serviceordertwo_binding.dart';
import '../modules/serviceordertwo/views/serviceordertwo_view.dart';
import '../modules/shipping/bindings/shipping_binding.dart';
import '../modules/shipping/views/shipping_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/support/bindings/support_binding.dart';
import '../modules/support/views/support_view.dart';
import '../modules/termsandservices/bindings/termsandservices_binding.dart';
import '../modules/termsandservices/views/termsandservices_view.dart';
import '../modules/yourauthentic/bindings/yourauthentic_binding.dart';
import '../modules/yourauthentic/views/yourauthentic_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.PRODUCT,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNTCREATED,
      page: () => AccountcreatedView(),
      binding: AccountcreatedBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPASSWORD,
      page: () => ForgotpasswordView(),
      binding: ForgotpasswordBinding(),
    ),
    GetPage(
      name: _Paths.CHANGEPASSWORD,
      page: () => ChangepasswordView(),
      binding: ChangepasswordBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORDCHANGED,
      page: () => PasswordchangedView(),
      binding: PasswordchangedBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMBAR,
      page: () => BottombarView(),
      binding: BottombarBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE,
      page: () => ServiceView(),
      binding: ServiceBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTIC,
      page: () => AuthenticView(),
      binding: AuthenticBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.SHIPPING,
      page: () => ShippingView(),
      binding: ShippingBinding(),
    ),
    GetPage(
      name: _Paths.DELIVERYMETHOD,
      page: () => DeliverymethodView(),
      binding: DeliverymethodBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.GIVEFEEDBACK,
      page: () => GivefeedbackView(),
      binding: GivefeedbackBinding(),
    ),
    GetPage(
      name: _Paths.ORDERPLACEDSUCCESSFULLY,
      page: () => OrderplacedsuccessfullyView(),
      binding: OrderplacedsuccessfullyBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTDETAIL,
      page: () => ProductDetailView(),
      binding: ProductdetailBinding(),
    ),
    GetPage(
      name: _Paths.TERMSANDSERVICES,
      page: () => TermsandservicesView(),
      binding: TermsandservicesBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE,
      page: () => ScheduleView(),
      binding: ScheduleBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE_TWO,
      page: () => ScheduleTwoView(),
      binding: ScheduleTwoBinding(),
    ),
    GetPage(
      name: _Paths.ORDERDETAILS,
      page: () => OrderdetailsView(),
      binding: OrderdetailsBinding(),
    ),
    GetPage(
      name: _Paths.MYWALLET,
      page: () => MywalletView(),
      binding: MywalletBinding(),
    ),
    GetPage(
      name: _Paths.MYORDER,
      page: () => MyorderView(),
      binding: MyorderBinding(),
    ),
    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => EditprofileView(),
      binding: EditprofileBinding(),
    ),
    GetPage(
      name: _Paths.YOURAUTHENTIC,
      page: () => YourauthenticView(),
      binding: YourauthenticBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORD,
      page: () => PasswordView(),
      binding: PasswordBinding(),
    ),
    GetPage(
      name: _Paths.SUPPORT,
      page: () => SupportView(),
      binding: SupportBinding(),
    ),
    GetPage(
      name: _Paths.CARD_PAYMENT,
      page: () => CardPaymentView(),
      binding: CardPaymentBinding(),
    ),
    GetPage(
      name: _Paths.SERVICEORDERDETAILS,
      page: () => ServiceorderdetailsView(),
      binding: ServiceorderdetailsBinding(),
    ),
    GetPage(
      name: _Paths.SERVICEORDERTWO,
      page: () => ServiceordertwoView(),
      binding: ServiceordertwoBinding(),
    ),
    GetPage(
      name: _Paths.MAKEAREQUEST,
      page: () => MakearequestView(),
      binding: MakearequestBinding(),
    ),
    GetPage(
      name: _Paths.GREAT,
      page: () => GreatView(),
      binding: GreatBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTIC_DETAIL,
      page: () => AuthenticDetailView(),
      binding: AuthenticDetailBinding(),
    ),
    GetPage(
      name: _Paths.ORDERCONFIRM,
      page: () => OrderconfirmView(),
      binding: OrderconfirmBinding(),
    ),
    GetPage(
      name: _Paths.ADDCRDEITCARD,
      page: () => AddcrdeitcardView(),
      binding: AddcrdeitcardBinding(),
    ),
  ];
}
