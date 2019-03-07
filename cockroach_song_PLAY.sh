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
TEMPO_BLANCA=2
TEMPO_NEGRA=1
TEMPO_CORCHEA=0.5

PACKAGE=apt

dpkg -s $PACKAGE  &> /dev/null

# Check if package 'sox' is installed
if [ $? -ne 0 ]; then
    echo -e '\n ---- PACKAGE $PACKAGE not installed ---- \n'
fi

PACKAGE=sox

dpkg -s $PACKAGE  &> /dev/null

# Check if package 'sox' is installed
if [ $? -ne 0 ]; then
    sudo apt-get install $PACKAGE &> /dev/null
fi

play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #La
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #cu
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #ca        
play -n -q synth $TEMPO_NEGRA   sine $FA  vol 0.5            #ra
play -n -q synth $TEMPO_CORCHEA sine $LA  vol 0.5            #cha,
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #la
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #cu
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #ca
play -n -q synth $TEMPO_NEGRA   sine $FA  vol 0.5            #ra
play -n -q synth $TEMPO_BLANCA  sine $LA  vol 0.5            #cha,
play -n -q synth $TEMPO_CORCHEA sine $FA  vol 0.5            #ya
play -n -q synth $TEMPO_CORCHEA sine $FA  vol 0.5            #no
play -n -q synth $TEMPO_CORCHEA sine $MI  vol 0.5            #pue
play -n -q synth $TEMPO_CORCHEA sine $MI  vol 0.5            #de
play -n -q synth $TEMPO_CORCHEA sine $RE  vol 0.5            #ca
play -n -q synth $TEMPO_CORCHEA sine $RE  vol 0.5            #mi

play -n -q synth $TEMPO_NEGRA   sine $DO  vol 0.5            #nar.
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #por
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #que
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #no
play -n -q synth $TEMPO_CORCHEA sine $MI  vol 0.5            #tie
play -n -q synth $TEMPO_CORCHEA sine $SOL vol 0.5            #ne,
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #por
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #que
play -n -q synth $TEMPO_CORCHEA sine $DO  vol 0.5            #le
play -n -q synth $TEMPO_CORCHEA sine $MI  vol 0.5            #fal
play -n -q synth $TEMPO_CORCHEA sine $SOL vol 0.5            #ta,
play -n -q synth $TEMPO_CORCHEA sine $DO_SOST  vol 0.5       #las
play -n -q synth $TEMPO_CORCHEA sine $RE_SOST  vol 0.5       #dos
play -n -q synth $TEMPO_CORCHEA sine $DO_SOST  vol 0.5       #pa
play -n -q synth $TEMPO_CORCHEA sine $LA_SOST  vol 0.5       #ti
play -n -q synth $TEMPO_CORCHEA sine $LA  vol 0.5            #tas
play -n -q synth $TEMPO_CORCHEA sine $SOL  vol 0.5           #de_a

play -n -q synth $TEMPO_CORCHEA sine $FA vol 0.5             #trás.

