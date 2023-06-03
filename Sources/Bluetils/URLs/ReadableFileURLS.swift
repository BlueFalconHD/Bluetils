//
//  ReadableFileURLs.swift
//  
//
//  Created by Hayes Dombroski on 6/2/23.
//

import Foundation

/**
 Generate a human readable string that represents a filepath from a URL
    - Parameter url: The URL to convert
    - Returns: A human readable filepath string
 */
public func humanReadableURL(from url: URL) -> String {
    var path = url.absoluteString
    path.removeFirst(7)
    return path.removingPercentEncoding!
}

/**
 Generate a URL from a human readable filepath string
    - Parameter string: The filepath string to convert
    - Returns: A URL
 */
public func rawURL(from string: String) -> URL {
    let encoded = string.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
    return URL(string: "file://\(encoded)")!
}

