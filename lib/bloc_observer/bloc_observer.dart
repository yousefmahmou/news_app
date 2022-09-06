//بلوك اوبسيرفر يعني هيتابع البلوك ماشي ازاي وفيه اربعه ميثود
//اون كرييت لما اكريت الاون بلوك فبيستدعي السوبر اون كريت دوت بلوك ف يبرنت ده فبيتابع البلوك وهو بيتكريت
//الاون تشانج بيديني البلوك اللي حصل فيه التغير وايه التغير اللي حصل فيه ويستدعي السوبر ويبرنته
//والاون ايرور بيديني البلوك اللي حصل فيه ايرور وايه الايرور وستيك ريس يعني الحل وبيرنته
//الاون كلوز يعني يقفل البلوك ونروح نوديه يشتغل في المين
import 'package:bloc/bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}
