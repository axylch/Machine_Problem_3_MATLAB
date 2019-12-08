%Machine Problem 3 (Experimental Points)
%Defining the Function
function coefficients = MachineProblem3(matx)
for i = 1:length(matx)-1
    coefficients = polyfit(matx(:,1), matx(:,2), i);
    normy = norm((matx(:,2)) - polyval(coefficients, matx(:,1)));
    vec = [i,normy];
    if i == 1
        vec1 = vec;
    end
    if vec1(2) >= vec(2)
        vec2 = vec(1);
    end
end
 %Getting the best fit Values
coefficients = polyfit(matx(:,1), matx(:,2), vec2);
fprintf(' Coefficient 1: %f    Coefficient 2: %f     Coefficient 3: %f',coefficients)
end   