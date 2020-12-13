unit Exemplo.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    Label1: TLabel;
    edtSobrenome: TEdit;
    Label2: TLabel;
    btnAdd: TButton;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    mtPessoas: TFDMemTable;
    dsPessoas: TDataSource;
    mtPessoasnome: TStringField;
    mtPessoassobrenome: TStringField;
    procedure btnAddClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DataSet.Serialize;

{$R *.dfm}

procedure TForm1.btnAddClick(Sender: TObject);
begin
  mtPessoas.Open;
  mtPessoas.Append;
  mtPessoasnome.AsString := edtNome.Text;
  mtPessoassobrenome.AsString := edtSobrenome.Text;
  mtPessoas.Post;

  edtNome.Clear;
  edtSobrenome.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Text := mtPessoas.ToJSONArray().ToString;
end;

end.


