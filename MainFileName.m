clear all;
close all;
clc;

path = 'E:\MatLearn\�½��ļ���\test';
contentInfo = dir(path);

%ͳ��ָ��Ŀ¼���ж��ٸ����ļ��е��ļ�
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

%�õ�ָ��Ŀ¼�·��ļ����ļ����ļ�����������׺
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