import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:quent/features/main/search/presentation/manager/cubit/search_for_cars_cubit.dart';
import 'package:quent/features/main/search/presentation/widgets/search_page_body_bloc_consumer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  static const routeName = "search-page";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SearchForCarsCubit( ),

      child: const Scaffold(
        body: SafeArea(child: SearchPageBodyBlocConsumer()),
      ),
    );
  }
}
