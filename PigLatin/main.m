//
//  main.m
//  PigLatin
//
//  Created by Yongwoo Huh on 2018-01-19.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray<NSString *>*englishWords = @[@"Hello", @"How are you", @"Long time no see", @"What is your name", @"My name is Yongwoo",
                                             @"Where are you from", @"I'm from Korea", @"Pleased to meet you", @"Good morning",
                                             @"Good afternoon", @"Good evening", @"Good night", @"Goodbye", @"Good luck"];
        
        for (NSString *word in englishWords) {
            
            NSLog(@"enlgish: %@,", word);
            NSLog(@"pig latin: %@", [word stringByPigLatinization]);
        }

    }
    return 0;
}
