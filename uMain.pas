unit uMain;
interface
uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.Layouts,
  FMX.TabControl;
type
  TfrmMain = class(TForm)
    Gradient1: TBrushObject;
    Gradient2: TBrushObject;
    Rectangle1: TBrushObject;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    rctMain: TRectangle;
    ITTAhoot: TLabel;
    rctGame: TRectangle;
    edtGamePin: TEdit;
    rctEnter: TRectangle;
    lblEnter: TLabel;
    Circle1: TCircle;
    Circle2: TCircle;
    TabItem2: TTabItem;
    FlowLayout1: TFlowLayout;
    lblDescripcion: TLabel;
    lblITTAhoot: TLabel;
    TabItem3: TTabItem;
    Rectangle2: TRectangle;
    rtglFondo: TRectangle;
    rtglTarjeta: TRectangle;
    edtNombredeUsuario: TEdit;
    edtContraseña: TEdit;
    rtlgRegistrarse: TRectangle;
    lblRegistrarse: TLabel;
    rtglCrearJuego: TRectangle;
    lblCrearJuego: TLabel;
    lblVolver: TLabel;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Label3: TLabel;
    Edit1: TEdit;
    GridPanelLayout1: TGridPanelLayout;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle5: TRectangle;
    Edit2: TEdit;
    Path1: TPath;
    Button1: TButton;
    Edit3: TEdit;
    Path2: TPath;
    Edit4: TEdit;
    Path3: TPath;
    Edit5: TEdit;
    Path4: TPath;
    procedure lblITTAhootClick(Sender: TObject);
    procedure rtglFondoClick(Sender: TObject);
    procedure rtlgRegistrarseClick(Sender: TObject);
    procedure lblITTAhootMouseEnter(Sender: TObject);
    procedure lblITTAhootMouseLeave(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rtglCrearJuegoClick(Sender: TObject);
    procedure lblEnterClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmMain: TfrmMain;
implementation
{$R *.fmx}


procedure TfrmMain.lblITTAhootMouseEnter(Sender: TObject);
begin
  // Esto activa el subrayado (fsUnderline)
  lblITTAhoot.TextSettings.Font.Style := [TFontStyle.fsUnderline];
end;

procedure TfrmMain.lblITTAhootMouseLeave(Sender: TObject);
begin
  // Esto deja el estilo vacío (sin subrayado)
  lblITTAhoot.TextSettings.Font.Style := [];
end;

procedure TfrmMain.rtglCrearJuegoClick(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem3;
end;

procedure TfrmMain.rtglFondoClick(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem1;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
    // Validamos que haya una pregunta escrita
  if (Edit1.Text <> '') and (Edit1.Text <> 'Escribe tu pregunta aqui...') then
  begin
    // Simulamos el guardado
    ShowMessage('¡ITTAhoot Guardado!' + #13 +
                'Pregunta: ' + Edit1.Text + #13 +
                'Usuario: ' + Edit2.Text); // Asumiendo que Edit2 es el usuario del Tab2

    // Limpiamos los campos
    Edit1.Text := '';

    // Regresamos al inicio (TabItem1)
    TabControl1.SetActiveTabWithTransition(TabItem1, TTabTransition.Slide, TTabTransitionDirection.Normal);
  end
  else
    ShowMessage('Error: Debes escribir una pregunta ');
end;

procedure TfrmMain.lblEnterClick(Sender: TObject);
begin
  if edtGamePin.Text <> '' then
    ShowMessage('Buscando el juego ' + edtGamePin.Text + '...')
  else
    ShowMessage('Por favor, ingresa un PIN válido.');
end;

procedure TfrmMain.lblITTAhootClick(Sender: TObject);
begin
  // Esto le dice al TabControl que muestre la segunda pestaña
  TabControl1.ActiveTab := TabItem2;
end;

procedure TfrmMain.rtlgRegistrarseClick(Sender: TObject);
begin
  if (edtNombredeUsuario.Text <> '') and (edtContraseña.Text <> '') then
  begin
    ShowMessage('Usuario ' + edtNombredeUsuario.Text + ' creado con éxito .');
    // Aquí podrías limpiar los campos para el siguiente paso
    edtNombredeUsuario.Text := '';
    edtContraseña.Text := '';
  end
  else
    ShowMessage('Por favor, llena todos los campos.');
end;

end.
