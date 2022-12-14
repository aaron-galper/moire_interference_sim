function grad_interference=get_interference_gradient(misorientation, lattice_spacing, x_o, y_o, X, Y)
    L_free=get_lattice_gradient(misorientation, lattice_spacing, x_o, y_o, X, Y);
    L_fixed=get_lattice_gradient(0,lattice_spacing, 0,0, X, Y);
    grad_interference=L_free+L_fixed;
end

function [L_x, L_y]=get_lattice_gradient(misorientation, lattice_spacing, x_o, y_o, X, Y)
    d=lattice_spacing;
    alpha=pi/3;
    beta=-pi/3;
    epsilon=0;
    L_x=pi/6*( ...
        cos(alpha+misorientation)*(cos(pi/d* ...
        (cos(alpha+misorientation)*(X-x_o)+sin(alpha+misorientation)*(Y-y_o)) ...
        ))+ ...
        cos(beta+misorientation)*cos(pi/d* ...
        (cos(beta+misorientation)*(X-x_o)+sin(beta+misorientation)*(Y-y_o)) ...
        )+ ...
        cos(epsilon+misorientation)*cos(pi/d* ...
        (cos(epsilon+misorientation)*(X-x_o)+sin(epsilon+misorientation)*(Y-y_o)) ...
        ));
    L_y=pi/6*( ...
        cos(alpha+misorientation)*(sin(pi/d* ...
        (cos(alpha+misorientation)*(X-x_o)+sin(alpha+misorientation)*(Y-y_o)) ...
        ))+ ...
        cos(beta+misorientation)*sin(pi/d* ...
        (cos(beta+misorientation)*(X-x_o)+sin(beta+misorientation)*(Y-y_o)) ...
        )+ ...
        cos(epsilon+misorientation)*sin(pi/d* ...
        (cos(epsilon+misorientation)*(X-x_o)+sin(epsilon+misorientation)*(Y-y_o)) ...
        ));
end