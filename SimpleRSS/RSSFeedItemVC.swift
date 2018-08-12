//
//  RSSFeedItemVC.swift
//  SimpleRSS
//
//  Created by Mubashir on 12/08/2018.
//  Copyright © 2018 AsadJamil. All rights reserved.
//

import UIKit
import FeedKit

class RSSFeedItemVC: UIViewController {

    var rssFeedItem: RSSFeedItem? = nil

    @IBOutlet weak var titleLbl: UILabel!

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var imageViewHeight: NSLayoutConstraint!

    @IBOutlet weak var descriptionLblTopConstraint: NSLayoutConstraint!

    @IBOutlet weak var descriptionLbl: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLbl.text = rssFeedItem?.title
        descriptionLbl.text = rssFeedItem?.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
