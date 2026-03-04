//
//  HomeView.swift
//  FitFlow
//
//  Created by Artur Bagautdinov on 03.03.2026.
//

import SwiftUI

struct HomeView: View {
    
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    
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
    
    var body: some View {
        
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack {
                        
                        Spacer()
                        
                        VStack {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.red)
                                
                                Text("123 kcal")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.green)
                                
                                Text("52 mins")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.blue)
                                
                                Text("8 hours")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $calories, goal: 600, color: .red)
                            
                            ProgressCircleView(progress: $active, goal: 60, color: .green)
                                .padding(.all, 20)
                            
                            ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                                .padding(.all, 40)
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        
                        Text("Fitness Activity")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button {
                            print("show more")
                        } label: {
                            Text("show more")
                                .padding(10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(20)
                            
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                        ForEach(mockActivities, id: \.id) { activity in
                            ActivityCard(activity: activity)
                            
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        
                        Text("Recent Workouts")
                            .font(.title2)
                        
                        Spacer()
                        
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("show more")
                                .padding(10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack {
                        ForEach(mockWorkouts, id: \.id) { workout in
                            WorkoutCard(workout: workout)
                            
                        }
                        
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

