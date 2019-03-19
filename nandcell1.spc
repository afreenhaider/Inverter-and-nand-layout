********************************************************************************
* SPICE netlist generated by HiPer Verify's NetList Extractor
*
* Extract Date/Time:	Tue Mar 19 10:36:03 2019
* L-Edit Version:		L-Edit Win64 16.01.20130408.01:22:50
*
* Rule Set Name:		
* TDB File Name:		C:\Users\Afreen\Desktop\layout\nand.tdb
* Command File:		C:\Users\Afreen\Documents\Tanner EDA\Tanner Tools v16.0\Process\Generic_250nm\Generic_250nm_Tech\TDB\Rules\Generic_250nm.ext
* Cell Name:			nandcell1
* Write Flat:			NO
********************************************************************************



****************************************

M1 1 2 gnd_ gnd_ NMOS25 l=3.25e-007 w=1.35e-006 ad=6.91875e-013 as=1.8225e-012 pd=2.375e-006 ps=5.4e-006  $ (31.3 19.2 31.625 20.55)
M2 out 3 1 gnd_ NMOS25 l=4.25e-007 w=1.35e-006 ad=2.7675e-012 as=6.91875e-013 pd=6.8e-006 ps=2.375e-006  $ (32.65 19.2 33.075 20.55)
M3 out 2 vdd vdd PMOS25 l=3.25e-007 w=7.5e-007 ad=3.84375e-013 as=6.1875e-013 pd=1.775e-006 ps=3.15e-006  $ (31.3 23.825 31.625 24.575)
M4 vdd 3 out vdd PMOS25 l=4.25e-007 w=7.5e-007 ad=1.25625e-012 as=3.84375e-013 pd=4.85e-006 ps=1.775e-006  $ (32.65 23.825 33.075 24.575)
* Top level device count
* M(NMOS25)		2
* M(PMOS25)		2
* Number of devices:	4
* Number of nodes:	6
.lib "C:\Users\Afreen\Documents\Tanner EDA\Tanner Tools v16.0\Process\Generic_250nm\Generic_250nm_Tech\Generic_250nm.lib" TT
vdd vdd gnd_ 1.8v
vina 2 gnd_  pulse(0 5 0 1n 1n 10n 22n)
vinb 3 gnd_  pulse(0 5 6n 1n 1n 10n 22n)
.tran 1n 100n
.print tran v(2) v(3) v(out)
.end