
import 'package:view_model/base/view_model.dart';

class TodoState{
   int todo;
  TodoState({this.todo});
}

enum TodoEvent{
  add,
  down
}
class ToDoViewModel extends ViewModel<TodoEvent,TodoState>{
  final state = TodoState(todo: 0);
  @override
  void mapEventToHandler(Event event, commit) {
    switch(event.event){
      case TodoEvent.add:
        state.todo++;
        commit();
    }
  }

}