import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_sample/application/downloads/downloads_bloc.dart';
import 'package:netflix_sample/core/colors/colors.dart';
import 'package:netflix_sample/domain/core/di/injectable.dart';
import 'package:netflix_sample/presentation/main_page/widgets/screen_mainpage.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx)=> getIt<DownloadsBloc>()),
      ],  
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          scaffoldBackgroundColor: backgroundColor,
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white,),
          bodyMedium: TextStyle(color: Colors.white)
          ),
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).
            copyWith(background: Colors.black),
    
        ),
        home:  ScreenMainPage()
      ),
    );
  }
}
