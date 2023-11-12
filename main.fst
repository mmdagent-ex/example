0 LOOP:
    <eps> STAGE|images/floor_green.png,images/back_white.png
    <eps> MODEL_ADD|0|gene/Gene.pmd
    MODEL_EVENT_ADD|0  MOTION_ADD|0|base|motions/wait/01_Wait.vmd|FULL|LOOP|ON|OFF
    <eps> CAMERA|0,15.25,0|4.5,0,0|22.4|27.0

LOOP LOOP:
    KEY|1 SYNTH_START|0|mei_voice_normal|こんにちは！よろしくね！
