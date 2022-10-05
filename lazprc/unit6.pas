unit Unit6;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button2: TButton;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form6: TForm6;

implementation
uses unit3;
{$R *.lfm}

{ TForm6 }


procedure TForm6.Button2Click(Sender: TObject);
begin
  Form3.show;
  close;
end;

end.

