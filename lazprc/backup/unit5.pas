unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    InputA: TEdit;
    InputB: TEdit;
    InputC: TEdit;
    InputX: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    odp: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;
  a: integer;
  aStr: string;
  b: integer;
  bStr: string;
  c: integer;
  cStr: string;
  x: integer;
  xStr: string;
  wynik: LongInt;
  wynikStr: string;

implementation
 uses unit3;
{$R *.lfm}

{ TForm5 }


procedure TForm5.Button3Click(Sender: TObject);
begin
     Form3.Show;
     close;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
     Form7.Show;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
     a:=0;
     b:=0;
     x:=0;
     c:=0;
     aStr:=InputA.Text;
     a:=StrToInt(aStr);
     bStr:=InputB.Text;
     b:=StrToInt(bStr);
     cStr:=InputC.Text;
     c:=StrToInt(cStr);
     xStr:=InputX.Text;
     x:=StrToInt(xStr);
     wynik:=(a*x*x)+(b*x)+c;
     wynikStr:=IntToStr(wynik);
     odp.Caption:=wynikStr;
end;

end.

