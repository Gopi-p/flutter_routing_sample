import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

//Gradients
LinearGradient blackGradient() {
  return const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [darkBlackColor, lightBlackColor],
  );
}

LinearGradient pinkGradient() {
  return const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      lightPinkColor,
      darkPinkColor,
    ],
  );
}

LinearGradient darkBlueGradient() {
  return const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [darkblueColor, lightBlueColor],
  );
}

// Box Shadows
BoxShadow boxShadow({
  required Color boxShadowColor,
  double colorOpacity = 0.15,
}) {
  return BoxShadow(
    offset: const Offset(0, 0),
    color: boxShadowColor.withOpacity(colorOpacity),
    blurRadius: 8,
    spreadRadius: 0,
  );
}
