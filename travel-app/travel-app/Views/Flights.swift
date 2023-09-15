//
//  Flights.swift
//  travel-app
//
//  Created by MACBOOK PRO on 15/09/2023.
//

import SwiftUI

struct Flights: View {
    @State var passengerCount: String = "2"
    var body: some View {
        VStack(spacing: 8) {
            VStack(spacing: 6) {
                distanceLabel
                airportCodeLabel
                airportLabel
               
            }
            .padding()
            planeLine
            dateLabel
            Button {
                
            } label: {
                Text("Search Flight")
            }

        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
       
       
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
        .font(.headline)
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
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [CGFloat(20)]))
                .fill(.gray)
                .frame(maxWidth: .infinity)
                .frame(height: 1)
            Image(systemName: "airplane")
                .font(.headline)
                .foregroundColor(Color.theme.accent)
        }
        .padding(.horizontal)
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
            .font(.headline)
            .bold()
            .foregroundColor(Color.theme.textColor)
        }
        .padding(.bottom)
        .padding(.horizontal)
    }
}
