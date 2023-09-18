//
//  Transition.swift
//  travel-app
//
//  Created by MACBOOK PRO on 18/09/2023.
//

import Foundation
import SwiftUI
extension AnyTransition {
    static var onTab: AnyTransition {
        return AnyTransition.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing))
    }
}
