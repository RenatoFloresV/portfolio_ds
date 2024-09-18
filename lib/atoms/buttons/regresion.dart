import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio_ds/portfolio_ds.dart';
import 'package:provider/provider.dart';

class DsBtnRegresion extends StatefulWidget {
  const DsBtnRegresion({
    super.key,
    this.label = '',
    this.labelWithSeconds = '',
    this.seconds = 59,
    this.onTap,
    this.isButtonAvailable = false,
    this.builder,
  });

  final String labelWithSeconds;
  final String label;
  final int seconds;
  final void Function()? onTap;
  final Widget Function(BuildContext)? builder;
  final bool isButtonAvailable;

  @override
  State<DsBtnRegresion> createState() => _DsBtnRegresionState();
}

class _DsBtnRegresionState extends State<DsBtnRegresion> {
  NumberFormat formatter = NumberFormat("00");

  late TimerClass timer;
  @override
  void initState() {
    timer = TimerClass(sec: widget.seconds);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => timer..startTimer(),
      child: Builder(builder: (context) {
        return Column(
          children: [
            if (widget.builder != null) widget.builder!(context),
            Builder(
              builder: (context) {
                final timer = context.watch<TimerClass>();
                if (timer.isButtonAvailable) {
                  return DsBtnText(
                    label: widget.label,
                    onPressed: () async {
                      if (widget.onTap != null) {
                        widget.onTap!();
                      }
                    },
                  ).expandedBox();
                }

                return DsBtnText(
                  label:
                      '${widget.labelWithSeconds} 00:${formatter.format(timer.seconds)}',
                  onPressed: null,
                );
              },
            ),
          ],
        );
      }),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class TimerClass with ChangeNotifier {
  TimerClass({int sec = 59}) {
    seconds = sec;
  }

  Timer? time;
  late int seconds;

  bool isRunning = false;
  bool isButtonAvailable = false;

  void startTimer() {
    isButtonAvailable = false;
    isRunning = true;

    time = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (seconds > 1) {
        seconds--;
      } else {
        isButtonAvailable = true;
        _stopTimer();
      }
      notifyListeners();
    });
  }

  void _stopTimer() {
    if (time != null) {
      time!.cancel();
    }
    isRunning = false;
    notifyListeners();
  }

  void resetTimer({int? newSeconds}) {
    if (time != null) {
      time!.cancel();
    }
    seconds = newSeconds ?? seconds;
    isRunning = false;
    startTimer();
  }

  @override
  void dispose() {
    isRunning = false;
    isButtonAvailable = false;
    time?.cancel();

    super.dispose();
  }
}
