clear all; clc; close all;
 
numCycles = 60; % number of cycles
scaledLength = 80; % length all czcles will be scaled to

%Get data from file
dirnormalfiles = 'normal';
dirparkinsonfiles = 'parkinson';
normalfiles = dir(strcat(dirnormalfiles,'/*.txt'));
parkinsonfiles = dir(strcat(dirparkinsonfiles,'/*.txt'));
 
 % import and prepare trainig data
% This files is to create the database
if exist('GaitDataBase.mat')==false
    TMeanGaitH = CreateDatabaseMeanGait(dirnormalfiles,numCycles, scaledLength);
    TMeanGaitP = CreateDatabaseMeanGait(dirparkinsonfiles,numCycles, scaledLength);
    TMeanGaitAll = [TMeanGaitH, TMeanGaitP];
    TMeanGaitAll(isnan(TMeanGaitAll)) = 0;
    save('GaitDataBase.mat', 'TMeanGaitH', 'TMeanGaitP', 'TMeanGaitAll');
else
    load GaitDataBase.mat    
end


