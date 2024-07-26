**** spice netlist id vs vds for par extraction.
.lib /home/draju/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib nom 


.temp 25
* gate voltage 
vgs g 0 dc=5.0
*mosfet model spec
m1 d g 0 0 scmosn w=0.6u l=0.4u m=1

vid out d dc=0
vds out 0 dc=5

*dc analysis
.dc vgs 0 1.8 0.001 vds 0.1 0.8  0.2
.control
run
plot vid#branch vs v(g)
.endc
.end
