#
# 一定時間ごとにしぐさを再生するサブFST
#
${behavior_interval}=10

0 LOOP:
   <eps> TIMER_START|behavior|${behavior_interval}

# 一定時間が過ぎたら3つのしぐさモーションのうちどれかをランダム再生する
LOOP SG1:
   TIMER_EVENT_STOP|behavior VALUE_SET|rand|0.0|3.0
   VALUE_EVENT_SET|rand VALUE_EVAL|rand|LE|1.0
SG1 behavior1  VALUE_EVENT_EVAL|rand|LE|1.0|TRUE <eps>
SG1 SG2       VALUE_EVENT_EVAL|rand|LE|1.0|FALSE VALUE_EVAL|rand|LE|2.0
SG2 behavior2  VALUE_EVENT_EVAL|rand|LE|2.0|TRUE <eps>
SG2 behavior3  VALUE_EVENT_EVAL|rand|LE|3.0|FALSE <eps>

#### 以下、しぐさ。宛ててあるのは仮のもの。
# １：きょろきょろ
behavior1 SGEND:
   <eps> MOTION_ADD|0|behavior|../../motions/gesture/lookaround.vmd|PART|ONCE|ON|OFF
   MOTION_EVENT_ADD|0|behavior <eps>
# ２：服を直す
behavior2 SGEND:
   <eps> MOTION_ADD|0|behavior|../../motions/gesture/touch_cloth.vmd|PART|ONCE|ON|OFF
   MOTION_EVENT_ADD|0|behavior <eps>
# ３：眠そうにする
behavior3 SGEND:
   <eps> MOTION_ADD|0|behavior|../../motions/gesture/sleepy.vmd|PART|ONCE|ON|OFF
   MOTION_EVENT_ADD|0|behavior <eps>

# タイマーをリセットして戻る
SGEND LOOP:
   <eps> TIMER_START|behavior|${behavior_interval}
