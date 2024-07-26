**** spice netlist id vs vds for par extraction.
*.lib /home/draju/cad/eda-technology/sky130/models/spice/models/sky130.lib.spice tt
.lib /home/draju/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
*.MODEL nmos1 NMOS (LEVEL=1 PHI=0.846 VT0=0.514 KP=122U GAMMA=0.55 LAMBDA=0.0)

.temp 25
* gate voltage 
vgs g 0 dc=5.0
*mosfet model spec
m1 d g 0 0 scmosn w=0.6u l=0.4u m=1

vid out d dc=0
vds out 0 dc=5

*dc analysis
.dc vds 0 10 0.001 vgs 0 3 1
.control
run
plot vid#branch vs v(d)
.endc
.end
