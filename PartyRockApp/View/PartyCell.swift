//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Andrew Miller on 06/03/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //TODO: set image from url
    }

}
