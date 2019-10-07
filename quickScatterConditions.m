function quickScatterConditions(conds, varargin)
% Conds: a cell array of conditions
% To plot a scatter of the conditions with jitter

nconds = numel(conds);
% Parse input
if numel(varargin) == 0
    labels = 1:nconds;
else
    labels = varargin{1};
    assert(numel(conds) == numel(labels));
end

figure;
for i = 1:nconds
    cond = conds{i};
    plot(ones(1, numel(cond)) * i + rand(1, numel(cond)) * 0.1, cond, 'bo');
    hold on;
end

xticks(1:nconds)
xticklabels(labels)