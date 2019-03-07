#!/bin/bash

# Musical Notes variables
DO=261.625565
RE=293.664768
MI=329.627557
FA=349.228231
SOL=391.995436
LA=440.000000
SI=493.883301
DO_SOST=277.18
RE_SOST=311.13
LA_SOST=466.16

# Time variables
TEMPO_BLANCA=600
TEMPO_NEGRA=300
TEMPO_CORCHEA=150
      
#En clave de DO

    beep -f $DO -l $TEMPO_CORCHEA -n \
    -f $DO -l $TEMPO_NEGRA -n \
    -f $DO -l $TEMPO_CORCHEA -n \
    -f $FA -l $TEMPO_CORCHEA -n \
    -f $LA -l $TEMPO_CORCHEA -n \
    -f $DO -l $TEMPO_CORCHEA -n \
    -f $DO -l $TEMPO_CORCHEA -n \
    -f $DO -l $TEMPO_CORCHEA -n \
    -f $FA -l $TEMPO_NEGRA -n \
    -f $LA -l $TEMPO_BLANCA -n \
    -f $FA -l $TEMPO_CORCHEA -n \
    -f $FA -l $TEMPO_CORCHEA -n \
    -f $MI -l $TEMPO_CORCHEA -n \
    -f $MI -l $TEMPO_CORCHEA -n \
    -f $RE -l $TEMPO_CORCHEA -n \
    -f $RE -l $TEMPO_CORCHEA -n \
    -f $DO -l $TEMPO_NEGRA -n \
    -f $DO -l $TEMPO_CORCHEA -n \
    -f $DO -l $TEMPO_CORCHEA -n \
    -f $DO -l $TEMPO_CORCHEA -n \
    -f $MI -l $TEMPO_CORCHEA -n \
    -f $SOL -l $TEMPO_BLANCA -n \
    -f $DO -l $TEMPO_CORCHEA -n \
    -f $DO -l $TEMPO_CORCHEA -n \
    -f $DO -l $TEMPO_CORCHEA -n \
    -f $MI -l $TEMPO_CORCHEA -n \
    -f $SOL -l $TEMPO_CORCHEA -n \
    -f $DO_SOST -l $TEMPO_CORCHEA -n \
    -f $RE_SOST -l $TEMPO_CORCHEA -n \
    -f $DO_SOST -l $TEMPO_CORCHEA -n \
    -f $LA_SOST -l $TEMPO_CORCHEA -n \
    -f $LA -l $TEMPO_CORCHEA -n \
    -f $SOL -l $TEMPO_CORCHEA -n \
    -f $FA -l $TEMPO_BLANCA
