//
//  AuthService.swift
//  UrbanTrails
//
//  Created by Rubban Iftikhar on 11/04/2025.
//


import Firebase
import FirebaseAuth
class AuthService {
    @Published var userSession : FirebaseAuth.User? //to keep track if the user is logged in or not
    static let shared = AuthService() // A singleton instance of class
    
    init () {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(email: String, password: String) async throws {
        
    }
    
    func createUser(fullname: String, userName: String, email: String, password: String) async throws {
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: created user with uuid \(result.user.uid)")
        }catch {
            print("DEBUG error creating user \(error.localizedDescription)")
        }
    }
}
