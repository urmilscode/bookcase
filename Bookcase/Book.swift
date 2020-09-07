//
//  Book.swift
//  Bookcase
//
//  Created by Urmil Shah on 9/7/20.
//  Copyright © 2020 Spark28 Apps. All rights reserved.
//

import Foundation
import UIKit

struct Book {
    static let defaultCover = UIImage(named: "book.jpg")!
    var title: String
    var author: String
    var rating: Double
    var isbn: String
    var notes: String
    var cover: UIImage {
        get {
            return image ?? Book.defaultCover
        } set {
            image = newValue
        }
    }
    
    
    private var image: UIImage?
    
    init(title: String, author: String, rating: Double, isbn: String, notes:String, cover:UIImage? = nil) {
        self.title = title
        self.author = author
        self.rating = rating
        self.isbn = isbn
        self.notes = notes
        self.image = cover
        
        
        
    }
    
}
