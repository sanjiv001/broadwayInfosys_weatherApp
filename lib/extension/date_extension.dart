extension TimeFormatter on DateTime {
  String formatTime() {
    return "${this.hour.toString().padLeft(2, '0')}:${this.minute.toString().padLeft(2, '0')}:${this.second.toString().padLeft(2, '0')}.${this.millisecond.toString().padLeft(3, '0')}";
  }
}
