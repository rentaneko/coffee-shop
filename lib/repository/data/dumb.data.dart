class OnboardData {
  final String image, title, description;

  OnboardData({
    required this.image,
    required this.title,
    required this.description,
  });

  static final List<OnboardData> demoOnboard = [
    OnboardData(
      image: 'assets/images/onboarding-1.png',
      title: 'Choose and customize your Drinks',
      description:
          'Customize your own drink exactly how you like it by adding any topping you like!!!',
    ),
    OnboardData(
      image: 'assets/images/onboarding-2.png',
      title: 'Quickly and Easly',
      description:
          'You can place your order quickly and easly without wasting time. You can also schedule orders via your smarthphone.',
    ),
    OnboardData(
      image: 'assets/images/onboarding-3.png',
      title: 'Get and Redeem Voucher',
      description:
          'Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!',
    ),
  ];
}
