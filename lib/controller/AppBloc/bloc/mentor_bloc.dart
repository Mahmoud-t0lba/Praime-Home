import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'mentor_event.dart';
part 'mentor_state.dart';

class MentorBloc extends Bloc<MentorEvent, MentorState> {
  MentorBloc() : super(MentorInitial());

  @override
  Stream<MentorState> mapEventToState(
    MentorEvent event,
  ) async* {
    //
  }
}
