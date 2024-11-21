import 'package:floor/floor.dart';
import 'package:todo_list_base/model/project.dart';
import 'package:todo_list_base/model/project_todo_status_counts.dart';

// Todo : add the ProjectDao class
@dao
abstract class ProjectDao {
  @Query('SELECT * FROM projects')
  Stream<List<Project>> observeProjects();

  @Query('SELECT * FROM projects WHERE id = :id')
  Future<Project> getProject(int id);

  @insert
  Future<List<Project>> addProject(Project project);

  @update
  Future<List<Project>> updateProject(Project updatedProject);

  @delete
  Future<List<Project>> deleteProject(Project project);
}
