//
//  ProfileThreadFilter.swift
//  ThreadsApp
//
//  Created by Ibrahim Ethem Sag on 8.01.2024.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
            
        }
    }
    
    var id: Int {  return self.rawValue }
}
