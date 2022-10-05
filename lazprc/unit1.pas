unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  suma: integer;
  sumaStr: string;

implementation
uses unit3,unit7;
{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     Caption:='Counter';
     sumaStr:=IntToStr(suma);
     Caption:=Caption+': '+sumaStr;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     suma:=suma+1;
     sumaStr:=IntToStr(suma);
     Button1.Caption:=sumaStr;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     suma:=suma-1;
     sumaStr:=IntToStr(suma);
     Button1.Caption:=sumaStr;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form3.show;
  close;
end;

begin

end.

