//
//  VideoModel.swift
//  Africa
//
//  Created by Valentina Olariaga on 28/3/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline : String
    
    
    var thumbail : String {
        "video-\(id)"
    }
}
