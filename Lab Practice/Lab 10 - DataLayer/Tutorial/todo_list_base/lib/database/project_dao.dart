import 'package:floor/floor.dart';
import 'package:todo_list_base/model/project.dart';
import 'package:todo_list_base/model/project_todo_status_counts.dart';

// Todo : add the ProjectDao class
@dao
abstract class ProjectDao {
  @Query('SELECT * FROM projects')
  Stream<List<Project>> observeProjects();

  @Query('SELECT * FROM projects WHERE id = :id')
  Future<Project?> getProject(int id);

  @insert
  Future<void> addProject(Project project);

  @update
  Future<void> updateProject(Project updatedProject);

  @delete
  Future<void> deleteProject(Project project);

  @Query('SELECT * FROM ProjectTodoStatusCounts WHERE id = :pid')
  Stream<ProjectTodoStatusCounts?> getProjectTodosStatusCounts(int pid);
}
