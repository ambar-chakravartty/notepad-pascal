unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenFile: TOpenDialog;
    SaveDialog1: TSaveDialog;

    procedure FormShow(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  filename : string   ;

implementation

{$R *.lfm}
{$R project.rc}

{ TForm1 }

procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
    Memo1.Clear;
    Form1.Caption:= 'Untitled';
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
     if OpenFile.execute then

          filename := OpenFile.Filename;
          ShowMessage(filename);
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(filename);
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
         if SaveDialog1.Execute then
            Memo1.Lines.SaveToFile(SaveDialog1.Filename);
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  Memo1.CutToClipboard;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  Memo1.CopyToClipboard;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  Memo1.PasteFromClipboard;
end;



end.

