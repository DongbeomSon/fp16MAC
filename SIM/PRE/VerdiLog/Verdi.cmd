debImport "-ssf" "mul_A.fsdb"
debLoadSimResult \
           /home/lmj4666/workarea/capstone/lab4_front-end/SIM/PRE/mul_A.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiDockWidgetHide -dock widgetDock_WelcomePage
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 484871.227080
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_mul"
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_mul/CLK} \
{/tb_mul/RESETn} \
{/tb_mul/a\[3:0\]} \
{/tb_mul/b\[3:0\]} \
{/tb_mul/y\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_mul/CLK} \
{/tb_mul/RESETn} \
{/tb_mul/a\[3:0\]} \
{/tb_mul/b\[3:0\]} \
{/tb_mul/y\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvGetSignalClose -win $_nWave2
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoom -win $_nWave2 315094.358251 694934.132581
wvZoom -win $_nWave2 470459.005015 596893.683071
wvSetCursor -win $_nWave2 530912.257287 -snap {("G1" 1)}
wvZoom -win $_nWave2 523779.130176 543751.886089
wvZoom -win $_nWave2 526821.524588 534089.466796
debExit
