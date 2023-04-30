%Name:Junpeng Gai
%SID:40009896
first = [ 0.3 0.29 0.29 0.3 ];
second = [ 0.3 0.3 0.3 0.3 ];
if ( first == second )
    disp('Directly compare,equal')
else
    disp('Directly compare,not equal')
end

diff=first-second;

for index = diff%we should use index not diff
if ( abs(index) > 0.01 )
disp('Using abs(diff)>0.01,not equal')
end
end