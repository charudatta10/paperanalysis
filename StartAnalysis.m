function StartAnalysis()
% Copyright 2015 The MathWorks Inc.

% thedir = '\\mathworks\marketing\Education\SharePoint_Big\ConferenceProceedings\SEFI2015\papers';
% thedir = 'h:\Documents\MATLAB\paperanalysis\SEFI_2015';
thedir = fullfile(pwd, 'papers');
testfiles = dir(strcat(thedir,'\','*.doc*'));
testfiles = [testfiles; dir(strcat(thedir,'\','*.pdf'))];
testfiles = {testfiles.name};
testfiles = {testfiles{3:end}}';
testfiles = strcat(thedir, '\', testfiles);


docParser = ParseFiles(testfiles, 'SEFI_2015');
docParser.parse();
% save docParser;
% WordCloudEditor('parser', docParser);
% generateSemanticSurface(docParser, 100);
    
end

