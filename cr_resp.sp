*** RC circuit response ***

C1 in out .1n
R1 out gnd 1k

Vpulse in gnd PULSE 0 5 0.5u 10n 10n 0.5u 1u

.tran 0.1u 3u
.control
run
plot v(in) v(out)

.endc
.end


