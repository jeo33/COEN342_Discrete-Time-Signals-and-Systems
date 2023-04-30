%Name:Junpeng Gai
%SID:40009896
clear
x = 0.1 + 0.1 + 0.1;
if ( x == 0.3)
 disp( 'directly compare, x is equal to 0.3')
else
 disp( 'directly compare, x is not equal to 0.3')
end


if ( abs( x - 0.3 ) <= 0.0001)
 disp( 'using abs(), x is equal to 0.3')
else
 disp( 'using abs(), x is not equal to 0.3')
end