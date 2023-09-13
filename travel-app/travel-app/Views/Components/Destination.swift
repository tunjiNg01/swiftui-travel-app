//
//  Destination.swift
//  travel-app
//
//  Created by MACBOOK PRO on 13/09/2023.
//

import SwiftUI

struct Destination: View {
    var body: some View {
      
        Image("pic1")
            .resizable()
            .scaledToFill()
            .overlay(
                HStack(spacing: 10) {
                    Image(systemName: "paperplane.fill")
                    Text("direction")
                        .font(.subheadline)
                       
                }
                .padding(8)
                .foregroundColor(Color.theme.accent)
                .background{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .frame(height: 36)
                }
                .padding()
                , alignment: .topTrailing)
            .overlay(
                ZStack(alignment: .bottomLeading) {
                    Rectangle()
                        .fill(LinearGradient(colors: [Color.theme.textColor, .black.opacity(0.1)], startPoint: .bottom, endPoint: .top))
                    Text("Western North America Highway")
                        .font(.headline)
                        .bold()
                        .foregroundColor(.white)
                    .padding()
                }
                .frame(height: 150)
                , alignment: .bottomLeading
            )
            .frame(width: 243, height: 310)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct Destination_Previews: PreviewProvider {
    static var previews: some View {
        Destination()
    }
}
