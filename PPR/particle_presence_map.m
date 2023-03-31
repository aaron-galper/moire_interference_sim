function PPR=particle_presence_map(R, d)
    theta_bar=zeros(size(d));

    ind1=mod(d, 2*R)>R;
    theta_bar(ind1)=acos(mod(-d(ind1), R)/R);

    ind2=mod(d, 2*R)<=R;
    theta_bar(ind2)=acos(mod(d(ind2), R)/R);

    PPR=2*R*sin(theta_bar);

end