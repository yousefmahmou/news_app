abstract class NewsStates {}

class NewsInitialStates extends NewsStates {}

class NewsBottomNav extends NewsStates {}

class NewsGetBusinessSuccessState extends NewsStates {}

class AppBusinissLodingState extends NewsStates {}

class AppSprotsLodingState extends NewsStates {}

class AppSciencesLodingState extends NewsStates {}

class NewsGetBusinessErrorState extends NewsStates {
  late final String error;

  NewsGetBusinessErrorState(this.error);
}

class NewsGetSportsSuccessState extends NewsStates {}

class NewsGetSportsErrorState extends NewsStates {
  late final String error;

  NewsGetSportsErrorState(this.error);
}

class NewsGetSciencesSuccessState extends NewsStates {}

class NewsGetSciencesErrorState extends NewsStates {
  late final String error;

  NewsGetSciencesErrorState(this.error);
}

class AppSearchLodingState extends NewsStates {}

class NewsGetSearchSuccessState extends NewsStates {}

class NewsGetSearchErrorState extends NewsStates {
  late final String error;

  NewsGetSearchErrorState(this.error);
}

class NewsChangeModeState extends NewsStates {}
