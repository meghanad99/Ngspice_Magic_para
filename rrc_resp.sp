*** RC circuit response ***
R1 in out 1k
R2 out gnd 1k
C1 out gnd .1n
 
Vpulse in gnd PULSE 0 5 0.5u 10n 10n 0.5u 1u

.tran 0.1u 3u
.control
run
plot v(in) v(out)

.endc
.end


