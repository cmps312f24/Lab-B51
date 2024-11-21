import 'package:floor/floor.dart';
import 'package:todo_list_base/model/todo.dart';

// Todo : add the TodoDao class
@dao
abstract class TodoDao {
  @Query('SELECT * FROM todos WHERE pid = :pid')
  Stream<List<Todo>> observeTodos(int pid);

  @Query('SELECT * FROM todos WHERE id = :id')
  Future<Todo?> getTodoById(int id);

  @insert
  Future<void> addTodo(Todo todo);

  @update
  Future<void> updateTodo(Todo todo);

  @delete
  Future<void> deleteTodoById(Todo todo);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> upsert(Todo todo);
}