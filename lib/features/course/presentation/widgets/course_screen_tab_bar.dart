import 'package:flutter/material.dart';
import 'package:trogon_task/core/theme/app_palatte.dart';

class TabBarItems extends StatefulWidget {
  const TabBarItems({super.key});

  @override
  _TabBarItemsState createState() => _TabBarItemsState();
}

class _TabBarItemsState extends State<TabBarItems> {
  int activeIndex = 0;
  final ScrollController _scrollController = ScrollController();

  void _onItemTapped(int index) {
    setState(() {
      activeIndex = index;
      debugPrint("selected index $index");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 80,
          decoration: const BoxDecoration(color: AppPalette.gradient1),
        ),
        Positioned(
          bottom: -70,
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: tabBarItemsList.asMap().entries.map((entry) {
                int index = entry.key;
                TabBarItemModel item = entry.value;
                return GestureDetector(
                  onTap: () => _onItemTapped(index),
                  child: TabBarItem(
                    isActive: activeIndex == index,
                    item: item,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class TabBarItem extends StatelessWidget {
  final bool isActive;
  final TabBarItemModel item;

  const TabBarItem({
    super.key,
    required this.isActive,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(30),
              color: isActive ? AppPalette.gradient1 : AppPalette.gradient3,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DAY',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: !isActive ? AppPalette.gradient1 : Colors.white,
                    ),
                  ),
                  Text(
                    item.date,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: !isActive ? AppPalette.gradient1 : Colors.white,
                    ),
                  ),
                  Text(
                    item.moduleNumber,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: !isActive ? AppPalette.gradient1 : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          isActive
              ? Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: AppPalette.gradient1,
                shape: BoxShape.circle,
              ),
            ),
          )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class TabBarItemModel {
  final String date;
  final String moduleNumber;
  final bool isUnlocked;

  const TabBarItemModel({
    required this.date,
    required this.moduleNumber,
    this.isUnlocked = true,
  });
}

final List<TabBarItemModel> tabBarItemsList = List.generate(30, (index) {
  return TabBarItemModel(
    date: (index + 1).toString(),
    moduleNumber: '${(index + 1).toString().padLeft(2, '0')}/04',
    isUnlocked: index < 3,
  );
});
