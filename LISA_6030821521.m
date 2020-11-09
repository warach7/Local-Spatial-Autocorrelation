clear
clc
format short g
% Contiguity Matrix
CM =[
    0 1 1 1 1
    1 0 1 0 1 
    1 1 0 1 0
    1 0 1 0 1 
    1 1 0 1 0
    ];

% Sum of Contiguity Matrix Rows
SCM = sum(CM,2);

% Row Standardized Spatial Weights Matrix
W = CM./SCM;

% Nawamin  = 5750
% Ladprao  = 18837
% Nuanchan = 7173
% Klongkum = 12865
% Klongjan = 14655
DATA = [5750
    18837
    7173
    12865
    14655];

% Z-Scores for a Population  https://www.mathworks.com/help/stats/zscore.html
Z = zscore(DATA,1);

% LISA
LISA_BP = Z.*(W*Z);