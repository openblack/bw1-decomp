#ifndef BW1_DECOMP_GAME_VIDEO_INCLUDED_H
#define BW1_DECOMP_GAME_VIDEO_INCLUDED_H

// Existing extracted free functions; declarations only.
void EnterVideoSection();                   // 00844c80
void LeaveVideoSection();                   // 00844ca0
void DeleteVideo(bool finished);            // 0054a940
void VideoPoll(bool param_1, bool param_2); // 0054aa40
void Good_sleep_us(long microseconds);      // 00642610
void PauseGame(int pause);                  // 0054ae20

#endif /* BW1_DECOMP_GAME_VIDEO_INCLUDED_H */
