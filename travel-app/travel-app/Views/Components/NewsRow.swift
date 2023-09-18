//
//  NewsRow.swift
//  travel-app
//
//  Created by MACBOOK PRO on 18/09/2023.
//

import SwiftUI

struct NewsRow: View {
    var body: some View {
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
            .foregroundColor(Color.theme.textColor)
            
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8)
            .fill(.white))

    }
}

struct NewsRow_Previews: PreviewProvider {
    static var previews: some View {
        NewsRow()
    }
}
