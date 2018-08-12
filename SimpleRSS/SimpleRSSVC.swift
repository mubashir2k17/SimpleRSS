//
//  SimpleRSSVC.swift
//  SimpleRSS
//
//  Created by Mubashir on 05/08/2018.
//  Copyright © 2018 AsadJamil. All rights reserved.
//

import UIKit
import FeedKit

class SimpleRSSVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var rssFeed: RSSFeed? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let feedURL = URL(string: "http://images.apple.com/main/rss/hotnews/hotnews.rss")!
        let parser = FeedParser(URL: feedURL)
        parser.parseAsync(queue: DispatchQueue.global(qos: .userInitiated)) { (result) in
            // Do your thing, then back to the Main thread
            DispatchQueue.main.async {
                // ..and update the UI
                self.rssFeed = result.rssFeed
                self.tableView.reloadData()
            }
        }
    }
}

extension SimpleRSSVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rssFeed?.items?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if let feed = rssFeed {
            cell.textLabel?.text = feed.items?[indexPath.row].title
        }
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        if let vc = sb.instantiateViewController(withIdentifier: "RSSFeedItemVC") as? RSSFeedItemVC {
            if let feed = rssFeed {
                vc.rssFeedItem = feed.items?[indexPath.row]
            }
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}
