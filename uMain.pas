unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit;

type
  TfrmMain = class(TForm)
    rctMain: TRectangle;
    Label1: TLabel;
    rctGame: TRectangle;
    edtGamePin: TEdit;
    lblEnter: TLabel;
    rctEnter: TRectangle;
    Circle1: TCircle;
    Circle2: TCircle;
    Gradient1: TBrushObject;
    Gradient2: TBrushObject;
    Rectangle1: TBrushObject;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

end.
