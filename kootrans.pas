{
koordtrans
Copyright (C) 2009 flossCoder

koordtrans is free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

koordtrans is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>.
}
unit Kootrans;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form1: TForm1; 

implementation

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var Grad, Bogenmas : Real;
begin
   Bogenmas := StrToFloat(Edit2.Text);
   Grad := Bogenmas * (180);
   Edit1.Text := FloatToStr(Grad) + ' °';
end;

procedure TForm1.Button3Click(Sender: TObject);
var Grad, Bogenmas : Real;
begin
    Grad := StrToFloat(Edit1.Text);
    Bogenmas := Grad/180;
    Edit2.Text := FloatToStr(Bogenmas) + ' * PI';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit1.Text := 'Grad';
  Edit2.Text := 'Bogenmaß';
  Edit3.Text := 'karth. Koo. x';
  Edit4.Text := 'karth. Koo. y';
  Edit5.Text := 'Kreiskoo. r';
  Edit6.Text := 'Kreiskoo. phi';
  Edit7.Text := 'karth. Koo. x';
  Edit8.Text := 'karth. Koo. y';
  Edit9.Text := 'karth. Koo. z';
  Edit10.Text := 'Kugel r';
  Edit11.Text := 'Kugel phi';
  Edit12.Text := 'Kugel theta';
  Edit13.Text := 'Zylinder r';
  Edit14.Text := 'Zylinder phi';
  Edit15.Text := 'Zylinder z';
end;

procedure TForm1.Button5Click(Sender: TObject);
var KKx, KKy, KKr, KKp : Real;
begin
   KKr := StrToFloat(Edit5.Text);
   KKp := StrToFloat(Edit6.Text);
   KKx := KKr * cos(KKp*PI);
   KKy := KKr * sin(KKp*PI);
   Edit3.Text := FloatToStr(KKx);
   Edit4.Text := FloatToStr(KKy);
end;

procedure TForm1.Button6Click(Sender: TObject);
var KKx, KKy, KKr, KKp : Real;
begin
   KKx := StrToFloat(Edit3.Text);
   KKy := StrToFloat(Edit4.Text);
   KKr := sqrt(KKx*KKx+KKy*KKy);
   KKp := arctan((KKx/KKY))/PI;
   Edit5.Text := FloatToStr(KKr);
   Edit6.Text := FloatToStr(KKp);
end;

procedure TForm1.Button7Click(Sender: TObject);
var x, y, z, Zr, Zp, Zz, Kr, Kp, Kt, l : Real;
begin
    x := StrToFloat(Edit7.Text);
    y := StrToFloat(Edit8.Text);
    x := StrToFloat(Edit9.Text);

    Kr := sqrt(x*x+y*y+z*z);

    l := x/(sqrt(x*x+y+y));
        If y>=0
        Then Kp := arctan(sqrt(1-l*l)/l)
          Else Kp := 2*PI-arctan(sqrt(1-l*l)/l);
    Kt := PI/2-arctan(z/(sqrt(x*x+y+y)));

   Zr := sqrt(x*x+y*y);
   Zp := arctan(x/y);
   Zz := z;

   Edit10.Text := FloatToStr(Kr);
   Edit11.Text := FloatToStr(Kp)+' PI';
   Edit12.Text := FloatToStr(Kt)+' PI';
   Edit13.Text := FloatToStr(Zr);
   Edit14.Text := FloatToStr(Zp)+' PI';
   Edit15.Text := FloatToStr(Zz);
end;

procedure TForm1.Button8Click(Sender: TObject);
var x, y, z, Zr, Zp, Zz, Kr, Kp, Kt, l : Real;
begin
   Kr := StrToFloat(Edit10.Text);
   Kp := StrToFloat(Edit11.Text);
   Kt := StrToFloat(Edit12.Text);

   x := Kr*sin(Kt)*cos(Kp);
   y := Kr*sin(Kt)*sin(Kp);
   z := Kr*sin(Kt);

   Zr := sqrt(x*x+y*y);
   Zp := arctan(x/y);
   Zz := z;

   Edit7.Text := FloatToStr(x);
   Edit8.Text := FloatToStr(y);
   Edit9.Text := FloatToStr(z);
   Edit13.Text := FloatToStr(Zr);
   Edit14.Text := FloatToStr(Zp)+' PI';
   Edit15.Text := FloatToStr(Zz);
end;

procedure TForm1.Button9Click(Sender: TObject);
var x, y, z, Zr, Zp, Zz, Kr, Kp, Kt, l : Real;
begin
   Zr := StrToFloat(Edit13.Text);
   Zp := StrToFloat(Edit14.Text);
   Zz := StrToFloat(Edit15.Text);

   x := Zr*cos(Zp);
   y := Zr*sin(Zp);
   z := Zz;

   Kr := sqrt(x*x+y*y+z*z);

    l := x/(sqrt(x*x+y+y));
        If y>=0
        Then Kp := arctan(sqrt(1-l*l)/l)
          Else Kp := 2*PI-arctan(sqrt(1-l*l)/l);
    Kt := PI/2-arctan(z/(sqrt(x*x+y+y)));

   Edit7.Text := FloatToStr(x);
   Edit8.Text := FloatToStr(y);
   Edit9.Text := FloatToStr(z);
   Edit10.Text := FloatToStr(Kr);
   Edit11.Text := FloatToStr(Kp)+' PI';
   Edit12.Text := FloatToStr(Kt)+' PI';
end;

initialization
  {$I kootrans.lrs}

end.

