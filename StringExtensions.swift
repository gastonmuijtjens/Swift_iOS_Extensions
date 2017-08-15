//
//  StringExtensions.swift
//
//  Created by Gaston Muijtjens on 03-08-17.

import Foundation

extension String {
	
	/// Boolean indicating if the string is a valid email address or not
	var isEmail: Bool {
		get {
			let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
			let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
			return emailPredicate.evaluate(with: self)
		}
	}
}
