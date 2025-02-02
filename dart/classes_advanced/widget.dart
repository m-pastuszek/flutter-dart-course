abstract class Widget {}

class Text extends Widget {
  final String text;

  Text(this.text);
}

class Button extends Widget {
  final Widget child;
  final void Function() onPressed;

  Button({required this.child, required this.onPressed});
}