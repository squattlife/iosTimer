//
//  IntExtension.swift
//  iosTimer
//
//  Created by 이재영 on 2023/09/14.
//

import Foundation

extension Int {
    var asTimestamp: String {
        let hour = self / 3600
        let minute = self / 60 % 60
        let second = self % 60

        return String(format: "%02i:%02i:%02i", hour, minute, second)
    }
}
