* VTC curve 

.lib /home/draju/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
.temp 27
.param wn=1u
.param wp=3*wn
.param lc=1u

*supply 
vsupply vd 0 dc 2.6
vin     in 0 dc 2.6

* Mosfet

mp1 out in vd vd scmosp w=wp l=lc m=1
mn1 out in 0  0  scmosn w=wn l=lc m=1


.dc vin 0 2.6 0.001
.control 
run 
set colour0=white
set colour1=black
set xbrushwidth=2
set xgridwidth=2
plot v(out) v(in)
.endc
.end

