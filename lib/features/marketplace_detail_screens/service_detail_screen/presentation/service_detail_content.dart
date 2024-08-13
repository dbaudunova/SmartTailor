import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/author_info_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/detail_info_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/gallery_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class ServiceDateilContent extends StatefulWidget {
  final int id;
  const ServiceDateilContent({required this.id, super.key});

  @override
  State<ServiceDateilContent> createState() => _ServiceDateilContentState();
}

class _ServiceDateilContentState extends State<ServiceDateilContent> {
  @override
  void initState() {
    super.initState();
    _bloc.add(ServiceDetailEvent.getService(id: widget.id));
  }

  ServiceDetailBloc get _bloc => context.read<ServiceDetailBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceDetailBloc, ServiceDetailState>(
      builder: (context, state) {
        var service = state.service;
        return Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          appBar: AppBarStyle(title: t.service, centerTitle: true),
          body: SingleChildScrollView(
            child: Column(
              children: [
                GalleryWidget(
                  images: service.serviceImages,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.550,
                      color: AppColors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                          left: 16,
                          right: 16,
                          top: 24,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DetailInfoWidget(
                                description: service.description!,
                                name: service.name!,
                                price: service.price!,
                              ),
                              const SizedBox(height: 24),
                              Divider(
                                height: 0.33,
                                color: AppColors.buttonUnavailableBack.withOpacity(0.6),
                              ),
                              const SizedBox(height: 20),
                              AuthorInfoWidget(
                                authorImage: service.authorImage!,
                                authorName: service.authorFullName!,
                              ),
                              const SizedBox(height: 24),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
