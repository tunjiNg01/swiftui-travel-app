//
//  HotelComp.swift
//  travel-app
//
//  Created by MACBOOK PRO on 13/09/2023.
//

import SwiftUI

struct HotelComp: View {
    var body: some View {
        Image("pic4")
             .resizable()
             .scaledToFit()
             .frame(width: 163)
             .clipShape(RoundedRectangle(cornerRadius: 12))
             .overlay(VStack( content: {
                 VStack(alignment:.leading, spacing: 0) {
                     Text("Lake Side Park Side")
                         .font(.headline)
                         .foregroundColor(.white)
                         .padding(.horizontal)
                         
                     HStack {
                         Text("$12.00")
                             .font(.caption)
                             .bold()
                         .foregroundColor(.white)
                         Spacer()
                         Text("Book")
                             .bold()
                             .font(.caption)
                             .padding(.vertical, 4)
                             .padding(.horizontal, 8)
                             .background {
                                 RoundedRectangle(cornerRadius: 8)
                                     .fill(.white)
                             }
                         
                     }.padding()
                 }
             }), alignment: .bottomLeading )
    }
}

struct HotelComp_Previews: PreviewProvider {
    static var previews: some View {
        HotelComp()
    }
}
