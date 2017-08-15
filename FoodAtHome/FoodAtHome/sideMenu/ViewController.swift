

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, UIWebViewDelegate{
    
    @IBOutlet weak var leadingConstraints: NSLayoutConstraint!
    var menuShowing = false
    
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var myWebSite: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tracking
        myWebView?.loadRequest(URLRequest(url: URL(string: "https://www.facebook.com/profile.php?id=100011004420505&fref=ts")!))
        myWebSite?.loadRequest(URLRequest(url: URL(string: "https://www.facebook.com/profile.php?id=100000339632871&fref=ts")!))
        
    }
    
    override func viewDidLayoutSubviews() {
        myScrollView.contentSize.width = myScrollView.frame.width * 4
        var imageView = [UIImage]()
        imageView.append(UIImage(named:"scrollView1.jpg")!)
        imageView.append(UIImage(named:"scrollView2.jpg")!)
        imageView.append(UIImage(named:"scrollView3.jpg")!)
        imageView.append(UIImage(named:"scrollView4.jpg")!)
        
        for i in 0...imageView.count {
            
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    //side Menu
    @IBAction func openMenu(_ sender: Any) {
        
        if (menuShowing) {
            leadingConstraints.constant = -330
        }else {
            
            leadingConstraints.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menuShowing = !menuShowing
    }
    //btn Logout
    @IBAction func btnLogout(_ sender: UIButton) {
        let logout = UIAlertController (
            title: "確定要離開了嘛",
            message: "真的不要我了噢",
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(
            title: "確定離開",
            style: .default) { (action:UIAlertAction) in
                self.dismiss(animated: true, completion: nil)}
        
        let cancelAction = UIAlertAction(
            title: "不走了",
            style: .cancel) { (action:UIAlertAction) in
                self.dismiss(animated: true, completion: nil)}
        
        logout.addAction(okAction)
        logout.addAction(cancelAction)
        self.present(logout, animated: true, completion: nil)
    }
    
    
}

