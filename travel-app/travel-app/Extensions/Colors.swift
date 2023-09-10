//
//  Colors.swift
//  travel-app
//
//  Created by MACBOOK PRO on 10/09/2023.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = Theme()
}

struct Theme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let textColor = Color("SecondaryTextColor")
}
