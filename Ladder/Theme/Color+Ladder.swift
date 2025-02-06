//
//  Color+Ladder.swift
//  Ladder
//
//  Created by Andrew Hulsizer on 11/24/24.
//

import SwiftUI
import UIKit

public extension Color {
    
    //Neutral
    static let ladderLightGray = Color.hex6(0xC4C4C4)
    static let ladderMediumGray = Color.hex6(0x9E9E9E)
    static let ladderDarkGray = Color.hex6(0x5A5A5A)
    static let ladderShadowGray = Color.hex6(0x333333)
    static let ladderSlateGray = Color.hex6(0x202020)
    static let ladderDeepGray = Color.hex6(0x171717)
    
    //Primary
    static let ladderVolt = Color.hex6(0xE6FF00)
    static let ladderWhite = Color.hex6(0xFAFAFA)
    static let ladderBlack = Color.hex6(0x0E0E0E)
    
    //Secondary
    static let ladderVermillion = Color.hex6(0xFF5349)
    static let ladderPurple = Color.hex6(0xB982FF)
    
    //Destructive
    static let ladderDestructiveColor = Color.hex6(0xFF3D00)
    
    //Secondary Scale
    static let ladderVermillion50 = Color.hex6(0xFFF2F1)
    static let ladderVermillion100 = Color.hex6(0xFFE1DF)
    static let ladderVermillion200 = Color.hex6(0xFFC8C5)
    static let ladderVermillion300 = Color.hex6(0xFFA29D)
    static let ladderVermillion400 = Color.hex6(0xFF6D64)
    static let ladderVermillion500 = Color.hex6(0xFF5349)
    static let ladderVermillion600 = Color.hex6(0xED2115)
    static let ladderVermillion700 = Color.hex6(0xC8170D)
    static let ladderVermillion800 = Color.hex6(0xA5170F)
    static let ladderVermillion900 = Color.hex6(0x881A14)
    static let ladderVermillion950 = Color.hex6(0x4B0804)
    
    static let ladderPurple50 = Color.hex6(0xF9F5FF)
    static let ladderPurple100 = Color.hex6(0xF2E7FF)
    static let ladderPurple200 = Color.hex6(0xE6D4FF)
    static let ladderPurple300 = Color.hex6(0xD3B2FF)
    static let ladderPurple400 = Color.hex6(0xB982FF)
    static let ladderPurple500 = Color.hex6(0x9E51FB)
    static let ladderPurple600 = Color.hex6(0x872EEF)
    static let ladderPurple700 = Color.hex6(0x731ED2)
    static let ladderPurple800 = Color.hex6(0x631EAB)
    static let ladderPurple900 = Color.hex6(0x51198A)
    static let ladderPurple950 = Color.hex6(0x350566)
    
    static let ladderVolt50 = Color.hex6(0xFFFEE4)
    static let ladderVolt100 = Color.hex6(0xFFFFC4)
    static let ladderVolt200 = Color.hex6(0xFCFF90)
    static let ladderVolt300 = Color.hex6(0xF4FF50)
    static let ladderVolt400 = Color.ladderVolt
    static let ladderVolt500 = Color.hex6(0xCAE600)
    static let ladderVolt600 = Color.hex6(0x9DB800)
    static let ladderVolt700 = Color.hex6(0x768B00)
    static let ladderVolt800 = Color.hex6(0x5D6D07)
    static let ladderVolt900 = Color.hex6(0x4E5C0B)
    static let ladderVolt950 = Color.hex6(0x293400)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ShapeStyle where Self == Color {

    public static var ladderLightGray: Color { Color.ladderLightGray }
    public static var ladderMediumGray: Color { Color.ladderMediumGray }
    public static var ladderDarkGray: Color { Color.ladderDarkGray }
    public static var ladderShadowGray: Color { Color.ladderShadowGray }
    public static var ladderSlateGray: Color { Color.ladderSlateGray }
    public static var ladderDeepGray: Color { Color.ladderDeepGray }
    
    public static var ladderVolt: Color { Color.ladderVolt }
    public static var ladderWhite: Color { Color.ladderWhite }
    public static var ladderBlack: Color { Color.ladderBlack }
    public static var ladderVermillion: Color { Color.ladderVermillion }
    public static var ladderPurple: Color { Color.ladderPurple }
    public static var ladderDestructiveColor: Color { Color.ladderDestructiveColor }

    public static var ladderVermillion50: Color { Color.ladderVermillion50 }
    public static var ladderVermillion100: Color { Color.ladderVermillion100 }
    public static var ladderVermillion200: Color { Color.ladderVermillion200 }
    public static var ladderVermillion300: Color { Color.ladderVermillion300 }
    public static var ladderVermillion400: Color { Color.ladderVermillion400 }
    public static var ladderVermillion500: Color { Color.ladderVermillion500 }
    public static var ladderVermillion600: Color { Color.ladderVermillion600 }
    public static var ladderVermillion700: Color { Color.ladderVermillion700 }
    public static var ladderVermillion800: Color { Color.ladderVermillion800 }
    public static var ladderVermillion900: Color { Color.ladderVermillion900 }
    public static var ladderVermillion950: Color { Color.ladderVermillion950 }

    public static var ladderPurple50: Color { Color.ladderPurple50 }
    public static var ladderPurple100: Color { Color.ladderPurple100 }
    public static var ladderPurple200: Color { Color.ladderPurple200 }
    public static var ladderPurple300: Color { Color.ladderPurple300 }
    public static var ladderPurple400: Color { Color.ladderPurple400 }
    public static var ladderPurple500: Color { Color.ladderPurple500 }
    public static var ladderPurple600: Color { Color.ladderPurple600 }
    public static var ladderPurple700: Color { Color.ladderPurple700 }
    public static var ladderPurple800: Color { Color.ladderPurple800 }
    public static var ladderPurple900: Color { Color.ladderPurple900 }
    public static var ladderPurple950: Color { Color.ladderPurple950 }

    public static var ladderVolt50: Color { Color.ladderVolt50 }
    public static var ladderVolt100: Color { Color.ladderVolt100 }
    public static var ladderVolt200: Color { Color.ladderVolt200 }
    public static var ladderVolt300: Color { Color.ladderVolt300 }
    public static var ladderVolt400: Color { Color.ladderVolt }
    public static var ladderVolt500: Color { Color.ladderVolt500 }
    public static var ladderVolt600: Color { Color.ladderVolt600 }
    public static var ladderVolt700: Color { Color.ladderVolt700 }
    public static var ladderVolt800: Color { Color.ladderVolt800 }
    public static var ladderVolt900: Color { Color.ladderVolt900 }
    public static var ladderVolt950: Color { Color.ladderVolt950 }
    
    public static var ladderBlur1: Color { Color.hex6(0x0E0E0E).opacity(0.5) }
    public static var ladderBlur2: Color { Color.hex6(0xC4C4C4).opacity(0.3) }
    public static var ladderBlur3: Color { Color.hex6(0x202020).opacity(0.5) }
}


public extension UIColor {
    
    //Neutral
    static let ladderLightGray = UIColor(hex6:0xC4C4C4)
    static let ladderMediumGray = UIColor(hex6:0x9E9E9E)
    static let ladderDarkGray = UIColor(hex6:0x5A5A5A)
    static let ladderShadowGray = UIColor(hex6:0x333333)
    static let ladderSlateGray = UIColor(hex6:0x202020)
    static let ladderDeepGray = UIColor(hex6:0x171717)
    
    //Primary
    static let ladderVolt = UIColor(hex6:0xE6FF00)
    static let ladderWhite = UIColor(hex6:0xFAFAFA)
    static let ladderBlack = UIColor(hex6:0x0E0E0E)
    
    //Secondary
    static let ladderVermillion = UIColor(hex6:0xFF5349)
    static let ladderPurple = UIColor(hex6:0xB982FF)
    
    //Destructive
    static let ladderDestructiveColor = UIColor(hex6:0xFF3D00)
    
    //Secondary Scale
    static let ladderVermillion50 = UIColor(hex6:0xFFF2F1)
    static let ladderVermillion100 = UIColor(hex6:0xFFE1DF)
    static let ladderVermillion200 = UIColor(hex6:0xFFC8C5)
    static let ladderVermillion300 = UIColor(hex6:0xFFA29D)
    static let ladderVermillion400 = UIColor(hex6:0xFF6D64)
    static let ladderVermillion500 = UIColor(hex6:0xFF5349)
    static let ladderVermillion600 = UIColor(hex6:0xED2115)
    static let ladderVermillion700 = UIColor(hex6:0xC8170D)
    static let ladderVermillion800 = UIColor(hex6:0xA5170F)
    static let ladderVermillion900 = UIColor(hex6:0x881A14)
    static let ladderVermillion950 = UIColor(hex6:0x4B0804)
    
    static let ladderPurple50 = UIColor(hex6:0xF9F5FF)
    static let ladderPurple100 = UIColor(hex6:0xF2E7FF)
    static let ladderPurple200 = UIColor(hex6:0xE6D4FF)
    static let ladderPurple300 = UIColor(hex6:0xD3B2FF)
    static let ladderPurple400 = UIColor(hex6:0xB982FF)
    static let ladderPurple500 = UIColor(hex6:0x9E51FB)
    static let ladderPurple600 = UIColor(hex6:0x872EEF)
    static let ladderPurple700 = UIColor(hex6:0x731ED2)
    static let ladderPurple800 = UIColor(hex6:0x631EAB)
    static let ladderPurple900 = UIColor(hex6:0x51198A)
    static let ladderPurple950 = UIColor(hex6:0x350566)
    
    static let ladderVolt50 = UIColor(hex6:0xFFFEE4)
    static let ladderVolt100 = UIColor(hex6:0xFFFFC4)
    static let ladderVolt200 = UIColor(hex6:0xFCFF90)
    static let ladderVolt300 = UIColor(hex6:0xF4FF50)
    static let ladderVolt400 = UIColor(hex6:0xE6FF00)
    static let ladderVolt500 = UIColor(hex6:0xCAE600)
    static let ladderVolt600 = UIColor(hex6:0x9DB800)
    static let ladderVolt700 = UIColor(hex6:0x768B00)
    static let ladderVolt800 = UIColor(hex6:0x5D6D07)
    static let ladderVolt900 = UIColor(hex6:0x4E5C0B)
    static let ladderVolt950 = UIColor(hex6:0x293400)
}

public extension Color {

    static func hexString(_ hexString: String) -> Color {

        // Strip # or 0x out of string
        let hexString = hexString.replacingOccurrences(of: "#", with: "").replacingOccurrences(of: "0x", with: "")
        let hexType = hexString.count

        // Default color is clear which is normal default on UIKit
        guard let hexValue = Int(hexString, radix: 16) else {
            return Color(white: 0, opacity: 0)
        }

        switch hexType {
        case 3:
            return .hex3(hexValue)
        case 4:
            return .hex4(hexValue)
        case 6:
            return .hex6(hexValue)
        default:
            return Color(white: 0, opacity: 0)
        }
    }

    static func hex3(_ hex3: Int) -> Color {

        let divisor = CGFloat(15)
        let red = CGFloat((hex3 & 0xF00) >> 8) / divisor
        let green = CGFloat((hex3 & 0x0F0) >> 4) / divisor
        let blue = CGFloat( hex3 & 0x00F) / divisor
        return Color(.sRGB, red: red, green: green, blue: blue, opacity: 1)
    }


    static func hex4(_ hex4: Int) -> Color {

        let divisor = CGFloat(15)
        let red = CGFloat((hex4 & 0xF000) >> 12) / divisor
        let green = CGFloat((hex4 & 0x0F00) >> 8) / divisor
        let blue = CGFloat((hex4 & 0x00F0) >> 4) / divisor
        let alpha = CGFloat( hex4 & 0x000F) / divisor
        return Color(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
    }


    static func hex6(_ hex6: Int) -> Color {
        let divisor = CGFloat(255)
        let red = CGFloat((hex6 & 0xFF0000) >> 16) / divisor
        let green = CGFloat((hex6 & 0x00FF00) >> 8) / divisor
        let blue = CGFloat( hex6 & 0x0000FF) / divisor
        return Color(.sRGB, red: red, green: green, blue: blue, opacity: 1)
    }
}

public extension UIColor {

    var toHexString: String {

        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        getRed(&r, green: &g, blue: &b, alpha: &a)

        let rgba: Int = (Int)(r*255)<<24 | (Int)(g*255)<<16 | (Int)(b*255)<<8 | (Int)(a*255)<<0
        let hexString = String(format: "#%08x", rgba)
        return hexString
    }

    convenience init(hexString: String) {

        // Note(andrew): Strip # or 0x out of string
        let hexString = hexString.replacingOccurrences(of: "#", with: "").replacingOccurrences(of: "0x", with: "")
        let hexType = hexString.count

        // Note(andrew): Default color is clear which is normal default on UIKit
        guard let hexValue = Int(hexString, radix: 16) else {
            self.init(white: 0, alpha: 0)
            return
        }

        switch hexType {
        case 3:
            self.init(hex3: hexValue)
        case 4:
            self.init(hex4: hexValue)
        case 6:
            self.init(hex6: hexValue)
        default:
            self.init(white: 0, alpha: 0)
        }

    }

    convenience init(hex3: Int) {
        let divisor = CGFloat(15)
        let red = CGFloat((hex3 & 0xF00) >> 8) / divisor
        let green = CGFloat((hex3 & 0x0F0) >> 4) / divisor
        let blue = CGFloat( hex3 & 0x00F) / divisor
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }

    convenience init(hex4: Int) {
        let divisor = CGFloat(15)
        let red = CGFloat((hex4 & 0xF000) >> 12) / divisor
        let green = CGFloat((hex4 & 0x0F00) >> 8) / divisor
        let blue = CGFloat((hex4 & 0x00F0) >> 4) / divisor
        let alpha = CGFloat( hex4 & 0x000F) / divisor
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    convenience init(hex6: Int) {
        let divisor = CGFloat(255)
        let red = CGFloat((hex6 & 0xFF0000) >> 16) / divisor
        let green = CGFloat((hex6 & 0x00FF00) >> 8) / divisor
        let blue = CGFloat( hex6 & 0x0000FF) / divisor
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}

extension UIColor {
    public var isDarkColor: Bool {
        var r, g, b, a: CGFloat
        (r, g, b, a) = (0, 0, 0, 0)
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        let lum = 0.2126 * r + 0.7152 * g + 0.0722 * b
        return  lum < 0.50 ? true : false
    }
}

extension UIColor {
    public func opacity(_ value: CGFloat) -> UIColor {

        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        getRed(&r, green: &g, blue: &b, alpha: &a)

        return UIColor(displayP3Red: r, green: g, blue: b, alpha: a * value)
    }
}

extension UIColor {
    public func toColor(_ color: UIColor, percentage: CGFloat) -> UIColor {
        let percentage = max(min(percentage, 1), 0)
        switch percentage {
        case 0: return self
        case 1: return color
        default:
            var (r1, g1, b1, a1): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
            var (r2, g2, b2, a2): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
            guard self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1) else { return self }
            guard color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2) else { return self }

            return UIColor(red: CGFloat(r1 + (r2 - r1) * percentage),
                           green: CGFloat(g1 + (g2 - g1) * percentage),
                           blue: CGFloat(b1 + (b2 - b1) * percentage),
                           alpha: CGFloat(a1 + (a2 - a1) * percentage))
        }
    }
}
