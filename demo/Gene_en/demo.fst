${myname}=Gene
${chara}=Gene

0 INIT1:
    <eps> STAGE|floor.png,back.png
    <eps> MODEL_ADD|0|../../gene/Gene.pmd
    MODEL_EVENT_ADD|0  MOTION_ADD|0|base|../../motions/wait/01_Wait.vmd|FULL|LOOP|ON|OFF
    <eps> WINDOWFRAME|frame_green.png
#    <eps> MODEL_BINDFACE|0|メッシュなし|1
#    <eps> MODEL_BINDFACE|0|髪留なし|1
#    <eps> MODEL_BINDFACE|0|頬なし|1

# initialization: INIT1 -> WAIT

INIT1 WAIT:
    <eps> CAMERA|0,14.75,0|4.5,0,0|22.4|27.0

## main loop: WAIT to WAIT

%INCLUDE(demo_qa.fst)
