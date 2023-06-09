//
//  Filetypes.swift
//  
//
//  Created by Hayes Dombroski on 6/3/23.
//

import Foundation
import UniformTypeIdentifiers


/**
 Get the file extension from UTType for a specified string
    - Parameter fileMedium: The string to get the UTType from
    - Returns: The UTType of the file extension, or nil if it does not exist
 */
public func GetFiletype(fileMedium: String) -> UTType? {
    return UTType(fileMedium) ?? nil
}

public typealias Filetype = UTType
public typealias Filetypes = [Filetype]
