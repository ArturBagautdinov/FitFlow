//
//  FitnessTabView.swift
//  FitFlow
//
//  Created by Artur Bagautdinov on 03.03.2026.
//

import SwiftUI

struct FitnessTabView: View {
    
    @State var SelectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
    }
    
    var body: some View {
        
        TabView(selection: $SelectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HistoricDataView()
                .tag("Historic")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        }
        
    }
}

#Preview {
    FitnessTabView()
}
