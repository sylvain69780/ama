if exist %1_10.log del  %1_10.log
if exist %1_09.log move %1_09.log %1_10.log
if exist %1_08.log move %1_08.log %1_09.log
if exist %1_07.log move %1_07.log %1_08.log
if exist %1_06.log move %1_06.log %1_07.log
if exist %1_05.log move %1_05.log %1_06.log
if exist %1_04.log move %1_04.log %1_05.log
if exist %1_03.log move %1_03.log %1_04.log
if exist %1_02.log move %1_02.log %1_03.log
if exist %1_01.log move %1_01.log %1_02.log
if exist %1.log move %1.log %1_01.log
