% Define facts representing initial information
connected(battery, cable).
connected(cable, ignition).
connected(ignition, engine).

% Define rules for inferring new information
connected(X, Y) :-
    connected(X, Z),
    connected(Z, Y).

% Query to perform forward chaining
forward_chaining(X, Y) :-
    connected(X, Y).