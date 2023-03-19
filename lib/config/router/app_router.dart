import 'package:app_cine_world/presentation/screens/movie/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
  GoRoute(path: '/',
  name: HomeScreen.name,
  builder: (context, state) => const HomeScreen() ,)
]);