unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, unit2, Unit4, Unit5;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation
uses unit1;
{$R *.lfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
begin
     Form2.Show;
     Form3.Hide;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
     Form1.Show;
     Form3.Hide;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
     Form4.Show;
     Form3.Hide;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
     Form5.Show;
     Form3.Hide;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  Form7.Show;
end;


end.

