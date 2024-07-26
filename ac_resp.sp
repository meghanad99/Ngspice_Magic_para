* freq. response of rc
r1 1 2 1k
c1 2 0 1u
vsup 1 0 dc=0v ac=1v
.ac dec 10 0.1 1meg
.control
run
plot vdb(2) vp(2)
.endc
.end
