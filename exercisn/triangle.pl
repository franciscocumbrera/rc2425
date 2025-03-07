/*

triangle(A, B, C, R).
  es cierto si R unifica con "equilateral" y A, B, C, corresponde a la longitud de un triangulo equilatero.
  es cierto si R unifica con "isosceles" y A, B, C, corresponde a la longitud de un triangulo isosceles.
  es cierto si R unifica con "scalene" y A, B, C, corresponde a la longitud de un triangulo escaleno.

  Let a, b, and c be sides of the triangle. Then all three of the following expressions must be true:
  a + b ≥ c
  b + c ≥ a
  a + c ≥ b
*/
/*
triangle (A, B, C)
  es cierto si A, B y C corresponde a las longitudes de los lados de un triangulo.
*/

comprobación_triangle(A, B, C):- S1 is A + B, S1 >= C, S2 is B + C, S2 >= A, S3 is A + C, S3 >= B, A > 0, B > 0, C > 0.

triangle(A, B, C, T):- comprobación_triangle(A,B,C), triangle_Aux(A,B,C,T).

triangle_Aux(A, B, C, "equilateral"):- A = B, B = C.
triangle_Aux(A,B,C, "isosceles"):-  A=B.
triangle_Aux(A,B,C, "isosceles"):-  A=C.
triangle_Aux(A,B,C, "isosceles"):-  B=C.
triangle_Aux(A,B,C, "scalene"):-  A \= B , B\= C , A \= C.
