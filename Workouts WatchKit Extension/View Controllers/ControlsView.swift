//
//  ControlsView.swift
//  Workouts WatchKit Extension
//
//  Created by Frank Bara on 9/29/21.
//

import SwiftUI

struct ControlsView: View {
    var body: some View {
        
        HStack {
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                }
                .tint(Color.red)
                .font(.title2)
                Text("End")
            }
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "pause")

                }
            }
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
