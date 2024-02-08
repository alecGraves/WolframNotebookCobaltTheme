(* :Author: Alec Graves *)
(* :Date: 2021-07-20 *)
(* :WL Version: 14.0 *)
(* THE UNLICENSE *)

(* This script installs our CobaltDark notebook theme *)

scriptPath = DirectoryName[ExpandFileName[First[$ScriptCommandLine]]];
SetDirectory[scriptPath];
installPath = FileNameJoin[{$UserBaseDirectory, "SystemFiles", "FrontEnd", "StyleSheets", "CobaltDark.nb"}];
Print["\nInstalling theme to "<>installPath<>"\n"]
If[FileExistsQ[installPath], DeleteFile[installPath]];
CopyFile["CobaltDark.nb", installPath];
Print["All finished. Please restart Mathematica to use the CobaltDark theme.\n"]
