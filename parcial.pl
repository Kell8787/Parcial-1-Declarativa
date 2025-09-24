%Personajes -> personaje().
personaje(shrek).
personaje(lord_farquaad).
personaje(burro).
personaje(fiona).
personaje(dragon).
personaje(criatura).

%Lugar donde viven -> vive_en().
vive_en(shrek, pantano).
vive_en(lord_farquaad, reino).
vive_en(criatura, pantano).
vive_en(burro, pantano).
vive_en(fiona, pantano).
vive_en(dragon, castillo).

%Relaciones -> amigo().
amigo(burro, shrek).
amigo(shrek, burro).
rescata(shrek, fiona).
rescata(burro, fiona).

%Desea().
desea(shrek, paz).
desea(lord_farquaad, reino).
desea(lord_farquaad, fiona).

%Tranformacion
transforma_en(fiona, ogro).

%Atributos
valiente(shrek).
valiente(burro).
feroz(dragon).

%REGLAS

%Regla 1:
es_amigo(X) :- amigo(shrek, X).

%Regla 2:
es_valiente(X) :- valiente(X).


%Consultas:
%Primera Consulta:
%   3 ?- vive_en(X, pantano).
%   LE DIMOS TAB :D
%   X = shrek ;
%   X = criatura ;
%   X = burro ;
%   X = fiona.

%Segunda Consulta en base a la regla 1:
%   1 ?- es_amigo(fiona).
%   false.

%   2 ?- es_amigo(burro).
%   true.

%Tercera Consulta:
%   1 ?- desea(lord_farquaad, fiona).
%   true.

%Cuarta Consulta:
%   1 ?- rescata(shrek, X).
%   X = fiona.

%Quinta Consulta:
%   1 ?- transforma_en(X, ogro).
%   X = fiona.

%Sexta Consulta en base a la regla 2:
%   1 ?- es_valiente(X).
%   X = shrek ;
%   X = burro.

%Septima Consulta:
%   2 ?- feroz(X).
%   X = dragon.

%Octava Consulta:
%   1 ?- vive_en(X,pantano) , X \= shrek , X \= burro , X \= fiona !.
%   X = criatura ;
%   false.