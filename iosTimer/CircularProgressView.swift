//
//  CircularProgressView.swift
//  iosTimer
//
//  Created by 이재영 on 2023/09/14.
//

import Foundation
import SwiftUI

struct CircularProgressView: View {
    @Binding var progress: Float
    
    var body: some View {
        ZStack {
            // gray circle
            Circle()
                .stroke(lineWidth: 8.0)
                .opacity(0.3)
                .foregroundColor(Color("TimerButtonCancel"))
            
            // orange circle
            Circle()
                .trim(from: 0.0, to: CGFloat(min(progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 8.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color("TimerButtonPause"))
            // animation starts at 12'o clock
                .rotationEffect(Angle(degrees: 270))
        }
        // animation updates by 1 sec
        .animation(.linear(duration: 1.0), value: progress)
    }
}
