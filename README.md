# ama
AMA.HTA, an Application maintenance assistant, simple method to provide operators a graphical interface to your scripted procedures 

- Embed your scripted procedure in target elements in the nANT build file http://nant.sourceforge.net including exec calls to your existing powershell, SQL etc.
- Write configuration targets in the conf folder to be used for differents configuration (production, test, dev ...)
- Values for parameters can be suggested to the operator using special list-all-xxx targets.

- AMA.hta to display configuration targets and action targets to the operators, including description for each of them.
- The tool is fool proof, showing the command and asking confirmation to the operator each time he click on the "run" button.
- The tool manage a simple log naming convention, traking who did what, and log file rotation and purging.

TIP : the HTA runtime mshta.exe runs by default in 32bit mode, in some situation you may have to import the hta_64bit.reg file to make it run in 64 bit mode.
