//
//  NewsCellViewController.swift
//  SidebarMenu
//
//  Created by Local Account 436-15 on 7/13/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class NewsCellViewController: UIViewController {

    var header: String?
    var name: String?
    var bigImage: UIImage?
    var smallImage: UIImage?
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var bigImageView: UIImageView!
    @IBOutlet weak var littleImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let header = header{
            headerLabel.text = header
            nameLabel.text = name
            bigImageView.image = bigImage
            littleImageView.image = smallImage
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
    }
 

}
