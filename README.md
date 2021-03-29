# ama
AMA.HTA, an Application Maintenance Assistant, simple method to provide your operators a graphical interface to your scripted procedures.
It is using HTA : https://en.wikipedia.org/wiki/HTML_Application

- Embed your scripted procedure in target elements in the nANT build file http://nant.sourceforge.net including exec calls to your existing powershell, SQL etc.
- Write configuration targets in the conf folder to be used for differents configuration (production, test, dev ...)
- Values for parameters can be suggested to the operator using special list-all-xxx targets.

- AMA.hta displays configuration targets and action targets to the operators, including description for each of them. Only targets with descriptions are displayed, that's way you can create hidden targets.
- The tool is fool proof, showing the command and asking confirmation to the operator each time he click on the "run" button.
- The tool manage a simple log file naming convention and rotation, the log files includes the name of the operator executing the action.

TIP : the HTA runtime mshta.exe runs by default in 32bit mode, in some situation you may have to import the hta_64bit.reg file to make it run in 64 bit mode.

Important : you need to get nAnt and put binaries in the nant-0.92 folder to make it work.

![alt text](https://github.com/sylvain69780/ama/blob/8d220dad59d87afc73fbf1bedd204f69a3ba8a9e/AMA.png "AMA user interface")
