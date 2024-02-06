//
//  TrackDetailsViewController.swift
//  TrackListApp
//
//  Created by Irina Muravyeva on 06.02.2024.
//

import UIKit

class TrackDetailsViewController: UIViewController {

    @IBOutlet weak var artCoverImageView: UIImageView!
    @IBOutlet weak var trackTitleLabel: UILabel!
    
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        artCoverImageView.image = UIImage(named: track.title)
        trackTitleLabel.text = track.title
    }
    
}
