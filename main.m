#include <stdio.h>
#include <UIKit/UIKit.h>

@interface AVSpeechSynthesizer : NSObject {
}
-(BOOL)isSpeaking;
-(void)speakUtterance:(id)arg1 ;
@end

@interface AVSpeechUtterance : NSObject <NSCopying, NSSecureCoding> {
}
+(id)speechUtteranceWithString:(id)arg1 ;
@end
int main(int argc, char *argv[], char *envp[]) {
        AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc]init];
        AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString: [NSString stringWithFormat:@"%s", argv[1]]];
        [synthesizer speakUtterance:utterance];
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.5]];
        while ([synthesizer isSpeaking]) {
        	[[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.3]];
        }
	return 0;
}
