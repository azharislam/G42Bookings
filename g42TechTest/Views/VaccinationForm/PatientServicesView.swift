//
//  PatientServicesView.swift
//  g42TechTest
//
//  Created by Azhar Islam on 25/06/2022.
//

import SwiftUI

struct PatientServicesView: View {
    
    var favServices: [String] = ["+Manage", "RT PCR Standard 12-24 hrs", "RT PCR Express 5-6 hrs", "IgG or IgM Antibody Test", "COVID-19 Molecular Test"]
    var serviceCategory: [String] = ["All Services", "RT PCR", "Antibody"]
    var covidTests: [String] = ["RT PCR Standard 12-24 hrs", "RT PCR Express 5-6 hrs"]
    var antibodyTests: [String] = ["IgG Antibody", "IgM Antibody", "Total IgG + IgM Antibody"]
    var molecularTests: [String] = ["COVID-19 Molecular Test 30 mins", "RT PCR Express 5-6 hrs"]

    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                PatientServiceHeaderView()
                    .padding(.top, -150)
                Spacer()
                VStack {
                    VStack(spacing: 30) {
                        favouriteServicesView
                        serviceCategoryView
                        covidTestView
                        antibodyView
                        molecularView
                    }
                    .padding()
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .topLeading
                      )
                    .background(.white)
                }
                .frame(
                      minWidth: 0,
                      maxWidth: .infinity,
                      minHeight: 0,
                      maxHeight: .infinity,
                      alignment: .bottom
                    )
            }
            .background(.black)
        }
    }
    
    @ViewBuilder
    private var favouriteServicesView: some View {
        VStack(alignment: .leading) {
            Text("Favourite Services")
                .font(Font.body.bold())
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0 ..< favServices.count, id:\.self) { favService in
                        Text(favServices[favService])
                            .foregroundColor(.white)
                            .font(.system(size: 12, weight: .regular, design: .default))
                            .frame(width: 80, height: 90)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    private var serviceCategoryView: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0 ..< serviceCategory.count, id:\.self) { category in
                        Text(serviceCategory[category])
                            .foregroundColor(.white)
                            .font(.system(size: 12, weight: .regular, design: .default))
                            .frame(width: 120, height: 30)
                            .background(.gray)
                            .cornerRadius(14)
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    private var covidTestView: some View {
        VStack(alignment: .leading) {
            Text("COVID-19 PCR Tests")
                .font(.system(size: 12, weight: .regular, design: .default))
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0 ..< covidTests.count, id:\.self) { test in
                        Text(covidTests[test])
                            .foregroundColor(.white)
                            .font(.system(size: 12, weight: .regular, design: .default))
                            .frame(width: 80, height: 90)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    private var antibodyView: some View {
        VStack(alignment: .leading) {
            Text("Antibody")
                .font(.system(size: 12, weight: .regular, design: .default))
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0 ..< antibodyTests.count, id:\.self) { test in
                        Text(antibodyTests[test])
                            .foregroundColor(.white)
                            .font(.system(size: 12, weight: .regular, design: .default))
                            .frame(width: 80, height: 90)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    private var molecularView: some View {
        VStack(alignment: .leading) {
            Text("Molecular")
                .font(.system(size: 12, weight: .regular, design: .default))
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0 ..< molecularTests.count, id:\.self) { test in
                        Text(molecularTests[test])
                            .foregroundColor(.white)
                            .font(.system(size: 12, weight: .regular, design: .default))
                            .frame(width: 80, height: 90)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct PatientServicesView_Previews: PreviewProvider {
    static var previews: some View {
        PatientServicesView()
    }
}
