import '../model/todo_model.dart';
import '../model/todo_repository.dart';

class TodoViewModel {
  final TodoRepository _todoRepository = TodoRepository();
  Future<List<Todo>>? todos;

  TodoViewModel() {
    todos = loadTodos();
  }

  Future<List<Todo>> loadTodos() async {
    return await _todoRepository.getAllTodos();
  }

  Future<void> addTodo(Todo todo) async {
    await _todoRepository.insert(todo);
    todos = loadTodos(); // Refresh the todos
  }

  Future<void> deleteTodo(int id) async {
    await _todoRepository.delete(id);
    todos = loadTodos(); // Refresh the todos
  }
}
