function [] = jeu_de_la_vie(taille)

    game = remplir_aleatoire(taille);
    tps_pause = 0.001;

    while (1)
        % COPIE TEMPORAIRE DU TABLEAU POUR APPLIQUER LES MODIFICATIONS
        tmp = game;
        % AFFICHAGE
        spy(tmp);
        pause(tps_pause);
        
        % PARCOURS DU TABLEAU
        for i = 1:taille
            for j = 1:taille
                % SI 3 VOISINS VIVANTS => NAISSANCE
                if voisin(game,i,j,taille)== 3
                    tmp(i,j)= vivant();
                % SI VOISINS DIFFERENT DE 3 / 2 => MORT
                elseif voisin(game,i,j,taille)<= 1 || voisin(game,i,j,taille) > 3 
                    tmp(i,j)= mourrir();
                end
            end
        end
        % MISE A JOUR DU TABLEAU 
        game = tmp;
    end
    
end