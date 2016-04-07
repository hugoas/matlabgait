%% Import data from text file.
% Script for importing data from the following text file:
%
%    C:\Users\Hugo Souza\Documents\MATLAB\GaPt04_01.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2015/07/18 23:20:59

%% Initialize variables.
filename = 'C:\Users\Hugo Souza\Documents\MATLAB\GaPt04_01.csv';
delimiter = ';';

%% Format string for each line of text:
%   column18: double (%f)
%	column19: double (%f)
%   column20: text (%s)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%*s%*s%*s%*s%*s%*s%*s%*s%*s%*s%*s%*s%*s%*s%*s%*s%*s%f%f%s%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Create output variable
GaPt0401 = table(dataArray{1:100}, 'VariableNames', {'VarName18','VarName19','Parkinson'});

%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;