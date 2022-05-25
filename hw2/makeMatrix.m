function matrix = makeMatrix(air)
ind12 = [1:4];
ind11 = [5:34];
ind10 = [35:65];
ind9 =[66:95];
ind8 = [96:126];
ind7 = [127:157];
ind6 = [158:187];
ind5 = [188:218];
ind4 = [219:248];
ind3 = [249:279];
ind2 = [280:307];
ind1 = [308:335];
matrix = [avgcal(air,ind1),avgcal(air,ind2), avgcal(air,ind3),avgcal(air,ind4), avgcal(air,ind5),avgcal(air,ind6),avgcal(air,ind7),avgcal(air,ind8),avgcal(air,ind9),avgcal(air,ind10), avgcal(air,ind11), avgcal(air,ind12)];
end