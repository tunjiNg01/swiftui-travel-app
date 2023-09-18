//
//  FlightRow.swift
//  travel-app
//
//  Created by MACBOOK PRO on 18/09/2023.
//

import SwiftUI

struct FlightRow: View {
    var body: some View {
        VStack {
            VStack( alignment: .leading, spacing: 8) {
                Text("London Airport")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(Color.theme.textColor)
                VStack {
                    HStack {
                        VStack {
                            HStack {
                                Text("From")
                                Spacer()
                                Text("to")
                            }
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(.gray)
                            HStack {
                                Circle()
                                    .fill(.gray)
                                    .frame(width: 5)
                                
                                Rectangle()
                                   
                                    .stroke(style: StrokeStyle(dash: [7.0, 8.0]))
                                    .fill(.gray)
                                .frame(width: 100, height: 1 )
                                
                                Circle()
                                    .fill(Color.theme.accent)
                                    .frame(width: 5)
                            }
                            
                            HStack {
                                Text("06: 00 M")
                                Spacer()
                                Text("12: 00 PM")
                            }
                            .padding(.vertical, 3.5)
                            .font(.caption)
                            .bold()
                            .foregroundColor(.gray)
                            
                            HStack {
                                Text("Rp 62.00")
                                    .bold()
                                .font(.caption)
                                Spacer()
                                Text("14 rem")
                                    .font(.caption2)
                                    .bold()
                                    .foregroundColor(Color.theme.accent)
                            }
                                
                        }
                        Spacer()
                      Image("flightslogo1")
                            .frame(width: UIScreen.main.bounds.width / 2, alignment: .trailing)
                    }
                    HStack {
                        Text("Busines class")
                            .font(.caption2)
                            .bold()
                            .foregroundColor(Color.theme.accent)
                            .padding(.horizontal)
                            .padding(.vertical, 4)
                            .background {
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color.theme.accent.opacity(0.1))
                               
                            }
                        Spacer()
                        Text("2 hrs 18 minutes")
                            .font(.caption)
                            .bold()
                            .foregroundColor(Color.theme.textColor)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Book")
                                .font(.caption)
                                .foregroundColor(.white)
                                .bold()
                                .padding(.vertical, 6)
                                .padding(.horizontal)
                                .background(Color.theme.accent)
                                .clipShape(RoundedRectangle(cornerRadius: 6))
                        }

                    }
                }
                
                //.background(.blue)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
          
       
        }
    }
}

struct FlightRow_Previews: PreviewProvider {
    static var previews: some View {
        FlightRow()
    }
}
