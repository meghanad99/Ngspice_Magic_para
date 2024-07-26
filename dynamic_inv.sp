* Dynamic curve 

.lib /home/draju/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib ff
.temp -40
.global vdd gnd
.param wn=1u
.param wp=3*wn

*supply 
vsup vdd gnd dc 2.5
vin  in gnd  pulse 0 2.5 10n 10p 10p 5n 10n

* Mosfet

mp1 out in vdd vdd scmosp w=wp l=0.4u m=1
mn1 out in gnd gnd scmosn w=wn l=0.4u m=1

*fanout gate 
* mp2 out1 out vdd vdd scmosp w=2.4u l=0.4u m=1
* mn2 out1 out gnd gnd scmosn w=2.4u l=0.4u m=1

*transient analysis
.Tran 5p 50n

.control 
run
plot v(in) +4 v(out)
.endc

*measure statement 
.measure tran tdiff TRIG v(in) val=1.25 fall=1 TARG v(out) val=1.25 rise=1 //TPLH
.measure tran tdiff TRIG v(in) val=1.25 rise=1 TARG v(out) val=1.25 fall=1 //TPHL 
.measure tran tdiff TRIG v(out) val=0.25 rise=2 TARG v(out) val=2.25 rise=2         //T-rise
.measure tran tdiff TRIG v(out) val=2.25 fall=2 TARG v(out) val=0.25 fall=2         //T-fall
.end

