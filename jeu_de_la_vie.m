function jeu = jeu_de_la_vie

    jeu=1;
    taille = 10;
    game = remplir_aleatoire(taille);

    while (1)
        for i = 1:taille
            for j = 1:taille

                if voisin(game,i,j)== 2 && voisin(game,i,j)==3
                    game(i,j)= vivant();
                else
                    game(i,j)= mourrir();
                end

            end
        end
        spy(game);
    end
    
end