#
# 一般的な質問に対する応答
#

WAIT WAIT:
    @RECOG\_EVENT\_STOP\|.*こんにち.*@ <eps>
    +@RECOG\_EVENT\_STOP\|.*こんち.*@ <eps>
    # suspend behaviors
    <eps> TIMER_CANCEL|behavior
    TIMER_EVENT_CANCELLED|behavior TIMER_START|behavior|20
    <eps> TIMER_CANCEL|blink
    # action
    <eps> MOTION_ADD|0|action|../../motions/action/mei/mei_greeting.vmd|PART|ONCE|ON|OFF
    MOTION_EVENT_ADD|0|action SYNTH_START|0|mei_voice_normal|こんにちは！
    SYNTH_EVENT_STOP|0 <eps>
    # resume behaviors
    <eps> TIMER_START|blink|6

WAIT WAIT:
    @RECOG\_EVENT\_STOP\|.*あなた.*@ <eps>
    +@RECOG\_EVENT\_STOP\|.*名前.*@ <eps>
    # suspend behaviors
    <eps> TIMER_CANCEL|behavior
    TIMER_EVENT_CANCELLED|behavior TIMER_START|behavior|20
    <eps> TIMER_CANCEL|blink
    # action
    <eps> MOTION_ADD|0|action|../../motions/action/mei/mei_self_introduction.vmd|PART|ONCE|ON|OFF
    MOTION_EVENT_ADD|0|action SYNTH_START|0|mei_voice_normal|僕は、${myname}っていうんだ。
    SYNTH_EVENT_STOP|0 MOTION_CHANGE|0|action|../../gene/motion/03_smile.vmd
    <eps> SYNTH_START|0|mei_voice_happy|よろしくね！
    SYNTH_EVENT_STOP|0 MOTION_DELETE|0|action
    # resume behaviors
    <eps> TIMER_START|blink|6

WAIT WAIT:
    @RECOG\_EVENT\_STOP\|.*ありがと.*@ <eps>
    # suspend behaviors
    <eps> TIMER_CANCEL|behavior
    TIMER_EVENT_CANCELLED|behavior TIMER_START|behavior|20
    <eps> TIMER_CANCEL|blink
    # action
    <eps> MOTION_ADD|0|action|../../gene/motion/03_smile.vmd|PART|ONCE|ON|OFF
    MOTION_EVENT_ADD|0|action SYNTH_START|0|mei_voice_happy|どういたしまして！お役に立てて嬉しいよ。
    SYNTH_EVENT_STOP|0 MOTION_DELETE|0|action
    MOTION_EVENT_DELETE|0|action <eps>
    # resume behaviors
    <eps> TIMER_START|blink|6

WAIT WAIT:
    @RECOG\_EVENT\_STOP\|.*さようなら.*@ <eps>
    +@RECOG\_EVENT\_STOP\|.*さよなら.*@ <eps>
    +@RECOG\_EVENT\_STOP\|.*ばいばい.*@ <eps>
    +@RECOG\_EVENT\_STOP\|.*バイバイ.*@ <eps>
    # suspend behaviors
    <eps> TIMER_CANCEL|behavior
    TIMER_EVENT_CANCELLED|behavior TIMER_START|behavior|20
    <eps> TIMER_CANCEL|blink
    # action
    <eps> MOTION_ADD|0|action|../../motions/action/wavehand.vmd|PART|ONCE|ON|OFF
    MOTION_EVENT_ADD|0|action SYNTH_START|0|mei_voice_happy|ありがとう。ばいばい！
    SYNTH_EVENT_STOP|0 <eps>
    # resume behaviors
    <eps> TIMER_START|blink|6
