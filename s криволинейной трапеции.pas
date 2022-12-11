uses crt;
function f(x:real):real;
begin
  f:=power(x,3)+(-2)*power(x,2)+(-5)*x+(8);
end;
function per(x:real):real;
  begin
  per:=(power(x,4))/4-2*(power(x,3))/3-5*((power(x,2))/2)+8*x;
  end;
  procedure horoh;
  begin
  print('введите верхний предел:');
  var a:=ReadInteger;
  print('введите нижний предел:');
  var b:=ReadInteger;
  print('введите количество разбиений:');
  var n:=ReadInteger;
  var h:=(b-a)/n;
  var s:=(f(a)+f(b))/2;
  var x:=a+h;
  for var i:=1 to n-1 do
    begin
    s:=s+f(x);
    x:=x+h;
    s:=s*h;
    end;
  var p:=per(b)-per(a);
  var d:=abs(p-s);
  println('точное значение:',p);
  println('приближенное значение:',s); 
  println('погрешность метода',d);
    end;
  var t:integer;
  begin
    repeat
      println;
      println('Выберите то,что вам необходимо:');
      println('1-функция');
      println('2-производная функции');
      println('3-нахождение площади');
      println('0-выйти из программы');
      readln(t);
      case t of
        1:println('Функция:power(x,3)+(-2)*power(x,2)+(-5)*x+(8)');
        2:println('Производная функции:(power(x,4))/4-2*(power(x,3))/3-5*((power(x,2))/2)+8*x');
        3:horoh;
        0:halt
      end;
    until t=4;
end.
