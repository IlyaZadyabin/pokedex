extension IntExtension on int {
  String toSharpID() {
    return '#${toString().padLeft(3, '0')}';
  }
}
