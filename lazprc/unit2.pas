unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, unit6;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);

  private

  public

  end;

var
  Form2: TForm2;
  liczba1Str: string='0';
  liczba1: Double=0;
  liczba2Str: string='0';
  liczba2: Double=0;
  wynikStr: string;
  wynik: Double=0;
  a: integer;
  b: integer;
  obliczenia2:TStringList;
  obliczenia2lenght: integer;


implementation
uses unit3,unit7;
{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  if (liczba1Str='0')then
    liczba1Str:='0'
    else
    begin
    liczba1Str:= liczba1Str+'0'
    end;
    Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button20Click(Sender: TObject);
begin
  liczba1Str:='0';
  liczba1:=0;
  liczba2Str:='';
  liczba2:=0;
  wynikStr:='';
  wynik:=0;
  Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button10Click(Sender: TObject);
begin
  if (liczba1Str='0')then
    liczba1Str:='5'
    else
    begin
    liczba1Str:= liczba1Str+'5'
    end;
  Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
  if (liczba1Str='0')then
    liczba1Str:='6'
    else
    begin
    liczba1Str:= liczba1Str+'6'
    end;
  Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button13Click(Sender: TObject);
begin
  if (liczba1Str='0')then
    liczba1Str:='7'
    else
    begin
    liczba1Str:= liczba1Str+'7'
    end;
  Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button14Click(Sender: TObject);
begin
  if (liczba1Str='0')then
    liczba1Str:='8'
    else
    begin
    liczba1Str:= liczba1Str+'8'
    end;
  Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button15Click(Sender: TObject);
begin
  if (liczba1Str='0')then
    liczba1Str:='9'
    else
    begin
    liczba1Str:= liczba1Str+'9'
    end;
  Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
     liczba1Str:= liczba1Str+',';
     Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
     obliczenia2.add(liczba1Str);
     a:=0;
     while a<obliczenia2lenght do
       begin
       if(a=0) then
            begin
            liczba1Str:=obliczenia2[a];
            wynik:=StrToFloat(liczba1Str);
            end
          else
          begin
          b:=a+1;
          liczba2Str:=obliczenia2[b];
          liczba2:=StrToFloat(liczba2Str);
            case(obliczenia2[a]) of
              '+' : wynik:=wynik+liczba2;
              '-' : wynik:=wynik-liczba2;
              '*' : wynik:=wynik*liczba2;
              '/' :
                if(liczba2=0) then
                     begin
                     wynik:=0;
                     Form6.ShowModal;
                     end
                else
                    wynik:=wynik/liczba2

            end;
            a:=a+1;
          end;
        a:=a+1;
      end;
     liczba1Str:='';
     liczba1:=0;
     liczba2Str:='';
     liczba2:=0;
     obliczenia2.clear;
     obliczenia2lenght:=0;
     wynikStr:=FloatToStr(wynik);
     Label1.Caption:=wynikStr;
     liczba1Str:=wynikStr;
end;


procedure TForm2.Button4Click(Sender: TObject);
begin
  if (liczba1Str='0')then
    liczba1Str:='1'
    else
    begin
    liczba1Str:= liczba1Str+'1'
    end;
  Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  if (liczba1Str='0')then
    liczba1Str:='2'
    else
    begin
    liczba1Str:= liczba1Str+'2'
    end;
  Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  if (liczba1Str='0')then
    liczba1Str:='3'
    else
    begin
    liczba1Str:= liczba1Str+'3'
    end;
  Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
  if (liczba1Str='0')then
    liczba1Str:='4'
    else
    begin
    liczba1Str:= liczba1Str+'4'
    end;
  Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
     if(liczba1Str='')then
     begin
       Label1.Caption:='+';
       obliczenia2[obliczenia2.count-1]:='+';
     end
     else
     begin
         obliczenia2.add(liczba1Str);
         obliczenia2.add('+');
         obliczenia2lenght:=obliczenia2lenght+2;
         Label1.Caption:='+';
         Liczba1Str:='';
     end;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
  if(liczba1Str='')then
       begin
       Label1.Caption:='-';
       obliczenia2[obliczenia2.count-1]:='-';
       end
     else
     begin
     obliczenia2.add(liczba1Str);
     obliczenia2.add('-');
     obliczenia2lenght:=obliczenia2lenght+2;
     Label1.Caption:='-';
     Liczba1Str:='';
     end;
end;

procedure TForm2.Button12Click(Sender: TObject);
begin
  if(liczba1Str='')then
     begin
       Label1.Caption:='*';
       obliczenia2[obliczenia2.count-1]:='*';
     end
  else
     begin
     obliczenia2.add(liczba1Str);
     obliczenia2.add('*');
     obliczenia2lenght:=obliczenia2lenght+2;
     Label1.Caption:=obliczenia2[1];
     Liczba1Str:='';
     end;

end;

procedure TForm2.Button16Click(Sender: TObject);
begin
  if(liczba1Str='')then
       begin
       Label1.Caption:='/';
       obliczenia2[obliczenia2.count-1]:='/';
       end
     else
     begin
     obliczenia2.add(liczba1Str);
     obliczenia2.add('/');
     obliczenia2lenght:=obliczenia2lenght+2;
     Label1.Caption:='/';
     Liczba1Str:='';

     end;
end;

procedure TForm2.Button17Click(Sender: TObject);
begin
  //backspace
  if (liczba1Str='0')then
    liczba1Str:='0'
  else if (liczba1Str='') then
    liczba1Str:='0'
  else
    begin
    SetLength(liczba1Str,LENGTH(liczba1Str)-1);
    if(liczba1Str='') then
        liczba1Str:='0'
    end;
    Label1.Caption:=liczba1Str;
end;

procedure TForm2.Button18Click(Sender: TObject);
begin
     Form3.show;
     close;
end;

procedure TForm2.Button19Click(Sender: TObject);
begin
     Form7.Show;
end;

begin
    obliczenia2:=TStringList.Create;
    obliczenia2lenght:=0;
end.

