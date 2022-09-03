import 'package:flutter/material.dart';

enum PositionType {
  top,
  bottom,
}

Align listGradient({required PositionType position, required double height}) {
  return position == PositionType.top
      ? Align(
          alignment: Alignment.topCenter,
          child: IgnorePointer(
            child: Container(
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white54,
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),
        )
      : Align(
          alignment: Alignment.bottomCenter,
          child: IgnorePointer(
            child: Container(
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white54,
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),
        );
}
