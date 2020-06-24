function [MNormalized] = NormalizeMeanStd(M, mny, mxy)
    minM = min(M);
    maxM = max(M);
    nr   = size(M, 1);
    minM = repmat(minM, nr, 1);
    maxM = repmat(maxM, nr, 1);
    maxMminM = maxM - minM; I = maxMminM > 0; 
    maxYminY = mxy - mny;
    M     = (M - minM); 
    M(I) = M(I)./maxMminM(I);
    MNormalized = (maxYminY*M) + mny;
end

