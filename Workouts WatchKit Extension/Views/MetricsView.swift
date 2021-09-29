//
//  MetricsView.swift
//  Workouts WatchKit Extension
//
//  Created by Frank Bara on 9/29/21.
//

import SwiftUI

struct MetricsView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            // elapsed time
            ElapsedTimeView(elapsedTime: 3 * 60 + 15.24, showSubseconds: true)
                .foregroundColor(Color.yellow)
            
            
            // active energy
            Text(
                Measurement(value: 47, unit: UnitEnergy.kilocalories)
                    .formatted(.measurement(width: .abbreviated, usage: .workout, numberFormatStyle: .number)
                               //                        .measurement(width: .abbreviated,
                               //                                     usage: .workout,
                               //                                     numberFormat: .numeric(precision: .fractionLength(0)))
                              )
            )
            
            Text(153.formatted(
                .number.precision(.fractionLength(0))
            )
                 + "BPM"
            )
            
            Text(
                Measurement(value: 515, unit: UnitLength.meters)
                    .formatted(.measurement(width: .abbreviated, usage: .road))
            )
                .font(.system(.title, design: .rounded)
                        .monospacedDigit()
                        .lowercaseSmallCaps()
                )
                .frame(maxWidth: .infinity, alignment: .leading)
                .ignoresSafeArea(edges: .bottom)
                .scenePadding()
        }
    }
}

struct MetricsView_Previews: PreviewProvider {
    static var previews: some View {
        MetricsView()
    }
}
