import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:quent/features/main/search/presentation/manager/cubit/search_for_cars_cubit.dart';
import 'package:quent/features/main/search/presentation/widgets/search_page_body.dart';

class SearchPageBodyBlocConsumer extends StatelessWidget {
  const SearchPageBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchForCarsCubit, SearchForCarsState>(
      listener: (context, state) {
        if (state is SearchForCarsFaliure) {
          Flushbar(
            title: "Error",
            message: state.errorMessage,
            duration: const Duration(seconds: 3),
            backgroundColor: Colors.redAccent,
            icon: const Icon(Icons.error, color: Colors.white),
            flushbarPosition: FlushbarPosition.TOP,
          ).show(context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SearchForCarsLoading ? true : false,
          child: const SearchPageBody(),
        );
      },
    );
  }
}
