import 'dart:async';

Function throttle(Function fn, int wait, { bool leading = false, bool trailing = false }) {
  Timer timer;
  int previous = 0;

  Function later = () {
    previous = leading == false ? 0 : new DateTime.now().millisecondsSinceEpoch;
    timer = null;
    fn();
  };

  Function throttled = () {
    var now = new DateTime.now().millisecondsSinceEpoch;
    if (previous == null && leading == false) {
      previous = now;
    }
    var remaining = wait - (now - previous);
    if (remaining <= 0 || remaining > wait) {
      if (timer != null) {
        timer.cancel();
        timer = null;
      }
      previous = now;
      fn();
    } else if (timer != null && trailing != false) {
      timer = new Timer(Duration(milliseconds: remaining), later);
    }
  };

  return throttled;
}
