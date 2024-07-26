* Exor gate netlsit
.lib /home/draju/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom

.temp 25

*Supply
Vsup vdd 0 dc 1.8
Vpulse  A 0 pulse 0 1.8 10n 10p 10p 5n 10n
Vpulse1  B 0 pulse 0 1.8 10n 10p 10p 10n 20n

*inverter input of A and B
mnp1 A_bar A vdd vdd scmosp w=1.6u l=0.4u m=1
mnn1 A_bar A 0 0 scmosn w=0.8u l=0.4u m=1

mnp2 B_bar B vdd vdd scmosp w=1.6u l=0.4u m=1
mnn2 B_bar B 0 0 scmosn w=0.8u l=0.4u m=1


*Mosfet netlsit

mp1 C A vdd vdd scmosp w=3u l=0.4u m=1
mp2 C B vdd vdd scmosp w=3u l=0.4u m=1
mp3 out A_bar C vdd scmosp w=3u l=0.4u m=1
mp4 out B_bar C vdd scmosp w=3u l=0.4u m=1

mn1 out A D 0 scmosn w=1u l=0.4u m=1
mn2 out A_bar E 0 scmosn w=1u l=0.4u m=1
mn3 D B 0 0 scmosn w=1u l=0.4u m=1
mn4 E  B_bar 0 0 scmosn w=1u l=0.4u m=1
.tran 5p 50n
.control
run
plot v(A) +2 v(B) +4 v(out) 
.endc
.end
