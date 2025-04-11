//
//  ContentViewModel.swift
//  UrbanTrails
//
//  Created by Rubban Iftikhar on 11/04/2025.
//

import Foundation
import Combine
import FirebaseAuth

class ContentViewModel : ObservableObject {
    @Published var userSession : FirebaseAuth.User?
    
    init(){
        setupSubscribers()
    }
    private func setupSubscribers () {
        AuthService.shared.$userSession.sink { [weak self] User in
            self?.userSession = User
        }

    }
}
