//
//  ExploreView.swift
//  travel-app
//
//  Created by MACBOOK PRO on 10/09/2023.
//

import SwiftUI

struct ExploreView: View {
    private let tabs: [String] = ["Explore", "Flights", "Hotels", "Places", "Other" ]
    @State var selected: String = "Explore"
    @State private var searchedText = ""
    @Namespace var namespace;
    
    var body: some View {
     
        VStack{
            VStack(spacing: 0) {
                avartaSection
                searchSection
            }
            pageTabs
            
            ScrollView {
                
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
    
    // Tab section
    private var pageTabs: some View {
        HStack() {
            ForEach(tabs, id: \.self) { tab in
                ZStack(alignment: .bottom) {
                    if selected == tab {
                        Circle()
                            .fill(Color.theme.accent)
                            .frame(width: 8, height: 8)
                            .offset(y:11)
                            .matchedGeometryEffect(id: "tabs", in: namespace)
                    }
                    Text(tab)
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(selected == tab ? Color.theme.accent : Color.theme.textColor )
                }
                .frame(maxWidth: .infinity)
                .frame(height: 45)
                .onTapGesture {
                    withAnimation(.spring()) {
                        selected = tab
                    }
                }
            }
        }
        .padding(.horizontal)
    }
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
                        .fill(Color.theme.searchBg)
                        
                }
        }
        .padding()
    }
}
