clear all;
close all;
clc;

path = 'E:\MatLearn\新建文件夹\test';
contentInfo = dir(path);

%统计指定目录下有多少个非文件夹的文件
fileNum = 0;
for k = 1 : length(contentInfo)
    if strcmp(contentInfo(k).name,'.')||strcmp(contentInfo(k).name,'..')
        continue;
    else
        if contentInfo(k).isdir == 0
            fileNum = fileNum + 1;
        end
    end
end

%得到指定目录下非文件夹文件的文件名，不带后缀
fileName = cell(fileNum,1);
temp = 1;
for k = 1 : length(contentInfo)
    if contentInfo(k).isdir == 1
        continue;
    else
        fileName{temp} = contentInfo(k).name;
        Temp = fileName{temp,1};
        for m = 1 : length(Temp)
            if strcmp(Temp(m),'.')
                Temp(m:end) = [];
                fileName{temp} = Temp;
                temp = temp + 1;
                break;
            end
        end
    end
end

fprintf('There are %i files except folders in the directory.',fileNum);
fprintf('\nTheir names are as follows: ');
for k = 1 : length(fileName)
    fprintf('\n%s',fileName{k});
end
fprintf('\n');