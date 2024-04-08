//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Aavash Upadhyaya on 4/7/24.
//  Copyright © 2024 Aavash Upadhyaya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // Initialization directly, without using 'State' initializer explicitly
    @State private var tasks = [Task(name: "First Task")]

    var body: some View {
        NavigationView {
            List {
                // Iterating over tasks with indices to provide a stable reference for deletion
                ForEach(tasks.indices, id: \.self) { index in
                    NavigationLink(destination: TaskDetailView(task: self.$tasks[index])) {
                        HStack {
                            Text(self.tasks[index].name)
                            Spacer()
                            if self.tasks[index].isCompleted {
                                Image(systemName: "checkmark").foregroundColor(.green)
                            }
                        }
                    }
                }
                .onDelete(perform: deleteTask)
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Button(action: addTask) {
                Image(systemName: "plus")
            })
        }
    }

    private func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }

    private func addTask() {
        let newTaskCount = tasks.count + 1
        tasks.append(Task(name: "Task \(newTaskCount)"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

