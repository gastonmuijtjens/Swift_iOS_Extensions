//
//  DateExtensions.swift
//
//  Created by Gaston Muijtjens on 08-08-17.

import Foundation

extension Date {
	
	/// Will return a new Date with the given days added
	///
	/// - Parameter days: The days to add. Use negative number to substract days
	/// - Returns: A new date with the given days added or substracted
	func add(days: Int) -> Date {
		return Calendar.current.date(byAdding: .day, value: days, to: self)!
	}
	
	/// Will return a new Date with the given hours added
	///
	/// - Parameter days: The hours to add. Use negative number to substract hours
	/// - Returns: A new date with the given hours added or substracted
	func add(hours: Int) -> Date {
		return Calendar.current.date(byAdding: .hour, value: hours, to: self)!
	}
	
	/// Will check if the date is the same date as the given date
	///
	/// - Parameter otherDate: The date to compare the date with
	/// - Returns: Boolean indicating if the date is the same or not
	func isSameDate(otherDate: Date) -> Bool {
		return self.compare(otherDate).rawValue == 0
	}
	
	/// Will check if the date is on the same date as the given date
	///
	/// - Parameter otherDate: The date to compare the date with
	/// - Returns: Boolean indicating if the date is on the same day or not
	func isSameDay(otherDate: Date) -> Bool {
		return Calendar.current.isDate(otherDate, inSameDayAs: self)
	}
}
