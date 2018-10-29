function nb_voisin = voisin(game,i,j,taille)

    nb_voisin = 0;
    %%% * * *
    if (possible(i-1,j-1,taille) && game(i-1,j-1) == 1)
        nb_voisin = nb_voisin + 1;
    end
    
    if (possible(i-1,j,taille) && game(i-1,j) == 1)
        nb_voisin = nb_voisin + 1;
    end
    
    if (possible(i-1,j+1,taille) && game(i-1,j+1) == 1)
        nb_voisin = nb_voisin + 1;
    end
    %%% *  *
    if (possible(i,j-1,taille) && game(i,j-1) == 1)
        nb_voisin = nb_voisin + 1;
    end
    
    if (possible(i,j+1,taille) && game(i,j+1) == 1)
        nb_voisin = nb_voisin + 1;
    end
    %%% * * *
    if (possible(i+1,j-1,taille) && game(i+1,j-1) == 1)
        nb_voisin = nb_voisin + 1;
    end
    
    if (possible(i+1,j,taille) && game(i+1,j) == 1)
        nb_voisin = nb_voisin + 1;
    end
    
    if (possible(i+1,j+1,taille) && game(i+1,j+1) == 1)
        nb_voisin = nb_voisin + 1;
    end
end

% [i-1, j-1] [i-1, j] [i-1, j+1]
% [i  , j-1]          [i  , j+1]
% [i+1, j-1] [i+1, j] [i+1, j+1]