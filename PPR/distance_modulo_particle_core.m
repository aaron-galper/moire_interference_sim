% function bar_d=distance_modulo_particle_core(R, X,Y)
% 
%     points = [X(:).'; Y(:).'];
%     points=[1        1/2;
%             0       3/sqrt(2)]*points;
% 
%     
%     d=vecnorm(mod(points, 2*R), 2,1);
%     bar_d=zeros(size(d));
%     disp('size(d)')
%     disp(size(d));
% 
%     bar_d(d>=R)=mod(-d(d>=R), R);
%     bar_d(d<R)=mod(d(d<R), R);
% 
% end

function [bar_a, bar_b]=distance_modulo_particle_core(R, X,Y)
    points = [X(:).'; Y(:).'];
%     points=[1   1/2;
%             0   3/sqrt(2)]*points;
    a=points(1, :);
    b=points(2, :);

    bar_a=zeros(size(a));
    ind1a=(mod(a, 2*R)>=R); %in first half 
    ind2a=(mod(a, 2*R)<R); %in second half

    bar_a(ind1a)=mod(-a(ind1a),R);
    bar_a(ind2a)=mod(a(ind2a),R);

    bar_b=zeros(size(b));
    ind1b=(mod(b, 2*R)>=R);
    ind2b=(mod(b, 2*R)<R);

    bar_b(ind1b)=mod(-b(ind1b),R);
    bar_b(ind2b)=mod(b(ind2b),R);

%     disp(bar_b)
end

