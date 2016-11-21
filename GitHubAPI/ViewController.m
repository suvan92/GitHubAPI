//
//  ViewController.m
//  GitHubAPI
//
//  Created by Suvan Ramani on 2016-11-21.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "ViewController.h"
#import "Repo.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *listOfRepos;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.listOfRepos = [NSMutableArray new];
    
    NSURL *url = [NSURL URLWithString:@"https://api.github.com/users/suvan92/repos"];
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            NSLog(@"error: %@", error.localizedDescription);
            return;
        }
        
        NSError *jsonError = nil;
        NSArray *repos = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        
        if (jsonError) {
            NSLog(@"jsonError: %@", jsonError.localizedDescription);
            return;
        }
        
        for (NSDictionary *repo in repos) {
            NSString *repoName = repo[@"name"];
            NSString *dateCreated = repo[@"created_at"];
            NSString *repoUrl = repo[@"html_url"];
            NSString *repoId = repo[@"id"];
            
            Repo *newRepo = [[Repo alloc] initWithRepoName:repoName dateCreated:dateCreated url:repoUrl repoNumber:repoId];
            [self.listOfRepos addObject:newRepo];
        }
        
    }];
    
    [dataTask resume];
}



@end
