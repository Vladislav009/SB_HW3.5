//
//  CustomBackButton.swift
//  SB_HW3.5
//
//  Created by Vladislav Kulak on 07.02.2022.
//

import SwiftUI

struct CustomBackButton: ViewModifier {
    @Environment(\.dismiss) var dismiss
    
    let title: String
    
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "chevron.left")
                        Text("\(title)")
                    }
                }
            }
    }
}

extension View{
    func customBackButton(title: String) -> some View {
        modifier(CustomBackButton(title: title))
    }
}
