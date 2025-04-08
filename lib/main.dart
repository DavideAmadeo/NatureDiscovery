import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_discovery/screens/getstarted/getstarted_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp(
          title: 'Nature Discovery',
          theme: ThemeData(
              useMaterial3: true,
              textTheme: GoogleFonts.poppinsTextTheme(),
              textSelectionTheme: const TextSelectionThemeData(cursorColor: Color(0xFF1a1e18)),
              appBarTheme: const AppBarTheme(
                //backgroundColor: Color(0xFF172C27),
                //foregroundColor: Color(0xFFDCE7CC)
                  backgroundColor: Color(0xFFf3f2f7),
                  surfaceTintColor: Color(0xFF1a1e18),
                  foregroundColor: Color(0xFF1a1e18)
              ),
              navigationBarTheme: NavigationBarThemeData(
                  height: 45.h,
                  backgroundColor: const Color(0xFFf3f2f7),
                  //backgroundColor: const Color(0xFF061814),
                  indicatorColor: Colors.transparent,
                  surfaceTintColor: Colors.transparent,
                  iconTheme: MaterialStateProperty.all(
                      IconThemeData(
                        //color: const Color(0xFFDDE7CC),
                          color: const Color(0xFF1a1e18),
                          size: 24.sp
                      )
                  ),
                  labelTextStyle: MaterialStateProperty.all(
                      TextStyle(
                        //color: const Color(0xFFDDE7CC),
                          color: const Color(0xFF1a1e18),
                          fontSize: 12.sp
                      )
                  )
              ),
              tabBarTheme: const TabBarTheme(
                  tabAlignment: TabAlignment.start,
                  indicatorSize: TabBarIndicatorSize.tab,
                  //indicatorColor: Color(0xFFDCE7CC),
                  indicatorColor: Color(0xFF1a1e18),
                  dividerColor: Colors.transparent,
                  //labelColor: Color(0xFFDCE7CC),
                  labelColor: Color(0xFF1a1e18),
                  unselectedLabelColor: Color(0xFF1a1e18),
                  //unselectedLabelColor: Color(0xFFDCE7CC),
                  overlayColor: MaterialStatePropertyAll(Color(0xFFe4e3e8))
              ),
              searchBarTheme: SearchBarThemeData(
                backgroundColor: MaterialStateProperty.all(const Color(0xFFf3f2f7)),
                surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 16.w)),
                textStyle: MaterialStateProperty.all(TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF1a1e18)
                )),
                hintStyle: MaterialStateProperty.all(TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF1a1e18).withOpacity(0.6)
                )),
              ),
              searchViewTheme: const SearchViewThemeData(
                  backgroundColor: Color(0xFFf3f2f7),
                  surfaceTintColor: Colors.transparent,
                  headerTextStyle: TextStyle(
                      color: Color(0xFF1a1e18)
                  ),
                  headerHintStyle: TextStyle(
                      color: Color(0xFF1a1e18)
                  ),
                  dividerColor: Color(0xFF1a1e18)
              )
          ),
          debugShowCheckedModeBanner: false,
          home: const GetStartedScreen(),
        );
      },
    );
  }
}