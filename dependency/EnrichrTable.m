function out=EnrichrTable (enrichrResults)
%output of ml_Enrichr
n=nan(size(enrichrResults,1),1);% size of each result
for i=1:size(enrichrResults,1)
    n(i)=size(enrichrResults{i,1},1);
end

if max(n)==0% No significant 
Cols=enrichrResults{1,1}.Properties.VariableNames(1);
DATA=enrichrResults(:,2);

else
 ii=find(n>0);  %find the first one with all columns
Cols=enrichrResults{ii(1),1}.Properties.VariableNames;
idx=find(ismember(Cols,'OverlappingGenes'));% genes seperate
DATA={};
for i=1:numel(n)
data=table2cell(enrichrResults{i,1});
        if n(i)>0
            try
data(:,idx)=cellfun(@(x) strjoin(x,','),data(:,idx),'UniformOutput',false);
            catch
for j=1:size(data,1)
try  data(j,idx) =   {strjoin(data{j,idx},',')}; catch, end
end
            end
        end
DATA=[DATA;[enrichrResults{i,2},cell(1,numel(Cols)-1)];data];
end

end

out=cell2table(DATA,'VariableNames',Cols);