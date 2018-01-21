//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Yongwoo Huh on 2018-01-19.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *)stringByPigLatinization
{
    NSMutableArray *newWords1 = [@[] mutableCopy];
    NSMutableArray *newWords2 = [@[] mutableCopy];
//    NSMutableCharacterSet *vowelSet = [[NSMutableCharacterSet alloc] init];
//    [vowelSet addCharactersInString:@"aeiou"];
    
    // 1. break string into array of words
    NSArray <NSString *>*words = [self componentsSeparatedByString:@" "];
    
    // 2. move  consonant (or group of consonants) to the end the word
    for (NSString *word in words) {
        NSString *word1 = [NSString stringWithFormat:@"%@%@", [word substringFromIndex:1], [word substringToIndex:1]];
        [newWords1 addObject:word1];
    }
    
    // 3. and 'ay' to the end of the word
    for (NSString *word in newWords1) {
        NSString *newWord = [word stringByAppendingString:@"ay"];
        [newWords2 addObject:newWord];
    }
    // 4. make array of words into NSString.
    return [newWords2 componentsJoinedByString:@" "];
}
@end
