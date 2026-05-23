%[fList, pList] = matlab.codetools.requiredFilesAndProducts('ClusToRa_GUI.mlapp');
% Get folder where startup.m lives
rootFolder = fileparts(mfilename('fullpath'));

% Add all subfolders
addpath(genpath(rootFolder));

%Start ClusToRa
ClusToRa_GUI