import 'package:flutter/material.dart';

class BottomNavBarItems {
  final String name;
  final IconData icon;

  const BottomNavBarItems({
    required this.name,
    required this.icon,
  });
}

final List<BottomNavBarItems> navBarItems = [
  const BottomNavBarItems(name: 'Home', icon: Icons.home_outlined),
  const BottomNavBarItems(name: 'Course', icon: Icons.book_outlined),
  const BottomNavBarItems(name: 'Analysis', icon: Icons.analytics_outlined),
  const BottomNavBarItems(name: 'Profile', icon: Icons.person_outline),
];
