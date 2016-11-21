//
//  RepoCell.h
//  GitHubAPI
//
//  Created by Suvan Ramani on 2016-11-21.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Repo;

@interface RepoCell : UITableViewCell

- (void)configureCell:(Repo *)repo;

@end
