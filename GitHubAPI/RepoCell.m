//
//  RepoCell.m
//  GitHubAPI
//
//  Created by Suvan Ramani on 2016-11-21.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "RepoCell.h"
#import "Repo.h"

@interface RepoCell ()

@property (weak, nonatomic) IBOutlet UILabel *repoNameLabel;

@end

@implementation RepoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureCell:(Repo *)repo {
    
    self.repoNameLabel.text = repo.repoName;
}

@end
