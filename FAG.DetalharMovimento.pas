unit FAG.DetalharMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm_detalharMovimento = class(TForm)
    Panel_relatorioMovimento: TPanel;
    Label_tituloForm: TLabel;
    SpeedButton_exportar: TSpeedButton;
    SpeedButton_voltar: TSpeedButton;
    GroupBox1: TGroupBox;
    DateTimePicker2: TDateTimePicker;
    Label_codigoMov: TLabel;
    Edit_codigo: TEdit;
    Label_dataMov: TLabel;
    GroupBox_produtosMov: TGroupBox;
    DBGrid_resultadoPesquisa: TDBGrid;
    procedure SpeedButton_voltarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_detalharMovimento: TForm_detalharMovimento;

implementation

{$R *.dfm}
  

procedure TForm_detalharMovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  Release;
  Form_detalharMovimento := nil;
end;

procedure TForm_detalharMovimento.FormCreate(Sender: TObject);
begin
  Edit_codigo.Enabled := false;
end;

procedure TForm_detalharMovimento.SpeedButton_voltarClick(Sender: TObject);
begin
  Form_detalharMovimento.Close;
end;

end.
