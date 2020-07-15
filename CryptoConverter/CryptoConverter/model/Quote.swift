
import Foundation

class Quote{
    var quoteResponse: QuoteResponse
    init(dictionary: NSDictionary) {
        self.quoteResponse = dictionary["quoteResponse"] as! QuoteResponse
    }
}

class QuoteResponse{
    var result: [Result]
    init(dictionary: NSDictionary) {
        var dict = dictionary["result"] as! NSArray
        self.result = Result.modelsFromDictionaryArray(array: dict)
    }
}

class Result{
    var symbol : String
    var shortName : String
    var regularMarketPrice : Double
    var regularMarketChangePercent : Double
    var regularMarketPreviousClose : Double
    var priceHint : Double
    var regularMarketTime : Double
    var regularMarketChange : Double
    var regularMarketVolume : Double
    init(dictionary: NSDictionary) {
        self.symbol = dictionary["symbol"] as? String ?? "Undefined"
        self.shortName = dictionary["shortName"] as? String ?? "Undefined"
        self.regularMarketPrice = dictionary["regularMarketPrice"] as? Double ?? 0
        self.regularMarketChangePercent = dictionary["regularMarketChangePercent"] as? Double ?? 0
        self.regularMarketPreviousClose = dictionary["regularMarketPreviousClose"] as? Double ?? 0
        self.priceHint = dictionary["priceHint"] as? Double ?? 0
        self.regularMarketTime = dictionary["regularMarketTime"] as? Double ?? 0
        self.regularMarketChange = dictionary["regularMarketChange"] as? Double ?? 0
        self.regularMarketVolume = dictionary["regularMarketVolume"] as? Double ?? 0
    }
    public class func modelsFromDictionaryArray(array: NSArray) -> [Result] {
        var models = [Result]()
        for item in array{
            models.append(Result(dictionary: item as! NSDictionary))
        }
        return models
    }
}
