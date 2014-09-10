function cloud = WordCloudMaker
% cla reset
clear variables
% clear classes

load sefiData

nclusts = 8;
rng('shuffle');
tree = linkage(correlationMatrix, 'average');
clusterGroups = cluster(tree, 'maxclust', nclusts);
% c = hist(clusterGroups, nclusts)
cloud = WordCloud(words, wordFreq, correlationMatrix, clusterGroups);
% cloud = cloud.rescaleText(4.5);
% cloud.rescaleClusterSeparation(0.2);

addMWLogo;

set(gcf, 'papertype', 'A0', 'renderer', 'painters', 'paperpositionmode', 'auto', 'InvertHardcopy', 'off');
% print -dpng -r600 -noui 75WordsCloud

end