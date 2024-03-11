import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_show_bloc/features/main_screen/bloc/cubit/bottom_bar_cubit.dart';
import 'package:tv_show_bloc/features/main_screen/presentation/widgets/botton_nav_bar_item.dart';

class BottomNavBarCustom extends StatelessWidget {
  const BottomNavBarCustom(
      {super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 85.0,
      child: Stack(
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 85,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(0, 102, 102, 102)
                        .withOpacity(0.4)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  context.read<BottomBarCubit>().selectTab(0);
                },
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 4,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: BottomNavBarItem(
                      itemImageName: 'home',
                      itemName: 'Home',
                    ),
                  ),
                ),
              ),
                GestureDetector(
                onTap: () {
                   context.read<BottomBarCubit>().selectTab(1);
                },
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 4,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: BottomNavBarItem(
                      itemImageName: 'settings',
                      itemName: 'Impostazioni',
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
