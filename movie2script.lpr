(* Movie2Script

   Copyright (C) 2025 Michael Fuchs,  https://www.ypa-software.de

   This source is free software; you can redistribute it and/or modify it under the terms of the GNU General Public
   License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later
   version.

   This code is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
   warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
   details.

   A copy of the GNU General Public License is available on the World Wide Web at
   <http://www.gnu.org/copyleft/gpl.html>. You can also obtain it by writing to the Free Software Foundation, Inc., 51
   Franklin Street - Fifth Floor, Boston, MA 02110-1335, USA.
*)

program movie2script;
{$MODE ObjFPC}{$H+}

uses
  {$IFDEF UNIX}CThreads,{$ENDIF}
  Interfaces, Forms,
  (* project units *)
  Movie2Script.Forms.MainForm, Movie2Script.Core.Model, Movie2Script.Core.Service;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Scaled := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

