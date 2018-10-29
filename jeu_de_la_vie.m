function jeu = jeu_de_la_vie

    jeu=1;
    taille = 10;
    game = remplir_aleatoire(taille);
%         game = zeros(taille);
%         game(5,5)= 1;
%         game(5,6)= 1;
%         game(5,7)= 1;
    tps_pause = 2;

    while (1)
        spy(game);
        pause(tps_pause);
        for i = 1:taille
            for j = 1:taille

                if voisin(game,i,j,taille)== 2 || voisin(game,i,j,taille)== 3
                    game(i,j)= vivant();
                else
                    game(i,j)= mourrir();
                end

            end
        end
    end
    
end