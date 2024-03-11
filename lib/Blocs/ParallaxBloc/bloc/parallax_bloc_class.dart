import 'package:bloc_travelling/Blocs/ParallaxBloc/Event/parallax_event.dart';
import 'package:bloc_travelling/Blocs/ParallaxBloc/State/parallax_state_.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ParallaxBloc extends Bloc<ParallaxEvent, ParallaxState> {
  ParallaxBloc() : super(ParallaxState(0));

  Stream<ParallaxState> mapEventToState(ParallaxEvent event) async* {
    // add here to handle the scrolling effect offset
  }
}

