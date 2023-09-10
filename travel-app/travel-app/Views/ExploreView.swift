//
//  ExploreView.swift
//  travel-app
//
//  Created by MACBOOK PRO on 10/09/2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack{
            avartaSection
            Spacer()
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}

extension ExploreView {
    // avarta section
    private var avartaSection: some View {
        HStack {
            HStack {
                Image(systemName: "mappin")
                    .foregroundColor(Color.theme.accent)
                Text("London Airport")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(Color.theme.textColor)
            }
            Spacer()
            
            Image("user")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .clipShape(Circle())
                
            
        }
        .padding()
    }
}
