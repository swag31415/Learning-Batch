@echo Off
color 02
Setlocal EnableDelayedExpansion
set alt=1
set lon=1
:begin
if %alt%==1 ( if !lon!==1 (set aa=0) else set aa=. ) else set aa=.
if %alt%==2 ( if !lon!==1 (set ba=0) else set ba=. ) else set ba=.
if %alt%==3 ( if !lon!==1 (set ca=0) else set ca=. ) else set ca=.
if %alt%==4 ( if !lon!==1 (set da=0) else set da=. ) else set da=.
if %alt%==5 ( if !lon!==1 (set ea=0) else set ea=. ) else set ea=.
if %alt%==1 ( if !lon!==2 (set ab=0) else set ab=. ) else set ab=.
if %alt%==2 ( if !lon!==2 (set bb=0) else set bb=. ) else set bb=.
if %alt%==3 ( if !lon!==2 (set cb=0) else set cb=. ) else set cb=.
if %alt%==4 ( if !lon!==2 (set db=0) else set db=. ) else set db=.
if %alt%==5 ( if !lon!==2 (set eb=0) else set eb=. ) else set eb=.
if %alt%==1 ( if !lon!==3 (set ac=0) else set ac=. ) else set ac=.
if %alt%==2 ( if !lon!==3 (set bc=0) else set bc=. ) else set bc=.
if %alt%==3 ( if !lon!==3 (set cc=0) else set cc=. ) else set cc=.
if %alt%==4 ( if !lon!==3 (set dc=0) else set dc=. ) else set dc=.
if %alt%==5 ( if !lon!==3 (set ec=0) else set ec=. ) else set ec=.
if %alt%==1 ( if !lon!==4 (set ad=0) else set ad=. ) else set ad=.
if %alt%==2 ( if !lon!==4 (set bd=0) else set bd=. ) else set bd=.
if %alt%==3 ( if !lon!==4 (set cd=0) else set cd=. ) else set cd=.
if %alt%==4 ( if !lon!==4 (set dd=0) else set dd=. ) else set dd=.
if %alt%==5 ( if !lon!==4 (set ed=0) else set ed=. ) else set ed=.
if %alt%==1 ( if !lon!==5 (set ae=0) else set ae=. ) else set ae=.
if %alt%==2 ( if !lon!==5 (set be=0) else set be=. ) else set be=.
if %alt%==3 ( if !lon!==5 (set ce=0) else set ce=. ) else set ce=.
if %alt%==4 ( if !lon!==5 (set de=0) else set de=. ) else set de=.
if %alt%==5 ( if !lon!==5 (set ee=0) else set ee=. ) else set ee=.
:grid
cls
echo !ea! !eb! !ec! !ed! !ee!
echo !da! !db! !dc! !dd! !de!
echo !ca! !cb! !cc! !cd! !ce!
echo !ba! !bb! !bc! !bd! !be!
echo !aa! !ab! !ac! !ad! !ae!
choice /c wsad /n
set move=%errorlevel%
if %move%==1 goto move1
if %move%==2 goto move2
if %move%==3 goto move3
if %move%==4 goto move4
goto begin
:move1
set /a ari=%alt%+1
set alt=%ari%
goto begin
:move2
set /a ari=%alt%-1
set alt=%ari%
goto begin
:move3
set /a lari=%lon%-1
set lon=%lari%
goto begin
:move4
set /a lari=%lon%+1
set lon=%lari%
goto begin