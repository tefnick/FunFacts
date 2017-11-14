//
//  ColorWheel.swift
//  FunFacts
//
//  Created by tefnick on 7/8/16.
//  Copyright © 2016 Tefnick. All rights reserved.
//

import Foundation
import UIKit

struct ColorWheel {
    
    let colorsArray = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0), //Teal Color
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0), //Yellow color
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0), //red color
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0), //orange color
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0), //dark color
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0), //purple color
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0), // green color
        UIColor(red: 25/255.0, green: 36/255.0, blue: 112/255.0, alpha: 1.0)// unknown color?
    ]
    
    func randomColor() -> UIColor{
        let unsignedArrayCount = UInt32(colorsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return colorsArray[randomNumber]
        
    }
    
}
