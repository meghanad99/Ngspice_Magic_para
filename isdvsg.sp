**** spice netlist id vs vds for par extraction.
.lib /home/draju/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom
*.MODEL pmos1 PMOS (LEVEL=1 PHI=0.846 VT0=-0.514 KP=122U GAMMA=0.55 LAMBDA=0.0)

.temp 25
* gate voltage 
vsg s g dc=5.0
*mosfet model spec
m1 0 g s s scmosp w=0.6u l=0.4u m=1

vid out s dc=0
vsd out 0 dc=5

*dc analysis
.dc vsg 0 5 0.001 vsd 1 3 1
.control
run
plot vid#branch vs v(g)
.endc
.end
