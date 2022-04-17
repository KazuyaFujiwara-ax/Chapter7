//
//  ItemSearchResultSet.swift
//  MySearchApp
//
//  Created by AXLT0220-AP on 2022/04/05.
//

class ItemSearchResultSet: Codable {
    var request: Request
    var hits: [ItemData] = []
    private enum CodingKeys: String, CodingKey {
        case request
        case hits
    }
}

class Request: Codable {
    var query: String
    private enum CodingKeys: String, CodingKey {
        case query
    }
}

class ItemData: Codable {
    var name: String = ""
    var url: String = ""
    
    class ImageInfo: Codable {
        private enum CodingKeys: String, CodingKey {
            case small
            case medium
        }
        var small: String?
        var medium: String?
    }
    var imageInfo: ImageInfo = ImageInfo()
    var price: Int = 0
    
    private enum CodingKeys: String, CodingKey {
        case name
        case url
        case imageInfo = "image"
        case price
    }
}
