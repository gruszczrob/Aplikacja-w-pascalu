unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    InputA: TEdit;
    InputB: TEdit;
    InputX: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;
  a: integer;
  aStr: string;
  b: integer;
  bStr: string;
  x: integer;
  xStr: string;
  wynik: LongInt;
  wynikStr: string;

implementation
uses unit3,unit7;
{$R *.lfm}



{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
begin
     a:=0;
     b:=0;
     x:=0;
     aStr:=InputA.Text;
     //Caption:=aStr;
     a:=StrToInt(aStr);
     bStr:=InputB.Text;
     b:=StrToInt(bStr);
     xStr:=InputX.Text;
     x:=StrToInt(xStr);
     wynik:=(a*x)+b;
     wynikStr:=IntToStr(wynik);
     Label7.Caption:=wynikStr;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Form3.show;
  close;
end;


end.

