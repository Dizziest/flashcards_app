import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'home_page_state.dart';

@Injectable()
class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
}
