//
//  TabView.swift
//  UrbanTrails
//
//  Created by Rubban Iftikhar on 29/03/2025.
//

import SwiftUI

struct  UrbanTrailTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                Text("Feed View")
                    .tabItem {
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                    }
                    .onAppear { selectedTab = 0 }
                    .tag(0)
                
                
                Text("Log workout")
                    .tabItem {
                        Image(systemName: "plus")
                    }
                    .onAppear { selectedTab = 1 }
                    .tag(1)
                
                
                Text("Explore")
                    .tabItem {
                        Image(systemName: selectedTab == 2 ? "map.fill" : "map")
                            .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                    }
                    .onAppear { selectedTab = 2 }
                    .tag(2)
                
                Text("Profile")
                    .tabItem {
                        Image(systemName: selectedTab == 3 ? "person.fill" : "person")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                    }
                    .onAppear { selectedTab = 3 }
                    .tag(3)
            }
            .tint(.black)
        }
    }
}

#Preview {
    UrbanTrailTabView()
}
