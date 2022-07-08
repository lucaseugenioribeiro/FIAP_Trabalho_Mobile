import 'dart:developer';

import 'package:fiap_mobile_trabalho/presentation/home_presenter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  static const String id = '/home';

  const HomeScreen({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  final HomePresenter presenter;

  void showError(String errorMessage) async {
    Get.snackbar(errorMessage, '');
  }
  
  @override
  Widget build(BuildContext context) {
    presenter.onInit();
    presenter.errorMessage.listen((errorMessage) {
      if (errorMessage.isNotEmpty) showError(errorMessage);
    });

    return Scaffold(
      body: SafeArea(
        child: Obx(
          () {
            final moviesList = presenter.organizationList.value;
            return ListView.separated(
              itemCount: moviesList.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) => Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: SizedBox(
                  height: 160,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 16,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                moviesList[index].oganisationName,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Rating: ${moviesList[index].oganisationName}'),
                              Text(
                                moviesList[index].oganisationName,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}