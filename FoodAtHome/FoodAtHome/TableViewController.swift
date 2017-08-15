
import UIKit

class TableViewController: UITableViewController {
    
    

    
    
    var productType = ["蓋飯類","唰唰燴飯類","咖哩類","XO醬湯麵類","炒飯類","OX醬炒麵類","乾麵類","湯類","單點類"]
    
    var productImage = ["combo1.jpg", "combo2.jpg", "combo3.jpg", "combo4.jpg", "combo5.jpg", "combo5.jpg", "combo5.jpg", "combo5.jpg", "combo5.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "標頭標頭"
        view.backgroundColor = UIColor.cz_random()
        
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = productType[indexPath.row]
        cell.imageView?.image = UIImage(named: productImage[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productType.count
    }
    

}
