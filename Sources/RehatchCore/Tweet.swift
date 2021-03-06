//
//  Tweet.swift
//  Rehatch
//
//  Created by David Román Aguirre on 23/01/2017.
//
//

import Foundation

public struct Tweet {
	public let id: String
	public let date: Date
	public let isRetweet: Bool

	public init(id: String, date: Date, isRetweet: Bool) {
		self.id = id
		self.date = date
		self.isRetweet = isRetweet
	}
}

extension Array where Element == Tweet {
	public func sortedTweets(until date: Date) -> [Tweet] {
		return self
			.filter { $0.date < date }
			.sorted { $0.date < $1.date }
	}
}
