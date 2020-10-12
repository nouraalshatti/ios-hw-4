//
//  ArtistCell.swift
//  Music appProject
//
//  Created by Noura on 10/11/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit

class ArtistCell: UITableViewCell {

    @IBOutlet weak var artistImageView: UIImageView!
     @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func ConfigureCell(artists: Artist) {
        self.artistImageView.image = UIImage(named: artists.image)
        self.artistNameLabel.text = artists.name
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
