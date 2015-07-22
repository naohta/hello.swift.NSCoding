//
//  Note.swift
//  hello.swift.NSCoding
//
//  Created by Naohiro OHTA on Jul22,2015.
//  Copyright © 2015 Naohiro OHTA. All rights reserved.
//

import Foundation


class Note: NSObject, NSCoding {


    // MARK: - Properties

    var text: String? {
        willSet {
            self.date = NSDate()
        }
    }

    var date: NSDate?


    // MARK: - Inits

    override init() {
        super.init()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init()
        text = aDecoder.decodeObjectForKey("text") as? String
        date = aDecoder.decodeObjectForKey("date") as? NSDate
    }

    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(text, forKey: "text")
        aCoder.encodeObject(date, forKey: "date")
    }


}