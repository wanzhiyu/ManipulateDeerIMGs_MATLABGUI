function [] = grey_imgs_byGreyScale(Path_OriginImgs, Path_GreyedImgs, MinGreyScale, MaxGreyScale)
    MinGreyPercent = MinGreyScale / 255.0;
    MaxGreyPercent = MaxGreyScale / 255.0;
    grey_imgs_byPercent(Path_OriginImgs, Path_GreyedImgs, MinGreyPercent, MaxGreyPercent);
end

