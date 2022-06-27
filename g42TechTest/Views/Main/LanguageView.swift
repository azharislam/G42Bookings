//
//  ContentView.swift
//  g42TechTest
//
//  Created by Azhar Islam on 24/06/2022.
//

import SwiftUI

struct LanguageView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Image("logo")
                .resizable()
                .frame(width: 100, height: 70)
                .padding(.bottom, -10)
                .padding(.leading, 20)
            Text("Unified App")
                .padding(.leading, 20)
                .padding(.bottom, 50)
            Text("Select Language")
                .padding(.leading, 20)
                .padding(.bottom, -10)
            HStack(spacing: 50) {
                Button(action: {}) {
                    Text("Arabic")
                        .frame(width: 90, height: 10)
                        .font(.system(size: 16))
                        .padding()
                        .background(.black).clipped()
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                Button(action: {}) {
                    Text("English")
                        .frame(width: 90, height: 10)
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                        .padding()
                        .background(.black).clipped()
                        .cornerRadius(20)
                }
            }
            .padding()
        }
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
