//
//  NewsVC.swift
//  SidebarMenu
//
//  Created by Giovanni Lirios Aguilar on 11/9/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class NewsVC: UIViewController {

    var image : UIImage?
    var text : String?
    
    @IBOutlet weak var imageField: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(text)
        // Do any additional setup after loading the view.
        
        imageField.image = image
        textLabel.text = text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
