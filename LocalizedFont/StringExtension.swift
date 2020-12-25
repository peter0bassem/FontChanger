//
//  StringExtension.swift
//  LocalizedFont
//
//  Created by Peter Bassem on 12/25/20.
//

import Foundation

extension String {
    func localized() -> String {
        let path = Bundle.main.path(forResource: LocalizationHelper.getCurrentLanguage(), ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
