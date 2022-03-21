model lab07
    parameter Real N=963; // максимальное количество людей, которых может заинтересовать товар
    parameter Real n0=12; // количество людей, знающих о товаре в начальный момент времени
    Real n(start=n0);
    function k
      input Real t;
      output Real res;
    algorithm
      res := 0.68; //1 случай
      //res := 0.00001; //2 случай
      //res := 0.51*sin(5*t); //3 случай
      //res := 0; //только платная реклама
    end k;

    function p
      input Real t;
      output Real res;
    algorithm
      res := 0.00018; //1 случай
      //res := 0.35; //2 случай
      //res := 0.31*cos(3*t); //3 случай
      //res := 0; //только сарафанное радио
    end p;
  equation
    der(n)=(k(time) + p(time)*n)*(N-n); 
  end lab07;