//
//  UIViewControllerExtensions.swift
//
//  Created by Gaston Muijtjens on 03-08-17.

import Foundation
import UIKit

extension UIViewController {
	
	/// Show an alert with OK button with a given title and message
	///
	/// - Parameters:
	///   - title: The title to display with the message
	///   - message: The text to display with the message
	func showAlert(title: String, message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
		self.present(alert, animated: true, completion: nil)
	}
}
