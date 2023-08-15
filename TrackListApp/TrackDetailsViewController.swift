//
//  TrackDetailsViewController.swift
//  TrackListApp
//
//  Created by Goodwasp on 15.08.2023.
//

import UIKit

class TrackDetailsViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var trackCoverImageView: UIImageView!
    @IBOutlet var trackTitleLabel: UILabel!
    
    // MARK: - Public properties
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trackCoverImageView.image = UIImage(named: track.title)
        trackTitleLabel.text = track.title
    }
}
