import 'package:flutter/material.dart';
import 'package:tv_show_bloc/app/routing/main_navigation.dart';
import 'package:tv_show_bloc/features/home_screen/models/response/tv_show_response.dart';
import 'package:tv_show_bloc/features/home_screen/widgets/grid_show_item.dart';

class ShowGrid extends StatelessWidget {
  const ShowGrid({required this.shows, super.key});

  final List<TvShowItem> shows;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 330),
        itemCount: shows.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
                MainNavigation.push(
                    context, MainNavigation.showDetail(shows[index]));
            },
            child: GridShowItem(
              image: shows[index].show?.image?.medium ?? '',
              title: shows[index].show?.name ?? '',
              rating: shows[index].score ?? 0,
            ),
          );
        },
      ),
    );
  }
}
