function translated=translate(X,Y,Z, x_o,y_o)
    translator=...
        [1 0 x_o;
         0 1 y_o;
         0 0 1];
    translated=translator*[X(:), Y(:), Z(:)];
end
