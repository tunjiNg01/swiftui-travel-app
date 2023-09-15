//
//  Flights.swift
//  travel-app
//
//  Created by MACBOOK PRO on 15/09/2023.
//

import SwiftUI

struct ButtonPressibleStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .brightness(configuration.isPressed ? 0.1 : 0.0)
    }
}

struct Flights: View {
    @State var passengerCount: String = "2"
    var body: some View {
        VStack {
            ZStack {
                Color.theme.background
                    .ignoresSafeArea()
            }
            VStack(spacing: 8) {
                VStack(spacing: 6) {
                    distanceLabel
                    airportCodeLabel
                    airportLabel
                   
                }
                .padding()
                planeLine
                dateLabel
                

            }
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
            searchButton
            
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
              
           
            } .padding()
        }
       
        
       
    }
}

struct Flights_Previews: PreviewProvider {
    static var previews: some View {
        Flights()
    }
}

extension Flights {
    private var distanceLabel: some View {
        HStack {
            Text("From")
            Spacer()
            Text("to")
        }
        .font(.subheadline)
        .bold()
        .foregroundColor(.gray)
    }
    
    private var airportCodeLabel: some View {
        HStack {
            Text("LON")
            Spacer()
            Text("DXB")
        }
        .font(.subheadline)
        .textCase(.uppercase)
        .bold()
        .foregroundColor(.black)
    }
    
    private var airportLabel: some View {
        HStack {
            Text("London Airport")
            Spacer()
            Text("Dubai Airport")
        }
        .font(.subheadline)
        .bold()
        .foregroundColor(.gray)
    }
    
    private var planeLine: some View {
        ZStack {
            Rectangle()
                .stroke(style: StrokeStyle(lineWidth: 1,miterLimit: 0.5, dash: [CGFloat(20)]))
                .fill(.gray)
                .frame(maxWidth: .infinity)
                .frame(height: 1)
            Image(systemName: "airplane")
                .font(.headline)
                .foregroundColor(Color.theme.accent)
        }
        .padding(.horizontal)
    }
    
    private var searchButton: some View {
        Button {
            
        } label: {
            Text("Search Flight")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 45)
                .background(Color.theme.accent)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .withButtonPressedStyle()
        .padding()
    }
    
    private var dateLabel: some View {
        VStack(spacing:8) {
            HStack {
                Text("Date of departure")
                Spacer()
                Text("passenger")
            }
            .font(.subheadline)
            .bold()
        .foregroundColor(.gray)
            
            HStack {
                Text("Thur, 18 Oct 2023")
                Spacer()
                HStack(spacing: 12) {
                    Image(systemName: "plus")
                    Text(passengerCount)
                    Image(systemName: "minus")
                }
            }
            .font(.subheadline)
            .bold()
            .foregroundColor(Color.theme.textColor)
        }
        .padding(.bottom)
        .padding(.horizontal)
    }
}
