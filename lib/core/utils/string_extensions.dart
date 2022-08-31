extension Truncate on String {
  String truncate({length = 7, omission = '...'}) {
    if (length >= this.length) {
      return this;
    }
    return replaceRange(length, this.length, omission);
  }
}
