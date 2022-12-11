enum TaskStates { todo, completed }

extension TaskStatesValues on TaskStates {
  String get value {
    switch (this) {
      case TaskStates.todo:
        return "TODO";
      case TaskStates.completed:
        return "COMPLETED";
    }
  }
}
