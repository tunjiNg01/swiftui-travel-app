//
//  Hotel.swift
//  travel-app
//
//  Created by MACBOOK PRO on 13/09/2023.
//

import SwiftUI

struct Hotel: View {
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    private let spacing: Double = 30
    var body: some View {
        VStack {
            HStack {
                Text("Hotels")
                    .foregroundColor(Color.theme.textColor)
                    .font(.headline)
                Spacer()
                Text("View all")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(Color.theme.accent)
            }
            
           
            LazyVGrid(columns: columns,
                              alignment: .center,
                              spacing: spacing,
                              pinnedViews: []) {
                              HotelComp()
                HotelComp()
                HotelComp()
                HotelComp()
                    
                    }
        }
        .padding()
        
    }
}

struct Hotel_Previews: PreviewProvider {
    static var previews: some View {
        Hotel()
    }
}
