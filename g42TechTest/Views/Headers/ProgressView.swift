//
//  ProgressView.swift
//  g42TechTest
//
//  Created by Azhar Islam on 25/06/2022.
//

import SwiftUI

struct ProgressView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text("Book Appointment")
                .foregroundColor(.white)
                .padding(.leading, 12)
                .padding(.bottom, 5)
                .font(.system(size: 30, weight: .regular, design: .default))
            HStack(spacing: 4) {
                ForEach(0 ..< 4) { index in
                  Rectangle()
                        .foregroundColor(index < 1 ? .blue
                                         : .gray)
                        .clipShape(Capsule())
                        .cornerRadius(12)

                }
              }
              .frame(maxHeight: 7)
              .padding(.bottom, 50)
              .padding()
        }
        .background(Color.black)
        .frame(height: 300)
        .cornerRadius(20)
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView().previewLayout(.sizeThatFits)
    }
}
