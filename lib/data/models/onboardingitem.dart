import 'package:meta/meta.dart' show required;

class OnboardingItem {
  final String image, title, description;

  OnboardingItem({
    @required this.image,
    @required this.title,
    @required this.description,
  });
}
