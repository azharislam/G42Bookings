//
//  VaccinationFormView.swift
//  g42TechTest
//
//  Created by Azhar Islam on 25/06/2022.
//

import SwiftUI

struct DateTimeFormView: View {
    
    @StateObject var viewModel = VaccinationViewModel()
    var timeSlots: [String] = ["4:00 - 4:15", "4:15 - 4:30", "5:15 - 5:30", "5:30 - 5:45"]
    var labLocations: [String] = ["G42 Lab 1, Masdar City, Abu Dhabi", "Al Hosn One Day Surgery Centre, Abu Dhabi", "Solomed polyclinic, Abu Dhabi"]
    
    var body: some View {
        NavigationView {
            VStack {
                ProgressView()
                VStack(spacing: 32) {
                    calendarField
                    slotView
                    locationSlotView
                    Spacer()
                    nextButtonView
                }
                .padding()
            }
            .padding(.top, -200)
        }
    }
    
    @ViewBuilder
    private var calendarField: some View {
        VStack(alignment: .leading) {
            Text("Select Date")
                .font(Font.body.bold())
                .padding(.leading, 0)
            CalendarFieldView {
                TextField("Select date", text: $viewModel.enteredDate)
                    .frame(height: 50)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 10)
                    .overlay(alignment: .trailing) {
                        Text("$")
                            .font(Font.body.bold())
                            .padding(.trailing, 20)
                    }
            }
        }
    }
    
    @ViewBuilder
    private var slotView: some View {
        VStack(alignment: .leading) {
            Text("Available Time Slots")
                .font(Font.body.bold())
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0 ..< timeSlots.count, id:\.self) { timeSlot in
                        Text(timeSlots[timeSlot])
                            .foregroundColor(.white)
                            .font(.body)
                            .frame(width: 100, height: 30)
                            .background(.red)
                            .cornerRadius(3)
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    private var locationSlotView: some View {
        VStack(alignment: .leading) {
            Text("Select G42 Lab Location")
                .font(Font.body.bold())
            VStack {
                ForEach(0 ..< labLocations.count, id: \.self) { location in
                    Text(labLocations[location])
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 12, weight: .regular, design: .default))
                        .frame(width: 350, height: 50, alignment: .leading)
                        .padding(.leading, 10)
                        .background(.red)
                        .cornerRadius(3)
                    
                }
            }
            
        }
    }
    
    @ViewBuilder
    private var nextButtonView: some View {
        VStack {
            Button(action: {}) {
                Text("Next")
                    .frame(width: 350, height: 40, alignment: .center)
                    .font(.system(size: 16).bold())
                    .background(.black).clipped()
                    .foregroundColor(.white)
                    .cornerRadius(5)
            }
        }
    }
}


struct VaccinationFormView_Previews: PreviewProvider {
    static var previews: some View {
        DateTimeFormView()
    }
}
