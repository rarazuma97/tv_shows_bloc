import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_show_bloc/app/routing/main_navigation.dart';
import 'package:tv_show_bloc/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:tv_show_bloc/features/home_screen/models/response/tv_show_response.dart';
import 'package:tv_show_bloc/features/home_screen/widgets/list_show_item.dart';

class ShowList extends StatelessWidget {
  const ShowList({required this.shows, super.key});

  final List<TvShowItem> shows;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<HomeScreenBloc>().add(FetchData());
      },
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: shows.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                MainNavigation.push(
                    context, MainNavigation.showDetail(shows[index]));
              },
              child: ShowCard(
                image: shows[index].show?.image?.medium ?? '',
                title: shows[index].show?.name ?? '',
                rating: shows[index].score ?? 0,
              ),
            ),
          );
        },
      ),
    );
  }
}
