//
//  DisplayViewController.swift
//  PhotoViewer
//
//  Created by Radjiv Carrere on 10/14/14.
//  Copyright (c) 2015 Radjiv Carrere. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    var currentPhoto :Photo?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: currentPhoto!.filename)
        currentImage.image = image
        self.title = currentPhoto!.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let thridScene = segue.destinationViewController as! InfoViewController
        thridScene.currentPhoto = currentPhoto
    }


}
