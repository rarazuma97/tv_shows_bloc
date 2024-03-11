import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tv_show_bloc/app/routing/main_navigation.dart';
import 'package:tv_show_bloc/app/utils/app_colors.dart';
import 'package:tv_show_bloc/app/utils/app_styles.dart';
import 'package:tv_show_bloc/features/home_screen/models/response/tv_show_response.dart';

class ShowDetailScreen extends StatefulWidget {
  const ShowDetailScreen({super.key, required this.show});

  final TvShowItem show;

  @override
  State<ShowDetailScreen> createState() => _ShowDetailScreenState();
}

class _ShowDetailScreenState extends State<ShowDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              MainNavigation.pop(context);
            },
          ),
          backgroundColor: AppColors.primary,
          title: Text(
            widget.show.show?.name ?? '',
            style: AppStyles.textStyleLargeBold.copyWith(color: Colors.white),
          ),
        ),
        backgroundColor: AppColors.primary,
        body: Padding(
          padding: size.deviceScreenType == DeviceScreenType.mobile
              ? const EdgeInsets.all(0.0)
              : EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.2),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 225,
                  child: CachedNetworkImage(
                    imageUrl: widget.show.show?.image?.original ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 10.0, bottom: 0),
                  child: Row(
                    children: [
                      Text('Premiere: ',
                          style: AppStyles.textStyleSmall
                              .copyWith(color: Colors.white)),
                      Text(
                        widget.show.show?.premiered ?? '',
                        style: AppStyles.textStyleSmall
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ),
                widget.show.show?.summary == null
                    ? Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Nessuna descrizione disponibile',
                          style: AppStyles.textStyleLargeBold
                              .copyWith(color: Colors.white),
                        ),
                      )
                    : Html(
                        data: widget.show.show?.summary,
                        style: {
                          "body": Style(
                              fontSize: FontSize(14.0),
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        },
                      )
              ],
            ),
          ),
        ),
      );
    });
  }
}
