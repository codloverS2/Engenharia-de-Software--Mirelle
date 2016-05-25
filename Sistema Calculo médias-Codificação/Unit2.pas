unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TFlatButtonUnit, jpeg, ExtCtrls, TFlatEditUnit,
  TFlatGroupBoxUnit,math;

type
  TForm2 = class(TForm)
    FlatButton1: TFlatButton;
    FlatButton2: TFlatButton;
    FlatButton3: TFlatButton;
    FlatButton4: TFlatButton;
    Memo1: TMemo;
    Image1: TImage;
    FlatButton5: TFlatButton;
    Label1: TLabel;
    procedure FlatButton1Click(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure FlatButton5Click(Sender: TObject);
    procedure FlatButton2Click(Sender: TObject);
    procedure FlatButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  acu,acu2:Double;
  sema,cont,int:Integer;
  vetor: array[1..20] of Double;
implementation

{$R *.dfm}

procedure TForm2.FlatButton1Click(Sender: TObject);
var
qdt:String;
Media:Double;
begin
//showmessage(floattostr(acu));
//showmessage(inttostr(cont));
media:=acu/cont;
label1.Caption:=floattostr(media);
sema:=0;
cont:=0;
acu:=0;

//qdt:=inputbox('Aten��o','Quantidade de dados para o calculo?','');
  //val (qdt , N, C);
     // if c = 0 then
        // begin
           //  Showmessage('Funcionando! vc te numeros');
           //end
           //else
           //showmessage('Digite apenas Numeros!');
end;

procedure TForm2.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
if (not(KEY in ['0'..'9',chr(8)])) and (KEY<>#0) then
begin
//showmessage('Soh eh permitido n�meros!');
KEY := #0;
end;
end;
procedure TForm2.FlatButton5Click(Sender: TObject);

begin

if (Memo1.Lines[0]='') then
showmessage('Insira um Dado para o C�lculo')
else
begin
cont:=cont+1;
if (sema=0)then
Begin
int:=1;
vetor[int]:=strtofloat(Memo1.Lines[0]);
showmessage(floattostr(vetor[int]));
acu:=strtofloat(Memo1.Lines[0]);
acu2:=strtofloat(Memo1.Lines[0]);
showmessage('Entrou');
Memo1.Clear;
sema:=1;
end
  else
  begin
  int:=int+1;
  vetor[int]:=strtofloat(Memo1.Lines[0]);
  showmessage(floattostr(vetor[int]));
  showmessage(inttostr(int));
acu:=acu+strtofloat(Memo1.Lines[0]);
acu2:= acu2*strtofloat(Memo1.Lines[0]);
Memo1.Clear;
end;

label1.Caption:=floattostr(acu2);
end;
end;
procedure TForm2.FlatButton2Click(Sender: TObject);
var
media:Double;
begin
showmessage(floattostr(acu2));
showmessage(inttostr(cont));
media:= Power(acu2,1/cont);
label1.Caption:=floattostr(media);
sema:=0;
cont:=0;
acu2:=1;
end;

procedure TForm2.FlatButton3Click(Sender: TObject);
var
i:Integer;
soma,peso:Double;
begin
i:=1;
while (i<cont) do
begin
i:=i+1;
showmessage(inttostr(cont));
showmessage(floattostr(vetor[i]));
peso:=strtofloat(inputbox('Aten��o','Insera o peso?',''));
soma:=soma+vetor[i]*peso;

end;

showmessage(floattostr(soma));
//showmessage(inttostr(cont));
//media:= Power(acu2,1/cont);
//label1.Caption:=floattostr(media);
sema:=0;
cont:=0;
acu2:=1;

end;

end.
