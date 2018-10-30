function jeu = jeu_de_la_vie

    jeu=1;
    taille = 100;
    game = remplir_aleatoire(taille);
    tps_pause = 0.001;

    while (1)
        copy = game;
        spy(copy);
        pause(tps_pause);
        for i = 1:taille
            for j = 1:taille

                if voisin(game,i,j,taille)== 3
                    copy(i,j)= vivant();
                elseif voisin(game,i,j,taille)<= 1 || voisin(game,i,j,taille) > 3 
                    copy(i,j)= mourrir();
                end

            end
        end
        game = copy;
    end
    
end