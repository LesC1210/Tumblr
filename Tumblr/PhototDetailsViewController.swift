//
//  PhototDetailsViewController.swift
//  Tumblr
//
//  Created by Leslie  on 10/2/18.
//  Copyright © 2018 Leslie . All rights reserved.
//

import UIKit

class PhototDetailsViewController: UIViewController {
    
    var posts: [String: Any]?
    @IBOutlet weak var detailsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photos = posts?["photos"] as? [[String: Any]] {
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            detailsImageView.af_setImage(withURL: url!)
        }
        // Do any additional setup after loading the view.
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
