//
//  ExploreViewModel.swift
//  ThreadsApp
//
//  Created by Ibrahim Ethem Sag on 27.01.2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
