function [] = merge_groupimgs(SeparatedImgsFolderStruct, mergedimg_id, Path_MergedImgs, Resolution, Counted_Max_Members)
    Path_Group = fullfile(SeparatedImgsFolderStruct(mergedimg_id).folder, SeparatedImgsFolderStruct(mergedimg_id).name);
    GroupImgsContainer = dir(fullfile(Path_Group,"*.bmp"));
    MergedImgMatrix = zeros(Resolution);
    for i = 1 : length(GroupImgsContainer)
        temp_img_path = fullfile(GroupImgsContainer(i).folder, GroupImgsContainer(i).name);
        temp_img = imread(temp_img_path);
        column = i;
        for row = 1 : Resolution(1)
            while column <= Resolution(2)
                temp_GreyScale = double(temp_img(row, column));
                temp_GreyPercent = temp_GreyScale / 255.0;
                MergedImgMatrix(row, column) = temp_GreyPercent;
                
                column = column + Counted_Max_Members;                
            end
            column = column - Resolution(2);
        end
    end
    imwrite(MergedImgMatrix, fullfile(Path_MergedImgs, [SeparatedImgsFolderStruct(mergedimg_id).name, 'merged.bmp']));
end
