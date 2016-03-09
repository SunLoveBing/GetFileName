clear all;
close all;
clc;

path = 'E:\MatLearn\新建文件夹\test';
contentInfo = dir(path);
fileNum = 0;
for k = 1 : length(contentInfo)
    if strcmp(contentInfo(k).name,'.')||strcmp(contentInfo(k).name,'..')
        continue;
    else
        fileNum = fileNum + 1;
    end
end

fileName = cell(fileNum,1);
for k = 1 : fileNum
    fileName{k} = contentInfo(k+2).name;
    Temp = fileName{k,1};
    for m = 1 : length(Temp)
        if strcmp(Temp(m),'.')
            Temp(m:end) = [];
            fileName{k} = Temp;
            break;
        end
    end
end