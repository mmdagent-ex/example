#
# Question and Answers
#

WAIT WAIT:
    @RECOG\_EVENT\_STOP\|.*hello*@ <eps>
    # suspend behaviors
    <eps> TIMER_CANCEL|behavior
    TIMER_EVENT_CANCELLED|behavior TIMER_START|behavior|20
    <eps> TIMER_CANCEL|blink
    # action
    <eps> MOTION_ADD|0|action|../../motions/action/mei/mei_greeting.vmd|PART|ONCE|ON|OFF
    MOTION_EVENT_ADD|0|action SYNTH_START|0|slt_voice_normal|"Hello, who are you today?"
    SYNTH_EVENT_STOP|0 <eps>
    # resume behaviors
    <eps> TIMER_START|blink|6

WAIT WAIT:
    @RECOG\_EVENT\_STOP\|.*name.*@ <eps>
    +@RECOG\_EVENT\_STOP\|.*who.*@ <eps>
    # suspend behaviors
    <eps> TIMER_CANCEL|behavior
    TIMER_EVENT_CANCELLED|behavior TIMER_START|behavior|20
    <eps> TIMER_CANCEL|blink
    # action
    <eps> MOTION_ADD|0|action|../../motions/action/mei/mei_self_introduction.vmd|PART|ONCE|ON|OFF
    MOTION_EVENT_ADD|0|action SYNTH_START|0|slt_voice_normal|"My name is ${myname}."
    SYNTH_EVENT_STOP|0 MOTION_CHANGE|0|action|../../gene/motion/03_smile.vmd
    <eps> SYNTH_START|0|slt_voice_normal|"Nice to meet you!"
    SYNTH_EVENT_STOP|0 MOTION_DELETE|0|action
    # resume behaviors
    <eps> TIMER_START|blink|6

WAIT WAIT:
    @RECOG\_EVENT\_STOP\|.*thank.*@ <eps>
    # suspend behaviors
    <eps> TIMER_CANCEL|behavior
    TIMER_EVENT_CANCELLED|behavior TIMER_START|behavior|20
    <eps> TIMER_CANCEL|blink
    # action
    <eps> MOTION_ADD|0|action|../../gene/motion/03_smile.vmd|PART|ONCE|ON|OFF
    MOTION_EVENT_ADD|0|action SYNTH_START|0|slt_voice_normal|"You are welcome, I'm glad I could help."
    SYNTH_EVENT_STOP|0 MOTION_DELETE|0|action
    MOTION_EVENT_DELETE|0|action <eps>
    # resume behaviors
    <eps> TIMER_START|blink|6

WAIT WAIT:
    @RECOG\_EVENT\_STOP\|.*bye.*@ <eps>
    # suspend behaviors
    <eps> TIMER_CANCEL|behavior
    TIMER_EVENT_CANCELLED|behavior TIMER_START|behavior|20
    <eps> TIMER_CANCEL|blink
    # action
    <eps> MOTION_ADD|0|action|../../motions/action/wavehand.vmd|PART|ONCE|ON|OFF
    MOTION_EVENT_ADD|0|action SYNTH_START|0|slt_voice_normal|"Thank you. Please talk to me again!"
    SYNTH_EVENT_STOP|0 <eps>
    # resume behaviors
    <eps> TIMER_START|blink|6

