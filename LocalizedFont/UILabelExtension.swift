//
//  UILabelExtension.swift
//  LocalizedFont
//
//  Created by Peter Bassem on 12/25/20.
//

import UIKit

//var engFont: EnglishFonts = .openSansRegular

extension UILabel {
    
    @IBInspectable var localizationKey: String {
        set {
            text = newValue.localized()
        }
        get {
            return text!
        }
    }
    
    private static var englishFontType: EnglishFonts = .OpenSans
    private var englishFontType: EnglishFonts {
        get { return .OpenSans }
        set { UILabel.englishFontType = newValue }
    }
    
    private static var arabicFontType: ArabicFonts = .Amiri
    private var arabicFontType: ArabicFonts {
        get { return .Amiri }
        set { UILabel.arabicFontType = newValue }
    }
    
    // MARK: -
    @IBInspectable
    var eneglishFontSize: CGFloat {
        get { return font.pointSize }
        set {
            if !LocalizationHelper.isArabic() {
                switch UILabel.englishFontType {
                case .OpenSans: font = UIFont(name: OpenSansFonts(rawValue: englishSubFontRow)?.name() ?? "", size: newValue)
                case .Langar: font = UIFont(name: LangarFonts(rawValue: englishSubFontRow)?.name() ?? "", size: newValue)
                case .Kalam: font = UIFont(name: KalamFonts(rawValue: englishFontRow)?.name() ?? "", size: newValue)
                }
            }
        }
    }
    
    @IBInspectable
    var englishFontRow: Int {
        get { return 0 }
        set { englishFontType = EnglishFonts(rawValue: newValue) ?? .OpenSans }
    }
    
    @IBInspectable
    var englishSubFontRow: Int {
        get { return 0 }
        set {
            switch UILabel.englishFontType {
            case .OpenSans: font = UIFont(name: OpenSansFonts(rawValue: newValue)?.name() ?? "", size: eneglishFontSize)
            case .Langar: font = UIFont(name: LangarFonts(rawValue: newValue)?.name() ?? "", size: eneglishFontSize)
            case .Kalam: font = UIFont(name: KalamFonts(rawValue: newValue)?.name() ?? "", size: eneglishFontSize)
            }
        }
    }
    
    // MARK: -
    @IBInspectable
    var arabicFontSize: CGFloat {
        get { return font.pointSize }
        set {
            if LocalizationHelper.isArabic() {
                switch UILabel.arabicFontType {
                case .Amiri:
                    font = UIFont(name: AlmiriFonts(rawValue: arabicSubFontRow)?.name() ?? "", size: newValue)
                case .Mada:
                    font = UIFont(name: MadaFonts(rawValue: arabicSubFontRow)?.name() ?? "", size: newValue)
                }
            }
        }
    }

    @IBInspectable
    var arabicFontRaw: Int {
        get { return 0 }
        set { arabicFontType = ArabicFonts(rawValue: newValue) ?? .Amiri }
    }

    @IBInspectable
    var arabicSubFontRow: Int {
        get { return 0 }
        set {
            if LocalizationHelper.isArabic() {
                switch UILabel.arabicFontType {
                case .Amiri:
                    font = UIFont(name: AlmiriFonts(rawValue: newValue)?.name() ?? "", size: arabicFontSize)
                case .Mada:
                    font = UIFont(name: MadaFonts(rawValue: newValue)?.name() ?? "", size: arabicFontSize)
                }
            }
        }
    }
}

