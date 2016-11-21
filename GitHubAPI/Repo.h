//
//  Repo.h
//  GitHubAPI
//
//  Created by Suvan Ramani on 2016-11-21.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Repo : NSObject

@property (nonatomic, strong) NSString *repoName;
@property (nonatomic, strong) NSString *creationDate;
@property (nonatomic, strong) NSString *repoURL;
@property (nonatomic, strong) NSNumber *repoID;

- (instancetype)initWithRepoName:(NSString *)repoName dateCreated:(NSString *)date url:(NSString *)url repoNumber:(NSNumber *)repoID;

@end
