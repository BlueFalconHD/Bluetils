//
//  EasyFrame.swift
//  
//
//  Created by Hayes Dombroski on 6/3/23.
//

import SwiftUI

// functions to clamp width and height between a min and max value, using frame in the backend. add as extensions to View

public extension View {
    func clampWidth(min: CGFloat, max: CGFloat) -> some View {
        frame(minWidth: min, maxWidth: max)
    }
    
    func clampHeight(min: CGFloat, max: CGFloat) -> some View {
        frame(minHeight: min, maxHeight: max)
    }
}

