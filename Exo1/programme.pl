% % % % % % % % % % % % % % % % % % % % % % % % %
%
%   Indiquer les rôles (Nom/Prénom pour celui qui code et celui qui teste) 
%   et donner quelques informations sur votre travail (principe, validation, perspective, temps pris, etc.)
%
% % % Côté Code % % % % % % % % % % % % % % % % % %
%
%     QuiCode= KENGNI Cedrix
%     InfoCode= cas de base: plus(X,o,X) <=> X+o=X ; cas général: plus(X,Y,Z) <=> X+Y=Z => Z= X + (Y-1) + 1
%
% % % Côté Tests % % % % % % % % % % % % % % % % %
%
%     QuiTeste= CHEIKH Anis
%     InfoTests= cas de base: Test 0, 2 et 10; cas X+X: Test 1 et 4; cas X+Y = Y+X: Test 8 et 9
%
% % % Travail % % % % % % % % % % % % % % % %
%
% Programme à écrire (main) :
%   lire une requête "plus(X,Y,Z)." sur des nombres romains (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv)
%   exécuter la requête
%   afficher les résultats
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "plus" avec le profil attendu :
% plus(en entrée un nombre romain, en entrée un nombre romain, en sortie un nombre romain)
% le prédicat plus1 pour passer d'un nombre romain au suivant (+1) est donné en extension en listant l'ensemble des cas
% le prédicat plus ne doit pas être une relation en extension 
% le prédicat plus doit utiliser le prédicat plus1 et récursivement le prédicat plus en cours de rédaction
% % % % % % % % % % % % % % % % % % % % % % % % % 

plus1(o,i).
plus1(i,ii).
plus1(ii,iii).
plus1(iii,iv).
plus1(iv,v).
plus1(v,vi).
plus1(vi,vii).
plus1(vii,viii).
plus1(viii,ix).
plus1(ix,x).
plus1(x,xi).
plus1(xi,xii).
plus1(xii,xiii).
plus1(xiii,xiv).
plus1(xiv,xv).
plus1(xv,xvi).
plus1(xvi,xvii).
plus1(xvii,xviii).
plus1(xviii,xix).
plus1(xix,xx).
plus1(xx,xxi).
plus1(xxi,xxii).
plus1(xxii,xxiii).
plus1(xxiii,xxiv).
plus1(xxiv,xxv).

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
    plus(X,o,X).
    plus(X,Y,Z):-
        plus1(V,Y),
        plus(X,V,W),
        plus1(W,Z).

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

main :-
  writeln('Donner un premier nombre romain (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv) suivi d''un point.'),
  read(Entree1),
  writeln('Donner un second nombre romain (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv) suivi d''un point.'),
  read(Entree2),
  plus(Entree1,Entree2,Sortie),
  write('Résultat : '),
  writeln(Sortie).
  
:- main.