//
//  ScheduleListView.swift
//  CoursePlanner
//
import SwiftUI
import CoreData

struct ScheduleListView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        entity: NSEntityDescription.entity(forEntityName: "ScheduleEntity", in: PersistenceController.shared.container.viewContext)!,
        sortDescriptors: [NSSortDescriptor(key: "createdAt", ascending: true)],
        animation: .default
    ) private var schedules: FetchedResults<NSManagedObject>

    var body: some View {
        NavigationView {
            List {
                ForEach(schedules, id: \.objectID) { schedule in
                    NavigationLink {
                        ContentView(scheduleEntity: schedule)
                    } label: {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(schedule.value(forKey: "name") as? String ?? "Untitled Schedule")
                                .font(.headline)

                            if let createdAt = schedule.value(forKey: "createdAt") as? Date {
                                Text(createdAt.formatted(date: .abbreviated, time: .shortened))
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
                .onDelete(perform: deleteSchedules)
            }
            .navigationTitle("Schedules")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        addSchedule()
                    } label: {
                        Label("New Schedule", systemImage: "plus")
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            if schedules.isEmpty {
                addSchedule()
            }
        }
    }

    private func addSchedule() {
        let newSchedule = NSEntityDescription.insertNewObject(forEntityName: "ScheduleEntity", into: viewContext)
        newSchedule.setValue(UUID(), forKey: "id")
        newSchedule.setValue("Schedule \(schedules.count + 1)", forKey: "name")
        newSchedule.setValue(Date(), forKey: "createdAt")

        let defaultSchedule = Schedule()

        for yearIndex in 0..<defaultSchedule.years.count {
            for slotIndex in 0..<defaultSchedule.years[yearIndex].count {
                let plannedCourse = NSEntityDescription.insertNewObject(forEntityName: "PlannedCourse", into: viewContext)
                plannedCourse.setValue(Int16(yearIndex), forKey: "yearIndex")
                plannedCourse.setValue(Int16(slotIndex), forKey: "slotIndex")
                plannedCourse.setValue(defaultSchedule.years[yearIndex][slotIndex], forKey: "courseID")
                plannedCourse.setValue(newSchedule, forKey: "schedule")
            }
        }

        do {
            try viewContext.save()
        } catch {
            print("Failed to create new schedule: \(error)")
        }
    }

    private func deleteSchedules(offsets: IndexSet) {
        withAnimation {
            offsets.map { schedules[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                print("Failed to delete schedule: \(error)")
            }
        }
    }
}
