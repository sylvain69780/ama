# ama
Application maintenance assistant, simple method to provide operators a graphical interface to your scripted procedures 

- Write your scripted procedure in the nANT build file http://nant.sourceforge.net including exec calls to your existing powershell, SQL etc
- Write configuration targets in the conf folder to be used for differents configuration (production, test, dev ...)
- Values for parameters can be suggested to the operator using special list-all-xxx targets.

- Run AMA.cmd to display configuration targets and action targets to the operators, including description for each of them.
The tool manage a simple log naming convention, traking who did what, and log file rotation and purging.
