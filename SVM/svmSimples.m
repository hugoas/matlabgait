load GaPt03.csv
inds = ~strcmp(species,'1');
X = meas(inds,3:4);
y = species(inds);