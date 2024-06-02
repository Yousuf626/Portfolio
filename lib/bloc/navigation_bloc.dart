import 'package:flutter_bloc/flutter_bloc.dart';

enum NavBarItem { Home, CV, Work, Contact }

abstract class NavigationEvent {
  const NavigationEvent();
}

class NavigateTo extends NavigationEvent {
  final NavBarItem destination;

  const NavigateTo(this.destination);
}

class NavigationState {
  final NavBarItem selectedNavItem;

  const NavigationState(this.selectedNavItem);
}

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState(NavBarItem.Home)) {
    on<NavigateTo>((event, emit) {
      emit(NavigationState(event.destination));
    });
  }
}
