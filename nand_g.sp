* Nand gate netlsit
.lib /home/draju/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom

.temp 25

*Supply
Vsup vdd 0 dc 1.8
Vpulse  A 0 pulse 0 1.8 10n 10p 10p 5n 10n
Vsup2 B 0  dc 1.8


*Mosfet netlsit

mp1 out A vdd vdd scmosp w=3u l=0.4u m=1
mp2 out B vdd vdd scmosp w=3u l=0.4u m=1

mn1 out A c 0 scmosn w=1u l=0.4u m=1
mn2 c  B 0 0 scmosn w=1u l=0.4u m=1

.tran 5p 50n
.control
run
plot v(A) +3 v(B) +4 v(out)
.endc
.end
