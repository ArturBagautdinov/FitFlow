//
//  HomeViewModel.swift
//  FitFlow
//
//  Created by Artur Bagautdinov on 04.03.2026.
//

import SwiftUI

@Observable
class HomeViewModel {
    
    var calories: Int = 123
    var active: Int = 52
    var stand: Int = 9
    
    var mockActivities = [
        Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,812"),
        Activity(id: 1, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .red, amount: "812"),
        Activity(id: 2, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9,812"),
        Activity(id: 3, title: "Today steps", subtitle: "Goal 12,000", image: "figure.run", tintColor: .purple, amount: "104,812")
    ]
    
    var mockWorkouts: [Workout] = [
        Workout(id: 0, title: "Morning Run", image: "figure.run", tintColor: .green, duration: "30 min", date: "aug 1", calories: "250 kcal"),
        Workout(id: 1, title: "Yoga Flow", image: "figure.yoga", tintColor: .purple, duration: "45 min", date: "aug 1", calories: "180 kcal"),
        Workout(id: 2, title: "HIIT Circuit", image: "flame.fill", tintColor: .red, duration: "20 min", date: "aug 1", calories: "300 kcal"),
        Workout(id: 3, title: "Evening Walk", image: "figure.walk", tintColor: .blue, duration: "60 min", date: "aug 1", calories: "220 kcal")
    ]
}
