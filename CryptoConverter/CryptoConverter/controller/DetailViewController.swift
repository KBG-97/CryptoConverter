
import UIKit

class DetailViewController: UIViewController {
    
    var index: Int = 0
    var passedValue: Int!
    
    @IBOutlet weak var symbol: UILabel!
    @IBOutlet weak var shortName: UILabel!
    @IBOutlet weak var regularMarketPrice: UILabel!
    @IBOutlet weak var regularMarketChangePercent: UILabel!
    @IBOutlet weak var regularMarketPreviousClose: UILabel!
    @IBOutlet weak var priceHint: UILabel!
    @IBOutlet weak var regularMarketTime: UILabel!
    @IBOutlet weak var regularMarketChange: UILabel!
    @IBOutlet weak var regularMarketVolume: UILabel!
    
    var results: Result!
    override func viewDidLoad() {
        super.viewDidLoad()
        symbol?.text = results.symbol
        shortName.text = String(results.shortName)
        regularMarketPrice.text = String(results.regularMarketPrice)
        regularMarketChangePercent.text = String(format: "%.2f", results.regularMarketChangePercent) + "%"
        regularMarketPreviousClose.text = String(results.regularMarketPreviousClose)
        priceHint.text = String(results.priceHint)
        regularMarketTime.text = String(results.regularMarketTime)
        regularMarketChange.text = String(results.regularMarketChange)
        regularMarketVolume.text = String(results.regularMarketVolume)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
