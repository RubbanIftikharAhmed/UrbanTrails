//
//  ContentView.swift
//  UrbanTrails
//
//  Created by Rubban Iftikhar on 11/04/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ContentViewModel()
    var body: some View {
        Group {
            if vm.userSession != nil {
                //if he is logged in
            } else {
                //if the user is not logged in
            }
        }
    }
}

#Preview {
    ContentView()
}
