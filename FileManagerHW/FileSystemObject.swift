//
//  FileSystemObject.swift
//  FileManagerHW
//
//  Created by Админ on 19.04.2022.
//

import Foundation

enum ContentType: Int {
    case up = 0
    case directory
    case file
}

struct FileSystemObject {
    var type: ContentType
    var name: String
    var url: URL
}
