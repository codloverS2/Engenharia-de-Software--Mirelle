unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TFlatButtonUnit, jpeg, ExtCtrls, TFlatEditUnit,
  TFlatGroupBoxUnit;

type
  TForm2 = class(TForm)
    FlatButton1: TFlatButton;
    FlatButton2: TFlatButton;
    FlatButton3: TFlatButton;
    FlatButton4: TFlatButton;
    Memo1: TMemo;
    Image1: TImage;
    procedure FlatButton1Click(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FlatButton1Click(Sender: TObject);
var
qdt:String;
N,C:Integer;
begin


qdt:=inputbox('Aten��o','Quantidade de dados para o calculo?','');
  val (qdt , N, C);
      if c = 0 then
         begin
             Showmessage('Funcionando! vc te numeros');
           end
           else
           showmessage('Digite apenas Numeros!');
end;

procedure TForm2.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
if (not(KEY in ['0'..'9',chr(8)])) and (KEY<>#0) then
begin
//showmessage('Soh eh permitido n�meros!');
KEY := #0;
end;
end;
end.
