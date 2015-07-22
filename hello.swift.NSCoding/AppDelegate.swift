//
//  AppDelegate.swift
//  hello.swift.NSCoding
//
//  Created by Naohiro OHTA on Jul22,2015.
//  Copyright © 2015 Naohiro OHTA. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let notes = makeNotes()

        let data = NSKeyedArchiver.archivedDataWithRootObject(notes)
        print("1-------------------")
        print(dump(data))

        let restored = NSKeyedUnarchiver.unarchiveObjectWithData(data)
        print("2-------------------")
        print(dump(restored))


        return true
    }


    func makeNotes() -> [Note] {
        let texts = [
            "おはよー😄", "暑いねー😅", "うーむ😓",
            "眠いな〜😴", "やっほー😆", "ほほう😎",
            "なるほどね😙", "むむっ😟", "まあいいさ😶"
        ]
        let notes = texts.map { (t:String) -> Note in
            let n = Note()
            n.text = t
            return n
        }
        return notes
    }


}
