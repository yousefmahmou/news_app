import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/bloc_observer/bloc_observer.dart';
import 'package:news_app/layout/news_layout_screen.dart';
import 'package:news_app/shared/cubit/news_cubit.dart';
import 'package:news_app/shared/cubit/news_states.dart';
import 'package:news_app/shared/network/local/cache_helper.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';
import 'package:news_app/shared/styles/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init;
  await Cachehelper.init();

  bool? isDark = Cachehelper.getBoolean(key: 'isDark');

  runApp(MyApp(isDark));
}

class MyApp extends StatelessWidget {
  final bool? isDark;
  MyApp(this.isDark);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit()
        ..getBusiness()
        ..changeAppMode(
          fromShared: isDark,
        ),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
              //هنعمل الثيم وثيم داتا عشان نتحكم في اللون ونعمل باكوارد بفولس عشان اتحكم في اللي فوق الاب بار
              //وبتاخد سيستم اوفرلاي والثيم داتا بيتحكم في الابليكشن كله ونعمل تيتل تيكست عشان نعدل في التيل الاب
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: //ThemeMode.dark,
                  NewsCubit.get(context).isDark
                      ? ThemeMode.dark
                      : ThemeMode.light,
              home: NewsScreen());
        },
      ),
    );
  }
}
