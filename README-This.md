# muhamead_alli_riverpod_geolocation_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
______________________________________________________
______________________________________________________
## 1. Create a required folder
## 2. Open folder in vs-code
## 3. Creata git
- git init
## 5. Copy followingfiles
- README-This.md
- Rgit.bat
## 6. Show git status
- git status
## 7. Add + Commit
- git add .
- git commit -m "msg"
## 8. Create the non existing remote MASTER baranch and push it
- git branch -M master
- git remote add origin https://github.com/Pyran-Ranjith/Test-Branch.git
- git push -u origin master
## 9. Create the non existing remote OTHER baranch and push it
- git checkout -b ver-1
- make changes
- git add .
- git commit -m "msg"
- git push --set-upstream origin ver-1

______________________________________________________
______________________________________________________
# Flutter + Midjourney🚀 Make AI Image Generator App in Flutter
[Flutter + Midjourney🚀 Make AI Image Generator App in Flutter](https://youtu.be/Lv9mD0DABsA?list=PL9n0l8rSshSkzasAAyVMozHQu8-LdWxI0&t=144)

- [Resources]()

## Bookmarks Vedio
- Date of begin: 11-jul-2024
- Bookmarks: 
  -  Sart modify main.dart
  
## Setup the project
- 1. Create a new repocitary in github
### GitHub
[Flutter-Clean-22-Akshit-Madan-Bloc-Learn-to-make-API-Requests-with-Flutter-BLoC](https://github.com/Pyran-Ranjith/Flutter-Clean-22-Akshit-Madan-Bloc-Learn-to-make-API-Requests-with-Flutter-BLOC.git)
- 2. decide and open parent folder in vs-code
    - parent folder: Flutter-Clean
- 3. $ git clone https://youtu.be/Lv9mD0DABsA?list=PL9n0l8rSshSkzasAAyVMozHQu8-LdWxI0&t=144
- 4. $ flutter create . --template=app --platforms=android,ios --org=com.ranjith --project-name=fc_23_akshit_madan_bloc_make_ai_image_generator_app

- 5. Run the app and check installed flutter sample app is working

## Instalation
- Parant folder: Flutter-Clean

- 
## Extensions neededed
- Flutter Widget Snippets
- Error Lense

- * Dependents in pubspec.yamal
    <!-- - * $ flutter pub add fpdart
    - * $ flutter pub add supabase_flutter -->
    - * $ ~~dependencies:
  flutter:
    sdk: flutter~~
  bloc:
  flutter_bloc: 
- OR
- $ flutter pub add bloc
- $ flutter pub get

__________________________________________________________
- * IF ERROR FOUND IN MAIN.DART
    - * $ flutter clean -v
    - * $ flutter packages get
    - * $ flutter packages upgrade
    - * $ dart fix --apply
    - * in command palete (F1) type 'Reload Window'

## How BLOC functionrd
1. define the state in _state.dart file
````
final class HomeInitial extends HomeState {}
...
abstract class Home1ActionState extends HomeState {}
...
````

2. define the event in event.dart file
````
class HomeWishlistNavigateButtonClickedEvent extends HomeEvent {
  HomeWishlistNavigateButtonClickedEvent();
}
````

3. define in _bloc.dart, also create method by clicking a bulb
````
class Home2Bloc extends Bloc<Home2Event, Home2State> {
  Home2Bloc() : super(Home2Initial()) {
    // product button click
    on<Home2WishlistNavigateButtonClickedEvent>(home2WishlistNavigateButtonClickedEvent);
  }

  FutureOr<void> home2WishlistNavigateButtonClickedEvent(Home2WishlistNavigateButtonClickedEvent event, Emitter<Home2State> emit) {
  }
}
````

4. now define the event in home.dart
````
final Home1Bloc home1Bloc = Home1Bloc();

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Home1Bloc, Home1State>(
      bloc: home1Bloc,
      listenWhen: (previous, current) => current is Home1ActionState,
      buildWhen: (previous, current) => current is! Home1ActionState,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Text(
              'Home1 - Ranjith\'s Grocery App',
              style: TextStyle(
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    // home1Bloc.add(Home1WishlistNavigateButtonClickedEvent());
                    home1Bloc.add(Home1WishlistNavigateButtonClickedEvent());
                  },
                  icon: Icon(Icons.favorite_border)),
            ],
          ),
        );
      },
    );
  }
}
````

3. now define the event in home.dart 
