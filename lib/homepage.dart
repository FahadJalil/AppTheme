import 'package:app_theme/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Theme"),
        actions: [
          Consumer<ThemeService>(
            builder: (context, ThemeService theme, _) {
              return IconButton(onPressed: (){
                theme.toggleTheme();

              }, icon: Icon(theme.darkTheme! ? Icons.sunny : Icons.dark_mode));
            }
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.star),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Card(
                child: Padding(padding: EdgeInsets.all(20),
                child: Text("After defining a Theme, use it within your own widgets"),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text("Click Here")),
          ],
        ),
      ),
    );
  }
}
