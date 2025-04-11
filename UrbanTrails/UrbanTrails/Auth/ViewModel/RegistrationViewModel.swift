//
//  RegistrationViewModel.swift
//  UrbanTrails
//
//  Created by Rubban Iftikhar on 11/04/2025.
//

import Foundation
class RegistrationViewModel : ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var fullname: String = ""
    @Published var username: String = ""
    @MainActor
    
    func createUser () async throws {
        do{
            try await AuthService.shared.createUser(fullname: fullname, userName: username, email: email, password: password)
        } catch {
            
        }
    }
}
