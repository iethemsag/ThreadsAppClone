//
//  CreateThreadViewModel.swift
//  ThreadsApp
//
//  Created by Ibrahim Ethem Sag on 27.01.2024.
//

import Firebase

class CreateThreadViewModel: ObservableObject {
    
    func uploadThread(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let thread = Thread(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread: thread)
    }
}
