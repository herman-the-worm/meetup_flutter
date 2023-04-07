import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavigationItem {
  final String label;
  final IconData icon;
  final PageRouteInfo route;

  const NavigationItem({
    required this.label,
    required this.icon,
    required this.route,
  });
}
