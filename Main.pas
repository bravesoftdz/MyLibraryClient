unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.TabControl, FMX.Edit,
  FMX.Objects, FMX.Layouts, FMX.Effects,  DBXJSON, System.JSON,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.MultiView, FMX.ListBox, Soap.EncdDecd, IdCoderMIME,
  System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, System.IOUtils, FMX.Platform.Android,
  Data.Bind.Controls, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Fmx.Bind.Navigator,
  Data.Bind.DBScope, System.Notification;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    Rectangle1: TRectangle;
    background: TBrushObject;
    back: TBrushObject;
    Rectangle2: TRectangle;
    Layout1: TLayout;
    GridPanelLayout1: TGridPanelLayout;
    Text1: TText;
    Rectangle3: TRectangle;
    GridPanelLayout2: TGridPanelLayout;
    Text2: TText;
    Edit1: TEdit;
    Text3: TText;
    Edit2: TEdit;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    okBtn: TBrushObject;
    NoBtn: TBrushObject;
    Text4: TText;
    Text5: TText;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    StyleBook1: TStyleBook;
    IdHTTP1: TIdHTTP;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Layout2: TLayout;
    Rectangle9: TRectangle;
    ShadowEffect3: TShadowEffect;
    Text6: TText;
    Rectangle10: TRectangle;
    ShadowEffect4: TShadowEffect;
    Rectangle11: TRectangle;
    MultiView1: TMultiView;
    Rectangle12: TRectangle;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    RoundRect1: TRoundRect;
    Layout3: TLayout;
    GridPanelLayout3: TGridPanelLayout;
    Text7: TText;
    Text8: TText;
    Text9: TText;
    Text10: TText;
    Text11: TText;
    Text12: TText;
    Text13: TText;
    Text14: TText;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Rectangle17: TRectangle;
    ShadowEffect5: TShadowEffect;
    ShadowEffect6: TShadowEffect;
    Text15: TText;
    Rectangle18: TRectangle;
    ShadowEffect7: TShadowEffect;
    Text16: TText;
    IdHTTP2: TIdHTTP;
    Memo1: TMemo;
    IdHTTP3: TIdHTTP;
    ListView1: TListView;
    IdHTTP4: TIdHTTP;
    IdHTTP5: TIdHTTP;
    Rectangle19: TRectangle;
    ShadowEffect8: TShadowEffect;
    ShadowEffect9: TShadowEffect;
    Brush1: TBrushObject;
    Brush2: TBrushObject;
    Rectangle20: TRectangle;
    Rectangle21: TRectangle;
    ShadowEffect10: TShadowEffect;
    ShadowEffect11: TShadowEffect;
    Text17: TText;
    Rectangle22: TRectangle;
    backbtn: TBrushObject;
    Layout4: TLayout;
    Rectangle23: TRectangle;
    Rectangle24: TRectangle;
    Rectangle25: TRectangle;
    Rectangle26: TRectangle;
    RoundRect2: TRoundRect;
    Text19: TText;
    Text20: TText;
    VertScrollBox1: TVertScrollBox;
    ImageList1: TImageList;
    Image1: TImage;
    Rectangle27: TRectangle;
    Rectangle28: TRectangle;
    Rectangle29: TRectangle;
    Layout5: TLayout;
    ShadowEffect12: TShadowEffect;
    ShadowEffect13: TShadowEffect;
    RectangleBack: TRectangle;
    Text18: TText;
    Rectangle30: TRectangle;
    ShadowEffect14: TShadowEffect;
    Rectangle31: TRectangle;
    VertScrollBox2: TVertScrollBox;
    Rectangle32: TRectangle;
    ShadowEffect15: TShadowEffect;
    ShadowEffect16: TShadowEffect;
    IdHTTP6: TIdHTTP;
    ListView2: TListView;
    Rectangle33: TRectangle;
    ShadowEffect17: TShadowEffect;
    IdHTTP7: TIdHTTP;
    IdHTTP8: TIdHTTP;
    ActionList1: TActionList;
    RefreshRentedBook: TAction;
    ShadowEffect18: TShadowEffect;
    ShadowEffect19: TShadowEffect;
    NotificationCenter1: TNotificationCenter;
    procedure FormCreate(Sender: TObject);
    procedure Text5Click(Sender: TObject);
    procedure Rectangle9Click(Sender: TObject);
    procedure Text16Click(Sender: TObject);
    procedure Text4Click(Sender: TObject);
    procedure ListView1ButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure Rectangle22Click(Sender: TObject);
    procedure Rectangle10Click(Sender: TObject);
    procedure Text15Click(Sender: TObject);
    procedure RectangleBackClick(Sender: TObject);
    procedure Rectangle30Click(Sender: TObject);
    procedure Rectangle33Click(Sender: TObject);
    procedure ListView2ButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure RefreshRentedBookExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  LItem: TListViewItem;
  idReader : string;
implementation

{$R *.fmx}


function UnixTimeToDateTime(UnixTime: LongInt): String;
const
  SecPerDay = 86400;
  Offset1970 = 25569;
var
  Source, Target: string;
begin
  Source := DateTimeToStr(UnixTime / SecPerDay + Offset1970);
  Target := Copy(Source, 1, 10);
  Result := Target;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
 loggin, password : string;
 logginSave, passwordSave : string;
 f: textfile;
 MyNotification: TNotification;
begin

 if Form1.TabControl1.ActiveTab = Form1.TabItem1 then
 begin
   Form1.MultiView1.Visible := false;
 end;

 Form1.Memo1.Lines.LoadFromFile(TPath.GetDocumentsPath + PathDelim + 'SETTINGS.txt');

 loggin := Form1.Memo1.Lines.Strings[0];
 password := Form1.Memo1.Lines.Strings[1];

 delete(loggin,1,pos('=',loggin));
 delete(password,1,pos('=',password));

    if (loggin <> '') AND (password <> '') then
   begin
     Form1.Edit1.Text := loggin;
     Form1.Edit2.Text := password;
     Form1.Text4Click(Sender);
     Form1.MultiView1.Visible := false;
     TabControl1.TabPosition := TTabPosition.None;
     //Form1.TabControl1.ActiveTab := Form1.TabItem1;
   end else begin
     logginSave := 'loggin=' + Form1.Edit1.Text;
     passwordSave := 'password=' + Form1.Edit2.Text;

     assignfile(f,TPath.GetDocumentsPath + PathDelim + 'SETTINGS.txt');
     rewrite(f);
     writeln(f,logginSave + #13 + passwordSave);
     closefile(f);

     Form1.MultiView1.Visible := false;
     TabControl1.TabPosition := TTabPosition.None;
     Form1.TabControl1.ActiveTab := Form1.TabItem1;
   end;
end;

procedure TForm1.ListView1ButtonClick(const Sender: TObject;
  const AItem: TListItem; const AObject: TListItemSimpleControl);
  var
  s:string;
  idBook : string;
  bookInformation, rentingInformation : string;

  SBase64ToImage : string;
  Ss: String;
  StrmPicture: TMemoryStream;

  responseDiscription : string;
  JSONDiscription: TJSONObject;
  JSONArrayDiscription : TJSONArray;
  i : integer;
  discr, imageBook : string;


  responseRanting : string;
  JSONRanting: TJSONObject;
  JSONArrayRanting : TJSONArray;
  j : integer;
  ranting : string;
begin
  s := ListView1.Items[ListView1.ItemIndex].Text;
  s := Copy(s, 1, Pos('.', s));
  idBook := StringReplace(s,'.', '',[rfReplaceAll]);


  bookInformation := Form1.IdHTTP4.Get('http://gvozdev.mycloud.by/ServletControllerBook?action=additionalInfo&idBook='+idBook+'');
  JSONDiscription := TJSONObject.ParseJSONValue(bookInformation) as TJSONObject;
  JSONArrayDiscription := TJSONArray(JSONDiscription.Get('arrBooksAditional').JsonValue);
  for i := 0 to JSONArrayDiscription.Size - 1 do
  begin
    discr := TJSONPair(TJSONObject(JSONArrayDiscription.Get(i)).Get('discriptionBook')).JsonValue.Value;
    imageBook := TJSONPair(TJSONObject(JSONArrayDiscription.Get(i)).Get('nameImgBook')).JsonValue.Value;
  end;
  Form1.Text20.Text := discr;

  SBase64ToImage := StringReplace(imageBook,'data:image/jpeg;base64,', '',[rfReplaceAll]);


  if SBase64ToImage = 'img/book/nophoto.png' then
  begin
    Form1.Rectangle26.Fill.Bitmap.Bitmap :=  Form1.Image1.MultiResBitmap.Items[0].Bitmap;
  end else
  begin
    Ss := SBase64ToImage;
    StrmPicture := TMemoryStream.Create;
    try
      TIdDecoderMIME.DecodeStream(Ss, StrmPicture);
      StrmPicture.Position := 0;
      Form1.Rectangle26.Fill.Bitmap.Bitmap.LoadFromStream(StrmPicture);
    finally
      StrmPicture.Free;
    end;
  end;



  rentingInformation := Form1.IdHTTP5.Get('http://gvozdev.mycloud.by/ServletControllerBook?action=rating&idBook='+idBook+'');
  JSONRanting := TJSONObject.ParseJSONValue(rentingInformation) as TJSONObject;
  JSONArrayRanting := TJSONArray(JSONRanting.Get('rantlist').JsonValue);
  for j := 0 to JSONArrayRanting.Size - 1 do
  begin
    ranting := TJSONPair(TJSONObject(JSONArrayRanting.Get(j)).Get('rating')).JsonValue.Value;
  end;
    Form1.Text19.Text := ranting;


  Form1.MultiView1.Visible := true;
  Form1.TabControl1.ActiveTab := Form1.TabItem3;

end;

procedure TForm1.ListView2ButtonClick(const Sender: TObject;
  const AItem: TListItem; const AObject: TListItemSimpleControl);
var
 s, idRent : string;
 MyNotification: TNotification;
begin
  s := ListView2.Items[ListView2.ItemIndex].Text;
  s := Copy(s, 1, Pos('.', s));
  idRent := StringReplace(s,'.', '',[rfReplaceAll]);
  Form1.IdHTTP8.Get('http://gvozdev.mycloud.by/ServletControllerBookEmployee?action=deleteRentingBookEmployee&idRent='+idRent+'');
  MyNotification := NotificationCenter1.CreateNotification;
  try
      MyNotification.AlertBody := 'Rented book has been delete.';
      NotificationCenter1.PresentNotification(MyNotification);
  finally

    MyNotification.DisposeOf;
  end;

  Form1.RefreshRentedBook.Execute;
end;

procedure TForm1.Rectangle10Click(Sender: TObject);
var
  responseLogin, responseAccount, responseBooks : string;
  JSONLogin, JSONAccount, JSONBooks: TJSONObject;
  JSONArrayUser, JSONArrayAccount, JSONArrayBooks : TJSONArray;
  status, idUser, name, photoEmployee, email, tellNumber, dateBirth, brief,
  author, publishYear, idBook: string;
  i, j: Integer;
begin
//Получаем данные списка книг

  Form1.ListView1.Items.Clear;

  responseBooks := Form1.IdHTTP3.Get('http://gvozdev.mycloud.by/ServletControllerBook?action=readAllBooks');
  JSONBooks := TJSONObject.ParseJSONValue(responseBooks) as TJsonObject;
  JSONArrayBooks := TJSONArray(JSONBooks.Get('books').JsonValue);
  for j := 0 to JSONArrayBooks.Size - 1 do
  begin

    brief := TJSONPair(TJSONObject(JSONArrayBooks.Get(j)).Get('brief')).JsonValue.ToString;
    author := TJSONPair(TJSONObject(JSONArrayBooks.Get(j)).Get('author')).JsonValue.ToString;
    publishYear := TJSONPair(TJSONObject(JSONArrayBooks.Get(j)).Get('publishYear')).JsonValue.ToString;
    idBook := TJSONPair(TJSONObject(JSONArrayBooks.Get(j)).Get('id')).JsonValue.ToString;

    Form1.ListView1.BeginUpdate;
    try
      LItem := Form1.ListView1.Items.Add;
      LItem.Text := StringReplace(idBook,'"', '',[rfReplaceAll]) + '. ' + StringReplace(brief,'"', '',[rfReplaceAll]);
      LItem.Detail := '(' + StringReplace(publishYear,'"', '',[rfReplaceAll]) + ') ' + StringReplace(author,'"', '',[rfReplaceAll]);
      //LItem.Bitmap.LoadFromFile(TPath.Combine(TPath.GetDocumentsPath, 'ic.png'));
      LItem.ButtonText := 'Detail';
      LItem.Height := 60;
      LItem.Accessory := TAccessoryType.More;
    finally
      Form1.ListView1.EndUpdate;
    end;
  end;
end;

procedure TForm1.Rectangle22Click(Sender: TObject);
begin
  Form1.TabControl1.ActiveTab := Form1.TabItem2;
end;

procedure TForm1.Rectangle30Click(Sender: TObject);
var
  loggin, password : string;
  responseLogin, responseAccount, responseBooks : string;
  JSONLogin, JSONAccount, JSONBooks: TJSONObject;
  JSONArrayUser, JSONArrayAccount, JSONArrayBooks : TJSONArray;
  dateOnRenting, nameBook, idRent : string;
  i : Integer;
  S: string;
begin
  Form1.ListView2.Items.Clear;
  //Получаем данные списка книг
  responseBooks := Form1.IdHTTP3.Get('http://gvozdev.mycloud.by/ServletControllerBookEmployee?action=selectBookRentEmployee&idEmployee='+idReader+'');

  JSONBooks := TJSONObject.ParseJSONValue(responseBooks) as TJsonObject;
  JSONArrayBooks := TJSONArray(JSONBooks.Get('allRentBooksEmployee').JsonValue);
  for i := 0 to JSONArrayBooks.Size - 1 do
  begin

    dateOnRenting := TJSONPair(TJSONObject(JSONArrayBooks.Get(i)).Get('dateOnRenting')).JsonValue.ToString;
    nameBook := TJSONPair(TJSONObject(JSONArrayBooks.Get(i)).Get('nameBook')).JsonValue.ToString;
    idRent :=  TJSONPair(TJSONObject(JSONArrayBooks.Get(i)).Get('idRent')).JsonValue.ToString;

    Form1.ListView2.BeginUpdate;
    try
      LItem := Form1.ListView2.Items.Add;
      LItem.Text := StringReplace(idRent,'"', '',[rfReplaceAll]) + '.' + StringReplace(nameBook,'"', '',[rfReplaceAll]);
      S:= UnixTimeToDateTime(StrToInt(dateOnRenting));
      LItem.Detail := S;
      LItem.ButtonText := 'Delete';
      LItem.Height := 60;
      LItem.Accessory := TAccessoryType.More;
    finally
      Form1.ListView2.EndUpdate;
    end;
  end;
end;

procedure TForm1.Rectangle33Click(Sender: TObject);
var
  s, idBook : string;
  timestamp: Longint;
  MyNotification: TNotification;
begin
try
  s := ListView1.Items[ListView1.ItemIndex].Text;
  s := Copy(s, 1, Pos('.', s));
  idBook := StringReplace(s,'.', '',[rfReplaceAll]);
  timestamp := Round((Now() - 25569.0) * 86400);
  Form1.IdHTTP7.Get('http://gvozdev.mycloud.by/ServletControllerBook?action=createRent&idBook='+idBook+'&idEmployee='+idReader+'&dateOn='+IntToStr(timestamp)+'&status=false');

  MyNotification := NotificationCenter1.CreateNotification;
   try
      MyNotification.AlertBody := 'Book has been rented.';
      NotificationCenter1.PresentNotification(MyNotification);
  finally
    MyNotification.DisposeOf;
  end;
  except
  MyNotification := NotificationCenter1.CreateNotification;
  try
      MyNotification.AlertBody := 'Please select book.';
      NotificationCenter1.PresentNotification(MyNotification);
  finally
    MyNotification.DisposeOf;
  end;
end;
end;

procedure TForm1.Rectangle9Click(Sender: TObject);
begin
  Form1.MultiView1.ShowMaster;
end;

procedure TForm1.RectangleBackClick(Sender: TObject);
begin
  Form1.TabControl1.ActiveTab := Form1.TabItem2;
end;

procedure TForm1.RefreshRentedBookExecute(Sender: TObject);
var
  loggin, password : string;
  responseLogin, responseAccount, responseBooks : string;
  JSONLogin, JSONAccount, JSONBooks: TJSONObject;
  JSONArrayUser, JSONArrayAccount, JSONArrayBooks : TJSONArray;
  dateOnRenting, nameBook, idRent : string;
  i : Integer;
  S: string;
begin
  Form1.ListView2.Items.Clear;
  //Получаем данные списка книг
  responseBooks := Form1.IdHTTP3.Get('http://gvozdev.mycloud.by/ServletControllerBookEmployee?action=selectBookRentEmployee&idEmployee='+idReader+'');

  JSONBooks := TJSONObject.ParseJSONValue(responseBooks) as TJsonObject;
  JSONArrayBooks := TJSONArray(JSONBooks.Get('allRentBooksEmployee').JsonValue);
  for i := 0 to JSONArrayBooks.Size - 1 do
  begin

    dateOnRenting := TJSONPair(TJSONObject(JSONArrayBooks.Get(i)).Get('dateOnRenting')).JsonValue.ToString;
    nameBook := TJSONPair(TJSONObject(JSONArrayBooks.Get(i)).Get('nameBook')).JsonValue.ToString;
    idRent :=  TJSONPair(TJSONObject(JSONArrayBooks.Get(i)).Get('idRent')).JsonValue.ToString;

    Form1.ListView2.BeginUpdate;
    try
      LItem := Form1.ListView2.Items.Add;
      LItem.Text := StringReplace(idRent,'"', '',[rfReplaceAll]) + '.' + StringReplace(nameBook,'"', '',[rfReplaceAll]);
      S:= UnixTimeToDateTime(StrToInt(dateOnRenting));
      LItem.Detail := S;
      LItem.ButtonText := 'Delete';
      LItem.Height := 60;
      LItem.Accessory := TAccessoryType.More;
    finally
      Form1.ListView2.EndUpdate;
    end;
  end;
end;

procedure TForm1.Text15Click(Sender: TObject);
var
  loggin, password : string;
  responseLogin, responseAccount, responseBooks : string;
  JSONLogin, JSONAccount, JSONBooks: TJSONObject;
  JSONArrayUser, JSONArrayAccount, JSONArrayBooks : TJSONArray;
  dateOnRenting, nameBook, idRent : string;
  i : Integer;
  S: String;
begin
  Form1.ListView2.Items.Clear;
  //Получаем данные списка книг
  responseBooks := Form1.IdHTTP3.Get('http://gvozdev.mycloud.by/ServletControllerBookEmployee?action=selectBookRentEmployee&idEmployee='+idReader+'');

  JSONBooks := TJSONObject.ParseJSONValue(responseBooks) as TJsonObject;
  JSONArrayBooks := TJSONArray(JSONBooks.Get('allRentBooksEmployee').JsonValue);
  for i := 0 to JSONArrayBooks.Size - 1 do
  begin

    dateOnRenting := TJSONPair(TJSONObject(JSONArrayBooks.Get(i)).Get('dateOnRenting')).JsonValue.ToString;
    nameBook := TJSONPair(TJSONObject(JSONArrayBooks.Get(i)).Get('nameBook')).JsonValue.ToString;
    idRent :=  TJSONPair(TJSONObject(JSONArrayBooks.Get(i)).Get('idRent')).JsonValue.ToString;

    Form1.ListView2.BeginUpdate;
    try
      LItem := Form1.ListView2.Items.Add;
      LItem.Text := StringReplace(idRent,'"', '',[rfReplaceAll]) + '.' + StringReplace(nameBook,'"', '',[rfReplaceAll]);
      S:= UnixTimeToDateTime(StrToInt(dateOnRenting));
      LItem.Detail := S;
      LItem.ButtonText := 'Delete';
      LItem.Height := 60;
      LItem.Accessory := TAccessoryType.More;
    finally
      Form1.ListView2.EndUpdate;
    end;
  end;

  Form1.MultiView1.HideMaster;
  Form1.TabControl1.ActiveTab := Form1.TabItem4;

end;

procedure TForm1.Text16Click(Sender: TObject);
var
   f: textfile;
begin
{$IF DEFINED(iOS) or DEFINED(ANDROID)}
  assignfile(f,TPath.GetDocumentsPath + PathDelim + 'SETTINGS.txt');
  rewrite(f);
  writeln(f,'');
  closefile(f);
  MainActivity.finish;
{$ENDIF}
end;

procedure TForm1.Text4Click(Sender: TObject);
var
  loggin, password : string;
  responseLogin, responseAccount, responseBooks : string;
  JSONLogin, JSONAccount, JSONBooks: TJSONObject;
  JSONArrayUser, JSONArrayAccount, JSONArrayBooks : TJSONArray;
  status, idUser, name, photoEmployee, email, tellNumber, dateBirth, brief,
  author, publishYear, idBook: string;
  i, j: Integer;
  LJSONBytes: TBytes;
  SBase64BeforeDecode, SBase64ToImage : string;
  S: String;
  Strm: TMemoryStream;
begin
  //Получаем логин и пароль
  loggin := Form1.Edit1.Text;
  password := Form1.Edit2.Text;

  try
  //Получаем id и статус
  responseLogin := Form1.IdHTTP1.Get('http://gvozdev.mycloud.by/ServletControllerEmployee?action=entranceUser&loggin='+loggin+'&password='+password+'');
  JSONLogin := TJSONObject.ParseJSONValue(responseLogin) as TJSONObject;
  JSONArrayUser := TJSONArray(JSONLogin.Get('entrance').JsonValue);
  for i := 0 to JSONArrayUser.Size - 1 do
  begin
    idReader := TJSONPair(TJSONObject(JSONArrayUser.Get(i)).Get('id')).JsonValue.Value;
    idUser := TJSONPair(TJSONObject(JSONArrayUser.Get(i)).Get('id')).JsonValue.Value;
    status := TJSONPair(TJSONObject(JSONArrayUser.Get(i)).Get('satatusAdmin')).JsonValue.Value;
  end;

  //Получаем данные об аккаунте
  responseAccount := Form1.IdHTTP2.Get('http://gvozdev.mycloud.by/ServletControllerBook?action=selectAccountEmployeeId&idEmployee='+idUser+'');
  JSONAccount := TJSONObject.ParseJSONValue(responseAccount) as TJsonObject;
  JSONArrayAccount := TJSONArray(JSONAccount.Get('account').JsonValue);
  for j := 0 to JSONArrayAccount.Size - 1 do
  begin
    dateBirth := TJSONPair(TJSONObject(JSONArrayAccount.Get(j)).Get('dateBirth')).JsonValue.ToString;
    email := TJSONPair(TJSONObject(JSONArrayAccount.Get(j)).Get('email')).JsonValue.ToString;
    name := TJSONPair(TJSONObject(JSONArrayAccount.Get(j)).Get('name')).JsonValue.ToString;
    photoEmployee := TJSONPair(TJSONObject(JSONArrayAccount.Get(j)).Get('photoEmployee')).JsonValue.ToString;
    tellNumber := TJSONPair(TJSONObject(JSONArrayAccount.Get(j)).Get('tellNumber')).JsonValue.ToString;
  end;
  Form1.Text8.Text := StringReplace(name,'"', '',[rfReplaceAll]);
  Form1.Text10.Text := UnixTimeToDateTime(StrToInt(dateBirth));
  Form1.Text12.Text := StringReplace(email,'"', '',[rfReplaceAll]);
  Form1.Text14.Text := StringReplace(tellNumber,'"', '',[rfReplaceAll]);

  //data:imagejpeg;base64,
  SBase64BeforeDecode := StringReplace(photoEmployee,'"', '',[rfReplaceAll]);
  SBase64ToImage := StringReplace(SBase64BeforeDecode,'data:image/jpeg;base64,', '',[rfReplaceAll]);
  SBase64ToImage := StringReplace(SBase64BeforeDecode,'data:image/png;base64,', '',[rfReplaceAll]);

  //can be result if didnt find pic http://gvozdev.mycloud.by/undefined

  if SBase64ToImage = 'http://gvozdev.mycloud.by/undefined' then
  begin
    Form1.RoundRect1.Fill.Bitmap.Bitmap :=  Form1.Image1.MultiResBitmap.Items[0].Bitmap;
  end else
  begin
    S := SBase64ToImage;
    Strm := TMemoryStream.Create;
    try
      TIdDecoderMIME.DecodeStream(S, Strm);
      Strm.Position := 0;
      Form1.RoundRect1.Fill.Bitmap.Bitmap.LoadFromStream(Strm);
      //Strm.SaveToFile('E:\'+ idUser + '.jpeg');
    finally
      Strm.Free;
    end;
  end;



  //Получаем данные списка книг
  responseBooks := Form1.IdHTTP3.Get('http://gvozdev.mycloud.by/ServletControllerBook?action=readAllBooks');
  JSONBooks := TJSONObject.ParseJSONValue(responseBooks) as TJsonObject;
  JSONArrayBooks := TJSONArray(JSONBooks.Get('books').JsonValue);
  for j := 0 to JSONArrayBooks.Size - 1 do
  begin

    brief := TJSONPair(TJSONObject(JSONArrayBooks.Get(j)).Get('brief')).JsonValue.ToString;
    author := TJSONPair(TJSONObject(JSONArrayBooks.Get(j)).Get('author')).JsonValue.ToString;
    publishYear := TJSONPair(TJSONObject(JSONArrayBooks.Get(j)).Get('publishYear')).JsonValue.ToString;
    idBook := TJSONPair(TJSONObject(JSONArrayBooks.Get(j)).Get('id')).JsonValue.ToString;

    Form1.ListView1.BeginUpdate;
    try
      LItem := Form1.ListView1.Items.Add;
      LItem.Text := StringReplace(idBook,'"', '',[rfReplaceAll]) + '. ' + StringReplace(brief,'"', '',[rfReplaceAll]);
      LItem.Detail := '(' + StringReplace(publishYear,'"', '',[rfReplaceAll]) + ') ' + StringReplace(author,'"', '',[rfReplaceAll]);
      //LItem.Bitmap.LoadFromFile(TPath.Combine(TPath.GetDocumentsPath, 'ic.png'));
      LItem.ButtonText := 'Detail';
      LItem.Height := 60;
      LItem.Accessory := TAccessoryType.More;
    finally
      Form1.ListView1.EndUpdate;
    end;
  end;

  //Form1.MultiView1.Visible := true;
  //Form1.MultiView1.ShowMaster;
  Form1.TabControl1.ActiveTab := Form1.TabItem2;
  except
        Form1.Text1.Text := 'Inncorect login or password!';
  end;
end;



procedure TForm1.Text5Click(Sender: TObject);
begin
{$IF DEFINED(iOS) or DEFINED(ANDROID)}
 // MainActivity.finish;
{$ENDIF}
end;

end.
