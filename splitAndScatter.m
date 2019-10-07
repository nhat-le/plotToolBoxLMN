function splitAndScatter(data, conds)
% Split data according to conds, and plot a scatter

labels = unique(conds);
for i = 1:numel(labels);
    data_arr{i} = data(conds == labels(i));
end

quickScatterConditions(data_arr, labels);