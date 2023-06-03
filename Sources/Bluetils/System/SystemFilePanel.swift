//
//  SystemFilePanel.swift
//  
//
//  Created by Hayes Dombroski on 6/3/23.
//

import SwiftUI

public protocol FilePickerResultsType {
    var canceled: Bool { get }
    var path: String? { get }
}

public struct FilePickerResults: FilePickerResultsType {
    public var canceled: Bool
    public var path: String?
}


/**
 * Opens a file picker dialog
 *
 * - Parameters:
 *   - title: Title of the dialog
 *   - showsResizeIndicator: Show resize indicator
 *   - showsHiddenFiles: Show hidden files
 *   - canChooseDirectories: Can choose directories
 *   - canCreateDirectories: Can create directories
 *   - allowsMultipleSelection: Allow multiple selections
 *   - allowedFileTypes: Allowed file types
 *
 * - Returns: FilePickerResults
 */
 
public func OpenFilePicker(title: String, showsResizeIndicator: Bool, showsHiddenFiles: Bool, canChooseDirectories: Bool, canCreateDirectories: Bool, allowsMultipleSelection: Bool, allowedFileTypes: [String]) -> FilePickerResults {
    let dialog = NSOpenPanel();
    
    dialog.title                   = title;
    dialog.showsResizeIndicator    = showsResizeIndicator;
    dialog.showsHiddenFiles        = showsHiddenFiles;
    dialog.canChooseDirectories    = canChooseDirectories;
    dialog.canCreateDirectories    = canCreateDirectories;
    dialog.allowsMultipleSelection = allowsMultipleSelection;
    dialog.allowedFileTypes        = allowedFileTypes;
    
    
    
    if (dialog.runModal() ==  NSApplication.ModalResponse.OK) {
        let result = dialog.url // Pathname of the file
        if (result != nil) {
            let path = result!.path
            // HERE
            return FilePickerResults(canceled: false, path: path)
        } else {
            // User clicked on "Cancel"
            return FilePickerResults(canceled: true, path: nil)
        }
    }
    return FilePickerResults(canceled: false, path: nil)
}

