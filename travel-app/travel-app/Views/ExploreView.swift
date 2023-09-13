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
      
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack{
                VStack(spacing: 0) {
                    avartaSection
                    searchSection
                }
                pageTabs
                
                ScrollView {
                    VStack(spacing: 24) {
                        VStack {
                            HStack {
                                Text("Popular Destination")
                                    .foregroundColor(Color.theme.textColor)
                                    .font(.headline)
                                Spacer()
                                Text("View all")
                                    .font(.subheadline)
                                    .bold()
                                    .foregroundColor(Color.theme.accent)
                            }
                            
                            ScrollView(.horizontal, showsIndicators:false) {
                                HStack {
                                    Image("pic1")
                                        .resizable()
                                        .scaledToFill()
                                        .overlay(badgeView, alignment: .topTrailing)
                                        .overlay(locationTitle, alignment: .bottomLeading)
                                        .frame(width: 243, height: 310)
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                    Image("pic1")
                                        .resizable()
                                        .scaledToFill()
                                        .overlay(badgeView, alignment: .topTrailing)
                                        .overlay(locationTitle, alignment: .bottomLeading)
                                        .frame(width: 243, height: 310)
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                }
                            }
                        }

                        
                        // news section
                        VStack {
                            HStack {
                                Text("Latest News")
                                    .foregroundColor(Color.theme.textColor)
                                    .font(.headline)
                                Spacer()
                                Text("View all")
                                    .font(.subheadline)
                                    .bold()
                                    .foregroundColor(Color.theme.accent)
                            }
                            ScrollView {
                                VStack(spacing: 12) {
                                    HStack {
                                        Text("North America private customized Travel plans, come and learn")
                                            .font(.subheadline)
                                            .foregroundColor(Color.theme.textColor)
                                        Spacer()
                                        Text("New")
                                            .font(.subheadline)
                                            .bold()
                                            .foregroundColor(Color.theme.accent)
                                            .padding(.vertical,  5)
                                            .padding(.horizontal, 10)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 8)
                                                    .fill(Color.theme.accent.opacity(0.2))
                                            }
                                        
                                    }
                                    
                                    HStack {
                                        Text("03 July, 2022")
                                            .font(.system(size: 12))
                                        Spacer()
                                        Image(systemName: "arrow.forward")
                                    }
                                    
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8)
                                    .fill(.white))
                            }
                        }
                    }
                }
                .padding()

                Spacer()
               
                
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}

extension ExploreView {
    // Location Title
    private var locationTitle: some View {
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
    }
    //badge
    private var badgeView: some View {
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
    }
    
    
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
