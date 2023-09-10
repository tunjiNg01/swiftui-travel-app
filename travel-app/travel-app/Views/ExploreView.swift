//
//  ExploreView.swift
//  travel-app
//
//  Created by MACBOOK PRO on 10/09/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchedText = ""
    var body: some View {
     
        VStack{
            VStack(spacing: 0) {
                avartaSection
                searchSection
               
            }
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
                Image(systemName: "location.fill")
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
    
    // Search section
    
    private var searchSection: some View {
        HStack(spacing: 10) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.theme.textColor)
                TextField("Search...", text: $searchedText)
                    .foregroundColor(Color.theme.textColor)
            }
            .font(.subheadline)
            .padding()
            .background{
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.theme.searchBg)
        }
        Image(systemName: "line.3.horizontal.decrease.circle")
                .foregroundColor(Color.theme.textColor)
                .font(.headline)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.white)
                        .shadow( color: Color.theme.accent.opacity(0.3), radius: 4)
                }
        }
        .padding()
    }
}
