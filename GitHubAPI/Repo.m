//
//  Repo.m
//  GitHubAPI
//
//  Created by Suvan Ramani on 2016-11-21.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "Repo.h"

@implementation Repo

//+ (instancetype)initWithRepoName:(NSString *)repoName dateCreated:(NSString *)date url:(NSURL *)url repoNumber:(NSNumber *)repoID {
//    
//    [super init];
//    
//    Repo *repo;
//    
//    return repo;
//}

- (instancetype)initWithRepoName:(NSString *)repoName dateCreated:(NSString *)date url:(NSString *)url repoNumber:(NSNumber *)repoID {
    
    self = [super init];
    if (self) {
        
        _repoName = repoName;
        _creationDate = date;
        _repoURL = url;
        _repoID = repoID;
    }
    return self;
}

@end
