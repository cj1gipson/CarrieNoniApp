//
//  NSAttributedString.swift
//  Carrie Noni
//
//  Created by Corey Gipson on 1/14/22.
//

import Foundation

extension NSAttributedString {
    
    static func makeHyperlink(for path: String, in string: String, as substring: String) -> NSAttributedString{
        let nsString = NSString(string: string)
        let substringRange = nsString.range(of: substring)
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(.link, value: path, range: substringRange)
        return attributedString
    }
}
