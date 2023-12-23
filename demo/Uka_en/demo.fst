${myname}=Uka
${chara}=Uka

0 INIT1:
    <eps> STAGE|floor.png,back.png
    <eps> MODEL_ADD|0|../../uka/MS_Uka.pmd
    MODEL_EVENT_ADD|0  MOTION_ADD|0|base|../../motions/wait/01_Wait.vmd|FULL|LOOP|ON|OFF
    <eps> WINDOWFRAME|../../images/frame_trad.png

# initialization: INIT1 -> WAIT

INIT1 WAIT:
    <eps> CAMERA|0,17.75,0|4.5,0,0|22.4|27.0

## main loop: WAIT to WAIT
%INCLUDE(demo_qa.fst)
