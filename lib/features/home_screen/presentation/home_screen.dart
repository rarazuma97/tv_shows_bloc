import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tv_show_bloc/app/utils/app_colors.dart';
import 'package:tv_show_bloc/app/utils/app_styles.dart';
import 'package:tv_show_bloc/features/home_screen/bloc/cubit/search_bar_cubit.dart';
import 'package:tv_show_bloc/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:tv_show_bloc/features/home_screen/widgets/show_grid.dart';
import 'package:tv_show_bloc/features/home_screen/widgets/show_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) => state.maybeWhen(
            error: (m) => SizedBox(
                  child: Text(m),
                ),
            orElse: () => const SizedBox(),
            loading: () => const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 53, 53, 174),
                  ),
                ),
            loaded: (items) => ResponsiveBuilder(builder: (context, size) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: const Color.fromARGB(255, 45, 45, 101),
                      title: Text(
                        'Home',
                        style: AppStyles.textStyleLargeBold
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    backgroundColor: AppColors.primary,
                    body: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10),
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                controller: controller,
                                onEditingComplete: () {
                                  context.read<SearchBarCubit>().searchItem(controller.text, items);
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Search',
                                  prefixIcon: Icon(Icons.search),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          items.showList == null || items.showList!.isEmpty
                              ? Center(
                                  child: Text(
                                    'Nessun Programma disponibile',
                                    style: AppStyles.textStyleLargeBold
                                        .copyWith(color: Colors.white),
                                  ),
                                )
                              : size.deviceScreenType ==
                                          DeviceScreenType.desktop ||
                                      size.deviceScreenType ==
                                          DeviceScreenType.tablet
                                  ? ShowGrid(shows: items.showList ?? [])
                                  : ShowList(shows: items.showList ?? [])
                        ],
                      ),
                    ),
                  );
                })));
  }
}
