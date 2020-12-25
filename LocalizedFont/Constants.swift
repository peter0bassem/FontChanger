//
//  Constants.swift
//  LocalizedFont
//
//  Created by Peter Bassem on 12/25/20.
//

import Foundation
import UIKit

enum LanguageConstants: String {
    case appleLanguage = "AppleLanguages"
    case englishLanguage = "en"
    case arabicLanguage = "ar"
}

// MARK: - English Fonts
@objc enum EnglishFonts: Int {
    case OpenSans
    case Langar
    case Kalam
}

@objc enum OpenSansFonts: Int {
    case Regular
    case Bold
    case SemiBoldItalic
    case ExtraBoldItalic
    case LightItalic
    case BoldItalic
    case Light

    func name() -> String {
        switch self {
        case .Regular: return "OpenSans-Regular"
        case .Bold: return "OpenSans-Bold"
        case .SemiBoldItalic: return "OpenSans-SemiBoldItalic"
        case .ExtraBoldItalic: return "OpenSans-ExtraBoldItalic"
        case .LightItalic: return "OpenSans-LightItalic"
        case .BoldItalic: return "OpenSans-BoldItalic"
        case .Light: return "OpenSans-Light"
        }
    }
}

@objc enum LangarFonts: Int {
    case Regular

    func name() -> String {
        switch self {
        case .Regular: return "Langar-Regular"
        }
    }
}

@objc enum KalamFonts: Int {
    case Regular
    case Bold
    case Light
    
    func name() -> String {
        switch self {
        case .Regular: return "Kalam-Regular"
        case .Bold: return "Kalam-Bold"
        case .Light: return "Kalam-Light"
        }
    }
}

// MARK: - Arabic Fonts
@objc enum ArabicFonts: Int {
    case Amiri
    case Mada
}

@objc enum AlmiriFonts: Int {
    case Regular
    case Bold
    case Italic
    case BoldItalic
    
    func name() -> String {
        switch self {
        case .Regular: return "Amiri-Regular"
        case .Bold: return "Amiri-Bold"
        case .Italic: return "Amiri-Italic"
        case .BoldItalic: return "Amiri-BoldItalic"
        }
    }
}

@objc enum MadaFonts: Int {
    case Regular
    case Bold
    case Medium
    case Light
    case ExtraLight
    case SemiBold
    case Black
    
    func name() -> String {
        switch self {
        case .Regular: return "Mada-Regular"
        case .Bold: return "Mada-Bold"
        case .Medium: return "Mada-Medium"
        case .Light: return "Mada-Light"
        case .ExtraLight: return "Mada-ExtraLight"
        case .SemiBold: return "Mada-SemiBold"
        case .Black: return "Mada-Black"
        }
    }
}
