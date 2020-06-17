function COM=atia_centroid(V1)%
% this function take a matris V1 as input, find average for each column,
% and give you mean or center of mass
COM=zeros(1,size(V1,2));
for j=1:size(V1,2)
s1=0;
for i=1:size(V1,1)%20-7
    % s1=s1+ eval(sprintf('V1%d(i,1)',j));% adds up X value for all columns%p-V1
    % s1=s1+ eval(V1(sprintf('%d',i),j));
      s1=s1+ V1(i,j);
end
COM(1,j)=s1/size(V1,1);%20-7
end