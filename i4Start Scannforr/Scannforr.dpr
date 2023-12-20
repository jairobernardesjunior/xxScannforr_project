program Scannforr;

uses
  Vcl.Forms,
  uScannforr in 'uScannforr.pas' {frmScannforr},
  uFuncoes in 'uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmScannforr, frmScannforr);
  Application.Run;
end.
