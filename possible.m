function res = possible(i,j,taille)
    % TEST SI LA CASE EST DANS LE JEU
    if i>0 && i<taille+1 && j>0 && j<taille+1
        res = true;
    else
        res = false;
    end
end