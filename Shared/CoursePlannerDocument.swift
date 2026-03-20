//
//  CoursePlannerDocument.swift
//  Shared
//
//  Created by Rickey Chiu on 7/19/23.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var exampleText: UTType {
        UTType(importedAs: "com.chiu.rickey.CoursePlanner")
    }
}

struct CoursePlannerDocument: FileDocument {
    var schedule: Schedule

    init(schedule: Schedule = Schedule()) {
        self.schedule = schedule
    }

    static var readableContentTypes: [UTType] { [.exampleText] }

    init(configuration: ReadConfiguration) throws {

        guard let data = configuration.file.regularFileContents,
              let schedule = try? JSONDecoder().decode(Schedule.self, from: data)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        
        self.schedule = schedule
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
   
        if let data = try? JSONEncoder().encode(schedule) {
            return .init(regularFileWithContents: data)
        }
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
    }
}
