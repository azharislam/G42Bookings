//
//  CheckboxView.swift
//  g42TechTest
//
//  Created by Azhar Islam on 25/06/2022.
//

import SwiftUI

/// Re-usable checkbox view

struct CheckboxComponent: ButtonStyle {
    enum Attributes {
        case `default`
        
        var isBordered: Bool {
            switch self {
            case .default:
                return true
            }
        }
        
        func borderColor(_ isSelected: Bool) -> Color {
            switch self {
            case .default:
                return isSelected ? Color.green : Color.gray
            }
        }
    }
    
    public var attribute: Attributes = .default
    public var isSelected: Bool = false
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 31, height: 31)
            .overlay(
                RoundedRectangle(cornerRadius: 1)
                    .stroke(attribute.borderColor(isSelected), lineWidth: attribute.isBordered ? 1 : 0)
            )
    }
}
