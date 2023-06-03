//
//  IconButton.swift
//  
//
//  Created by Hayes Dombroski on 6/3/23.
//

import SwiftUI


/**
 A button with an icon
    - Parameter action: The action to perform when the button is pressed
    - Parameter icon: The name of the icon to display
    - Returns: A simple unstyled button with an icon
 */
public struct IconButton: View {
    var action: () -> Void
    var icon: String
    
    public var body: some View {
        Button(action: action) {
            Image(systemName: icon)
        }
    }
}
