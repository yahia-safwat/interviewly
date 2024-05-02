import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../blocs/question/question_bloc.dart';
import 'package:interviewly/features/question/domain/entities/question_entity.dart';
import 'questions_listing_body.dart';

class QuestionsListing extends StatelessWidget {
  const QuestionsListing({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionBloc, QuestionState>(
      listener: _handleState,
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => _buildInitialView(),
          fetching: () => _buildLoadingView(),
          fetchSuccess: (questions) => _buildSuccessView(questions),
          fetchFailure: (errorMessage) => _buildFailureView(errorMessage),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Widget _buildFailureView(String errorMessage) {
    return Center(
      child: Text('Failed to load questions: $errorMessage'),
    );
  }

  Widget _buildSuccessView(List<QuestionEntity> questions) =>
      QuestionsListingBody(questions);

  Widget _buildLoadingView() =>
      const Center(child: CircularProgressIndicator());

  Widget _buildInitialView() => const SizedBox();

  void _handleState(BuildContext context, QuestionState state) {
    state.whenOrNull(
      toggleSuccess: (user) {
        // update the user in the User bloc
        context.read<UserBloc>().add(UpdateUser(user));

        // notify the Question bloc
        context.read<QuestionBloc>().add(FetchQuestions(
            user: user,
            clickedCategory: context.read<QuestionBloc>().clickedsubcategory!));
      },
      toggleFailure: (errorMessage) {
        // show error snackbar
        showErrorSnackbar(context, errorMessage);

        // notify the Question bloc
        context.read<QuestionBloc>().add(FetchQuestions(
            user: context.read<UserBloc>().user!,
            clickedCategory: context.read<QuestionBloc>().clickedsubcategory!));
      },
    );
  }
}
