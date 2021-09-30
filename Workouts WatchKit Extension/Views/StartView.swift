//
//  ContentView.swift
//  Workouts WatchKit Extension
//
//  Created by Frank Bara on 9/29/21.
//

import SwiftUI
import HealthKit

struct StartView: View {
    
    var workoutTypes: [HKWorkoutActivityType] = [.running, .walking, .cycling]
    
    
    var body: some View {
        
        List(workoutTypes) { workoutType in
            NavigationLink(
                workoutType.name,
                destination: SessionPagingView()
            ).padding(
                EdgeInsets(top: 15, leading: 5, bottom: 15, trailing: 5)
            )
        }
        .listStyle(.carousel)
        .navigationTitle("Workouts")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

extension HKWorkoutActivityType: Identifiable {
    public var id: UInt {
        rawValue
    }
    
    var name: String {
        switch self {
        case .running:
            return "Run"
        case .cycling:
            return "Bike"
        case .walking:
            return "Walk"
        default:
            return ""
        }
    }
}
