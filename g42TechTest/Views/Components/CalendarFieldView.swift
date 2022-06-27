//
//  CalendarFieldView.swift
//  g42TechTest
//
//  Created by Azhar Islam on 25/06/2022.
//

import SwiftUI

struct CalendarFieldView<Content: View>: View {
    
    private let content: Content
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
        content
            .frame(maxWidth: .infinity)
            .font(Font.body.bold())
            .multilineTextAlignment(.center)
            .cornerRadius(2)
            .overlay(RoundedRectangle(cornerRadius: 2)
                .stroke(Color.gray, lineWidth: 0.5))
    }
}
