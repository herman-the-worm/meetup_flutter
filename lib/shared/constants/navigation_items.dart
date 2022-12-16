import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationItem {
  final String label;
  final IconData icon;
  final RouteBase route;

  const NavigationItem({
    required this.label,
    required this.icon,
    required this.route,
  });
}
