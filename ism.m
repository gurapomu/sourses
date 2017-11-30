clear all;,close all;
P = [
  1,0,0,1,1,0,0;
  0,1,1,0,0,0,0;
  0,0,1,0,0,0,0;
  0,1,0,1,0,0,0;
  0,0,1,0,1,0,0;
  0,1,0,0,0,1,0;
  1,0,0,0,0,0,1
];

PPP = P * P;
for i = 1 : length(P)
  for j = 1 : length(P)
    if PPP(i,j) >= 1
      PPP(i,j) = 1;
    end
  end
end

PP = P;
while ~isequal(PP, PPP)
  PP = PPP;
  PPP = PP * P;
  for i = 1 : length(P)
    for j = 1 : length(P)
      if PPP(i,j) >= 1
        PPP(i,j) = 1;
      end
    end
  end
endwhile

disp(PPP);
