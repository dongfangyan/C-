var OxO4ba7=["rowSpan","removeNode","parentNode","firstChild","colSpan","nodeName","TABLE","Map","rowIndex","rows","length","cells","cellIndex","innerHTML","cell","\x26nbsp;","Can\x27t Get The Position ?","RowCount","ColCount","Unknown Error , pos ",":"," already have cell","Unknown Error , Unable to find bestpos","tbody","uniqueID","richDropDown","list_Templates","subcolumns","addcolumns","subcolspan","addcolspan","btn_row_dialog","btn_cell_dialog","inp_cell_width","inp_cell_height","btn_cell_editcell","tabledesign","subrows","addrows","subrowspan","addrowspan","display","style","none","disabled","width","value","height","[[ValidNumber]]","","\x3Ctable\x3E\x3Ctr\x3E\x3Ctd height=\x2224\x22\x3E\x3C/td\x3E\x3C/tr\x3E\x3C/table\x3E","\x3Ctable\x3E\x3Ctr\x3E\x3Ctd\x3E\x3C/td\x3E\x3Ctd\x3E\x3C/td\x3E\x3C/tr\x3E\x3C/table\x3E","\x3Ctable\x3E\x3Ctr\x3E\x3Ctd\x3E\x3C/td\x3E\x3Ctd\x3E\x3C/td\x3E\x3Ctd\x3E\x3C/td\x3E\x3C/tr\x3E\x3C/table\x3E","\x3Ctable border=\x220\x22 cellpadding=\x220\x22 cellspacing=\x220\x22\x3E\x3Ctr\x3E\x3Ctd valign=\x22top\x22 colspan=\x222\x22\x3E\x3C/td\x3E\x3C/tr\x3E","\x3Ctr\x3E\x3Ctd valign=\x22top\x22 rowspan=\x222\x22\x3E\x3C/td\x3E\x3Ctd valign=\x22top\x22\x3E\x3C/td\x3E\x3C/tr\x3E","\x3Ctr\x3E\x3Ctd valign=\x22top\x22\x3E\x3C/td\x3E\x3C/tr\x3E\x3C/table\x3E","\x3Ctr\x3E\x3Ctd valign=\x22top\x22\x3E\x3C/td\x3E\x3Ctd valign=\x22top\x22 rowspan=\x222\x22\x3E\x3C/td\x3E\x3C/tr\x3E\x3Ctr\x3E\x3Ctd valign=\x22top\x22\x3E\x3C/td\x3E\x3C/tr\x3E\x3C/table\x3E","\x3Ctable border=\x220\x22 cellpadding=\x220\x22 cellspacing=\x220\x22\x3E\x3Ctr\x3E\x3Ctd valign=\x22top\x22 colspan=\x223\x22\x3E\x3C/td\x3E\x3C/tr\x3E","\x3Ctr\x3E\x3Ctd valign=\x22top\x22\x3E\x3C/td\x3E\x3Ctd valign=\x22top\x22\x3E\x3C/td\x3E\x3Ctd valign=\x22top\x22\x3E\x3C/td\x3E\x3C/tr\x3E","\x3Ctr\x3E\x3Ctd valign=\x22top\x22 colspan=\x223\x22\x3E\x3C/td\x3E\x3C/tr\x3E\x3C/table\x3E","DIV","onclick","backgroundColor","currentStyle","body","bgColor","onmouseover","onmouseout","ondblclick","contains","highlight","cssText","runtimeStyle","background-color:gray","onload","document","csstext","font:normal 11px Tahoma;background-color:windowtext;","isOpen"]; function Table_GetCellFromMap(Ox3f8,Ox3f9,Ox3fa){var Ox3fb=Ox3f8[Ox3f9];if(Ox3fb){return Ox3fb[Ox3fa];} ;}  ; function Table_CanSubRowSpan(Ox28b){return Ox28b[OxO4ba7[0x0]]>0x1;}  ; function Element_RemoveNode(element,Ox3fe){if(element[OxO4ba7[0x1]]){ element.removeNode(Ox3fe) ;return ;} ;var p=element[OxO4ba7[0x2]];if(!p){return ;} ;if(Ox3fe){ p.removeChild(element) ;return ;} ;while(true){var Ox1c6=element[OxO4ba7[0x3]];if(!Ox1c6){break ;} ; p.insertBefore(Ox1c6,element) ;} ; p.removeChild(element) ;}  ; function Table_CanSubColSpan(Ox28b){return Ox28b[OxO4ba7[0x4]]>0x1;}  ; function Table_GetTable(Oxb0){for(;Oxb0!=null;Oxb0=Oxb0[OxO4ba7[0x2]]){if(Oxb0[OxO4ba7[0x5]]==OxO4ba7[0x6]){return Oxb0;} ;} ;return null;}  ; function Table_SubRowSpan(Ox28b){var Ox289=Table_GetTable(Ox28b);var Ox4=Table_CalculateTableInfo(Ox289);var Ox3f8=Ox4[OxO4ba7[0x7]];var Ox182=Table_GetCellPositionFromMap(Ox3f8,Ox28b);var Ox402=Ox289[OxO4ba7[0x9]].item(Ox28b[OxO4ba7[0x2]][OxO4ba7[0x8]]+Ox28b[OxO4ba7[0x0]]-0x1);var Ox403=0x0;for(var i=0x0;i<Ox402[OxO4ba7[0xb]][OxO4ba7[0xa]];i++){var Ox404=Ox402[OxO4ba7[0xb]].item(i);var Ox405=Table_GetCellPositionFromMap(Ox3f8,Ox404);if(Ox405[OxO4ba7[0xc]]<Ox182[OxO4ba7[0xc]]){ Ox403=i+0x1 ;} ;} ;for(var i=0x0;i<Ox28b[OxO4ba7[0x4]];i++){var Ox1c6=Ox402.insertCell(Ox403);if(Browser_IsOpera()){ Ox1c6[OxO4ba7[0xd]]=OxO4ba7[0xe] ;} else {if(Browser_IsGecko()||Browser_IsSafari()){ Ox1c6[OxO4ba7[0xd]]=OxO4ba7[0xf] ;} ;} ;} ; Ox28b[OxO4ba7[0x0]]-- ;}  ; function Table_GetCellPositionFromMap(Ox3f8,Ox28b){for(var Ox2f=0x0;Ox2f<Ox3f8[OxO4ba7[0xa]];Ox2f++){var Ox3fb=Ox3f8[Ox2f];for(var Ox30=0x0;Ox30<Ox3fb[OxO4ba7[0xa]];Ox30++){if(Ox3fb[Ox30]==Ox28b){return {rowIndex:Ox2f,cellIndex:Ox30};} ;} ;} ;throw ( new Error(-0x1,OxO4ba7[0x10]));}  ; function Table_GetCellMap(Ox289){return Table_CalculateTableInfo(Ox289)[OxO4ba7[0x7]];}  ; function Table_GetRowCount(Oxb0){return Table_CalculateTableInfo(Oxb0)[OxO4ba7[0x11]];}  ; function Table_GetColCount(Oxb0){return Table_CalculateTableInfo(Oxb0)[OxO4ba7[0x12]];}  ; function Table_CalculateTableInfo(Oxb0){var Ox289=Table_GetTable(Oxb0);var Ox40b=Ox289[OxO4ba7[0x9]];for(var Oxf=Ox40b[OxO4ba7[0xa]]-0x1;Oxf>=0x0;Oxf--){var Ox279=Ox40b.item(Oxf);if(Ox279[OxO4ba7[0xb]][OxO4ba7[0xa]]==0x0){ Element_RemoveNode(Ox279,true) ;continue ;} ;} ;var Ox40c=Ox40b[OxO4ba7[0xa]];var Ox40d=0x0;var Ox40e= new Array(Ox40b.length);for(var Ox40f=0x0;Ox40f<Ox40c;Ox40f++){ Ox40e[Ox40f]=[] ;} ; function Ox410(Oxf,Ox1c6,Ox28b){while(Oxf>=Ox40c){ Ox40e[Ox40c]=[] ; Ox40c++ ;} ;var Ox411=Ox40e[Oxf];if(Ox1c6>=Ox40d){ Ox40d=Ox1c6+0x1 ;} ;if(Ox411[Ox1c6]!=null){throw ( new Error(-0x1,OxO4ba7[0x13]+Oxf+OxO4ba7[0x14]+Ox1c6+OxO4ba7[0x15]));} ; Ox411[Ox1c6]=Ox28b ;}  ; function Ox412(Oxf,Ox1c6){var Ox411=Ox40e[Oxf];if(Ox411){return Ox411[Ox1c6];} ;}  ;for(var Ox40f=0x0;Ox40f<Ox40b[OxO4ba7[0xa]];Ox40f++){var Ox279=Ox40b.item(Ox40f);var Ox413=Ox279[OxO4ba7[0xb]];for(var Ox290=0x0;Ox290<Ox413[OxO4ba7[0xa]];Ox290++){var Ox28b=Ox413.item(Ox290);var Ox414=Ox28b[OxO4ba7[0x0]];var Ox415=Ox28b[OxO4ba7[0x4]];var Ox411=Ox40e[Ox40f];var Ox416=-0x1;for(var Ox417=0x0;Ox417<Ox40d+Ox415+0x1;Ox417++){if(Ox414==0x1&&Ox415==0x1){if(Ox411[Ox417]==null){ Ox416=Ox417 ;break ;} ;} else {var Ox418=true;for(var Ox419=0x0;Ox419<Ox414;Ox419++){for(var Ox41a=0x0;Ox41a<Ox415;Ox41a++){if(Ox412(Ox40f+Ox419,Ox417+Ox41a)!=null){ Ox418=false ;break ;} ;} ;} ;if(Ox418){ Ox416=Ox417 ;break ;} ;} ;} ;if(Ox416==-0x1){throw ( new Error(-0x1,OxO4ba7[0x16]));} ;if(Ox414==0x1&&Ox415==0x1){ Ox410(Ox40f,Ox416,Ox28b) ;} else {for(var Ox419=0x0;Ox419<Ox414;Ox419++){for(var Ox41a=0x0;Ox41a<Ox415;Ox41a++){ Ox410(Ox40f+Ox419,Ox416+Ox41a,Ox28b) ;} ;} ;} ;} ;} ;var Ox330={}; Ox330[OxO4ba7[0x11]]=Ox40c ; Ox330[OxO4ba7[0x12]]=Ox40d ; Ox330[OxO4ba7[0x7]]=Ox40e ;for(var Oxf=0x0;Oxf<Ox40c;Oxf++){var Ox411=Ox40e[Oxf];for(var Ox1c6=0x0;Ox1c6<Ox40d;Ox1c6++){} ;} ;return Ox330;}  ; function Table_SubColSpan(Ox28b){var Ox289=Table_GetTable(Ox28b); Ox28b[OxO4ba7[0x2]].insertCell(Ox28b[OxO4ba7[0xc]]+0x1)[OxO4ba7[0x0]]=Ox28b[OxO4ba7[0x0]] ; Ox28b[OxO4ba7[0x4]]-- ;}  ; function Table_CanAddRowSpan(Ox28b){var Ox289=Table_GetTable(Ox28b);var Ox4=Table_CalculateTableInfo(Ox289);var Ox3f8=Ox4[OxO4ba7[0x7]];var Ox182=Table_GetCellPositionFromMap(Ox3f8,Ox28b);var Ox41d=0x0;for(var Ox1c6=0x0;Ox1c6<Ox28b[OxO4ba7[0x4]];Ox1c6++){var Ox41e=Table_GetCellFromMap(Ox3f8,Ox182[OxO4ba7[0x8]]+Ox28b[OxO4ba7[0x0]],Ox182[OxO4ba7[0xc]]+Ox1c6);if(Ox41e==null){return false;} ;if(Ox41d!=0x0&&Ox41d!=Ox41e[OxO4ba7[0x0]]){return false;} ; Ox41d=Ox41e[OxO4ba7[0x0]] ;var Ox41f=Table_GetCellPositionFromMap(Ox3f8,Ox41e);if(Ox41f[OxO4ba7[0xc]]<Ox182[OxO4ba7[0xc]]){return false;} ;if(Ox41f[OxO4ba7[0xc]]+Ox41e[OxO4ba7[0x4]]>Ox182[OxO4ba7[0xc]]+Ox28b[OxO4ba7[0x4]]){return false;} ;} ;return true;}  ; function Table_AddRow(Ox28b){var Ox289=Table_GetTable(Ox28b);var Ox4=Table_CalculateTableInfo(Ox289);var Ox3f8=Ox4[OxO4ba7[0x7]];var Ox40d=Ox4[OxO4ba7[0x12]];var Ox40c=Ox4[OxO4ba7[0x11]];var Ox279;if(!Browser_IsSafari()){ Ox279=Ox289.insertRow(-0x1) ;} else {var Ox2c6=document.createElement(OxO4ba7[0x17]); Ox289.appendChild(Ox2c6) ; Ox279=Ox2c6.insertRow(-0x1) ;} ;for(var i=0x0;i<Ox40d;i++){var Ox1c6=Ox279.insertCell(-0x1);if(Browser_IsOpera()){ Ox1c6[OxO4ba7[0xd]]=OxO4ba7[0xe] ;} else {if(Browser_IsGecko()||Browser_IsSafari()){ Ox1c6[OxO4ba7[0xd]]=OxO4ba7[0xf] ;} ;} ;} ;}  ; function Table_AddCol(Ox28b){var Ox289=Table_GetTable(Ox28b);for(var Oxf=0x0;Oxf<Ox289[OxO4ba7[0x9]][OxO4ba7[0xa]];Oxf++){var Ox279=Ox289[OxO4ba7[0x9]].item(Oxf);var Ox1c6=Ox279.insertCell(-0x1);if(Browser_IsOpera()){ Ox1c6[OxO4ba7[0xd]]=OxO4ba7[0xe] ;} else {if(Browser_IsGecko()||Browser_IsSafari()){ Ox1c6[OxO4ba7[0xd]]=OxO4ba7[0xf] ;} ;} ;} ;}  ; function Table_CleanUpTableInfo(Ox289,Ox4){var Ox40b=Ox289[OxO4ba7[0x9]];for(var Oxf=Ox40b[OxO4ba7[0xa]]-0x1;Oxf>=0x0;Oxf--){var Ox279=Ox40b.item(Oxf);if(Ox279[OxO4ba7[0xb]][OxO4ba7[0xa]]==0x0){ Element_RemoveNode(Ox279,true) ;continue ;} ;} ;var Ox3f8=Ox4[OxO4ba7[0x7]];var Ox40d=Ox4[OxO4ba7[0x12]];var Ox40c=Ox4[OxO4ba7[0x11]];for(var Ox40f=0x1;Ox40f<Ox40c;Ox40f++){var Ox423=true;for(var Ox290=0x0;Ox290<Ox40d;Ox290++){if(Table_GetCellFromMap(Ox3f8,Ox40f-0x1,Ox290)!=Table_GetCellFromMap(Ox3f8,Ox40f,Ox290)){ Ox423=false ;break ;} ;} ;if(Ox423){for(var Ox290=0x0;Ox290<Ox40d;Ox290++){var Ox28b=Table_GetCellFromMap(Ox3f8,Ox40f,Ox290);if(Ox28b){if(Ox28b[OxO4ba7[0x0]]>0x1){ Ox28b[OxO4ba7[0x0]]=Ox28b[OxO4ba7[0x0]]-0x1 ;} ; Ox290+=Ox28b[OxO4ba7[0x4]]-0x1 ;} ;} ;} ;} ;for(var Ox290=0x1;Ox290<Ox40d;Ox290++){var Ox423=true;for(var Ox40f=0x0;Ox40f<Ox40c;Ox40f++){if(Table_GetCellFromMap(Ox3f8,Ox40f,Ox290-0x1)!=Table_GetCellFromMap(Ox3f8,Ox40f,Ox290)){ Ox423=false ;break ;} ;} ;if(Ox423){for(var Ox40f=0x0;Ox40f<Ox40c;Ox40f++){var Ox28b=Table_GetCellFromMap(Ox3f8,Ox40f,Ox290);if(Ox28b){if(Ox28b[OxO4ba7[0x4]]>0x1){ Ox28b[OxO4ba7[0x4]]=Ox28b[OxO4ba7[0x4]]-0x1 ;} ; Ox40f+=Ox28b[OxO4ba7[0x0]]-0x1 ;} ;} ;} ;} ;}  ; function Table_SubRow(Ox28b){var Ox289=Table_GetTable(Ox28b);var Ox4=Table_CalculateTableInfo(Ox289);var Ox3f8=Ox4[OxO4ba7[0x7]];var Ox40d=Ox4[OxO4ba7[0x12]];var Ox40c=Ox4[OxO4ba7[0x11]];if(Ox40c==0x0){return ;} ;var Ox425={};var Ox40f=Ox40c-0x1;for(var Ox290=0x0;Ox290<Ox40d;Ox290++){var Ox28b=Table_GetCellFromMap(Ox3f8,Ox40f,Ox290);if(Ox28b){if(Ox425[Ox28b[OxO4ba7[0x18]]]){continue ;} ; Ox425[Ox28b[OxO4ba7[0x18]]]=true ;if(Ox28b[OxO4ba7[0x0]]==0x1){ Element_RemoveNode(Ox28b,true) ;} else { Ox28b[OxO4ba7[0x0]]=Ox28b[OxO4ba7[0x0]]-0x1 ;} ;} ;} ; Ox4[OxO4ba7[0x11]]-- ; Table_CleanUpTableInfo(Ox289,Ox4) ;}  ; function Table_CanAddColSpan(Ox28b){var Ox289=Table_GetTable(Ox28b);var Ox4=Table_CalculateTableInfo(Ox289);var Ox3f8=Ox4[OxO4ba7[0x7]];var Ox182=Table_GetCellPositionFromMap(Ox3f8,Ox28b);var Ox427=0x0;for(var Oxf=0x0;Oxf<Ox28b[OxO4ba7[0x0]];Oxf++){var Ox41e=Table_GetCellFromMap(Ox3f8,Ox182[OxO4ba7[0x8]]+Oxf,Ox182[OxO4ba7[0xc]]+Ox28b.colSpan);if(Ox41e==null){return false;} ;if(Ox427!=0x0&&Ox427!=Ox41e[OxO4ba7[0x4]]){return false;} ; Ox427=Ox41e[OxO4ba7[0x4]] ;var Ox41f=Table_GetCellPositionFromMap(Ox3f8,Ox41e);if(Ox41f[OxO4ba7[0x8]]<Ox182[OxO4ba7[0x8]]){return false;} ;if(Ox41f[OxO4ba7[0x8]]+Ox41e[OxO4ba7[0x0]]>Ox182[OxO4ba7[0x8]]+Ox28b[OxO4ba7[0x0]]){return false;} ;} ;return true;}  ; function Table_AddRowSpan(Ox28b){var Ox289=Table_GetTable(Ox28b);var Ox4=Table_CalculateTableInfo(Ox289);var Ox3f8=Ox4[OxO4ba7[0x7]];var Ox182=Table_GetCellPositionFromMap(Ox3f8,Ox28b);var Ox41d=0x0;for(var Ox1c6=0x0;Ox1c6<Ox28b[OxO4ba7[0x4]];Ox1c6++){var Ox41e=Table_GetCellFromMap(Ox3f8,Ox182[OxO4ba7[0x8]]+Ox28b[OxO4ba7[0x0]],Ox182[OxO4ba7[0xc]]+Ox1c6);if(Ox41d==0x0){ Ox41d=Ox41e[OxO4ba7[0x0]] ;} ; Element_RemoveNode(Ox41e,true) ;} ; Ox28b[OxO4ba7[0x0]]=Ox28b[OxO4ba7[0x0]]+Ox41d ;for(var Ox40f=0x0;Ox40f<Ox28b[OxO4ba7[0x0]];Ox40f++){for(var Ox290=0x0;Ox290<Ox28b[OxO4ba7[0x4]];Ox290++){ Ox4[OxO4ba7[0x7]][Ox182[OxO4ba7[0x8]]+Ox40f][Ox182[OxO4ba7[0xc]]+Ox290]=Ox28b ;} ;} ; Table_CleanUpTableInfo(Ox289,Ox4) ;}  ; function Table_AddColSpan(Ox28b){var Ox289=Table_GetTable(Ox28b);var Ox4=Table_CalculateTableInfo(Ox289);var Ox3f8=Ox4[OxO4ba7[0x7]];var Ox182=Table_GetCellPositionFromMap(Ox3f8,Ox28b);var Ox427=0x0;for(var Oxf=0x0;Oxf<Ox28b[OxO4ba7[0x0]];Oxf++){var Ox41e=Table_GetCellFromMap(Ox3f8,Ox182[OxO4ba7[0x8]]+Oxf,Ox182[OxO4ba7[0xc]]+Ox28b.colSpan);if(Ox427==0x0){ Ox427=Ox41e[OxO4ba7[0x4]] ;} ; Element_RemoveNode(Ox41e,true) ;} ; Ox28b[OxO4ba7[0x4]]+=Ox427 ;for(var Ox40f=0x0;Ox40f<Ox28b[OxO4ba7[0x0]];Ox40f++){for(var Ox290=0x0;Ox290<Ox28b[OxO4ba7[0x4]];Ox290++){ Ox4[OxO4ba7[0x7]][Ox182[OxO4ba7[0x8]]+Ox40f][Ox182[OxO4ba7[0xc]]+Ox290]=Ox28b ;} ;} ; Table_CleanUpTableInfo(Ox289,Ox4) ;}  ; function Table_SubCol(Ox28b){var Ox289=Table_GetTable(Ox28b);var Ox4=Table_CalculateTableInfo(Ox289);var Ox3f8=Ox4[OxO4ba7[0x7]];var Ox40d=Ox4[OxO4ba7[0x12]];var Ox40c=Ox4[OxO4ba7[0x11]];if(Ox40c==0x0){return ;} ;var Ox425={};var Ox290=Ox40d-0x1;for(var Ox40f=0x0;Ox40f<Ox40c;Ox40f++){var Ox28b=Table_GetCellFromMap(Ox3f8,Ox40f,Ox290);if(Ox425[Ox28b[OxO4ba7[0x18]]]){continue ;} ; Ox425[Ox28b[OxO4ba7[0x18]]]=true ;if(Ox28b[OxO4ba7[0x4]]==0x1){ Element_RemoveNode(Ox28b,true) ;} else { Ox28b[OxO4ba7[0x4]]=Ox28b[OxO4ba7[0x4]]-0x1 ;} ;} ; Ox4[OxO4ba7[0x12]]-- ; Table_CleanUpTableInfo(Ox289,Ox4) ;}  ;var richDropDown=Window_GetElement(window,OxO4ba7[0x19],true);var list_Templates=Window_GetElement(window,OxO4ba7[0x1a],true);var subcolumns=Window_GetElement(window,OxO4ba7[0x1b],true);var addcolumns=Window_GetElement(window,OxO4ba7[0x1c],true);var subcolspan=Window_GetElement(window,OxO4ba7[0x1d],true);var addcolspan=Window_GetElement(window,OxO4ba7[0x1e],true);var btn_row_dialog=Window_GetElement(window,OxO4ba7[0x1f],true);var btn_cell_dialog=Window_GetElement(window,OxO4ba7[0x20],true);var inp_cell_width=Window_GetElement(window,OxO4ba7[0x21],true);var inp_cell_height=Window_GetElement(window,OxO4ba7[0x22],true);var btn_cell_editcell=Window_GetElement(window,OxO4ba7[0x23],true);var tabledesign=Window_GetElement(window,OxO4ba7[0x24],true);var subrows=Window_GetElement(window,OxO4ba7[0x25],true);var addrows=Window_GetElement(window,OxO4ba7[0x26],true);var subrowspan=Window_GetElement(window,OxO4ba7[0x27],true);var addrowspan=Window_GetElement(window,OxO4ba7[0x28],true); btn_cell_editcell[OxO4ba7[0x2a]][OxO4ba7[0x29]]=OxO4ba7[0x2b] ; UpdateState=function UpdateState_InsertTable(){ btn_cell_editcell[OxO4ba7[0x2c]]=btn_row_dialog[OxO4ba7[0x2c]]=btn_cell_dialog[OxO4ba7[0x2c]]=GetElementCell()==null ;}  ; SyncToView=function SyncToView_InsertTable(){var Ox43d=GetElementCell();if(Ox43d){ inp_cell_width[OxO4ba7[0x2e]]=Ox43d[OxO4ba7[0x2d]] ; inp_cell_height[OxO4ba7[0x2e]]=Ox43d[OxO4ba7[0x2f]] ;} ;}  ; SyncTo=function SyncTo_InsertTable(element){var Ox43d=GetElementCell();if(Ox43d){try{ Ox43d[OxO4ba7[0x2d]]=inp_cell_width[OxO4ba7[0x2e]] ; Ox43d[OxO4ba7[0x2f]]=inp_cell_height[OxO4ba7[0x2e]] ;} catch(er){ alert(OxO4ba7[0x30]) ;} ;} ;}  ; function selectTemplate(Oxfc){var Ox440=OxO4ba7[0x31];switch(Oxfc){case 0x1: Ox440=OxO4ba7[0x32] ;break ;case 0x2: Ox440=OxO4ba7[0x33] ;break ;case 0x3: Ox440=OxO4ba7[0x34] ;break ;case 0x4: Ox440=OxO4ba7[0x35] ; Ox440=Ox440+OxO4ba7[0x36] ; Ox440=Ox440+OxO4ba7[0x37] ;break ;case 0x5: Ox440=OxO4ba7[0x35] ; Ox440=Ox440+OxO4ba7[0x38] ;break ;case 0x6: Ox440=OxO4ba7[0x39] ; Ox440=Ox440+OxO4ba7[0x3a] ; Ox440=Ox440+OxO4ba7[0x3b] ;break ;default:break ;;;;;;;;} ;try{var Oxdd=document.createElement(OxO4ba7[0x3c]); Oxdd[OxO4ba7[0xd]]=Ox440 ;var Ox289=Oxdd.children(0x0); ApplyTable(Ox289,element) ; ApplyTable(Ox289,tabledesign) ; HandleTableChanged() ; hidePopup() ;} catch(x){} ;}  ; subcolumns[OxO4ba7[0x3d]]=function subcolumns_onclick(){ Table_SubCol(GetElementCell()) ; Table_SubCol(currentcell) ; HandleTableChanged() ;}  ; addcolumns[OxO4ba7[0x3d]]=function addcolumns_onclick(){ Table_AddCol(GetElementCell()) ; Table_AddCol(currentcell) ; HandleTableChanged() ;}  ; subrows[OxO4ba7[0x3d]]=function subrows_onclick(){ Table_SubRow(GetElementCell()) ; Table_SubRow(currentcell) ; HandleTableChanged() ;}  ; addrows[OxO4ba7[0x3d]]=function addrows_onclick(){ Table_AddRow(currentcell) ; Table_AddRow(GetElementCell()) ; HandleTableChanged() ;}  ; subcolspan[OxO4ba7[0x3d]]=function subcolspan_onclick(){ Table_SubColSpan(GetElementCell()) ; Table_SubColSpan(currentcell) ; HandleTableChanged() ;}  ; addcolspan[OxO4ba7[0x3d]]=function addcolspan_onclick(){ Table_AddColSpan(GetElementCell()) ; Table_AddColSpan(currentcell) ; HandleTableChanged() ;}  ; subrowspan[OxO4ba7[0x3d]]=function subrowspan_onclick(){ Table_SubRowSpan(GetElementCell()) ; Table_SubRowSpan(currentcell) ; HandleTableChanged() ;}  ; addrowspan[OxO4ba7[0x3d]]=function addrowspan_onclick(){ Table_AddRowSpan(GetElementCell()) ; Table_AddRowSpan(currentcell) ; HandleTableChanged() ;}  ; function InitDesignTableCells(){for(var Oxf=0x0;Oxf<tabledesign[OxO4ba7[0x9]][OxO4ba7[0xa]];Oxf++){var Ox279=tabledesign[OxO4ba7[0x9]][Oxf];for(var Ox1c6=0x0;Ox1c6<Ox279[OxO4ba7[0xb]][OxO4ba7[0xa]];Ox1c6++){var Ox28b=Ox279[OxO4ba7[0xb]][Ox1c6]; Ox28b.removeAttribute(OxO4ba7[0x2d]) ; Ox28b.removeAttribute(OxO4ba7[0x2f]) ; Ox28b[OxO4ba7[0x2d]]=OxO4ba7[0x31] ; Ox28b[OxO4ba7[0x2f]]=OxO4ba7[0x31] ;if(Browser_IsWinIE()){ Ox28b[OxO4ba7[0x41]]=document[OxO4ba7[0x40]][OxO4ba7[0x3f]][OxO4ba7[0x3e]] ;} else { Ox28b[OxO4ba7[0x41]]=document[OxO4ba7[0x40]][OxO4ba7[0x2a]][OxO4ba7[0x3e]] ;} ; Ox28b[OxO4ba7[0x42]]=cell_mouseover ; Ox28b[OxO4ba7[0x43]]=cell_mouseout ; Ox28b[OxO4ba7[0x3d]]=cell_click ; Ox28b[OxO4ba7[0x44]]=cell_dblclick ;} ;} ;}  ; function Element_Contains(element,Ox231){if(!Browser_IsOpera()){if(element[OxO4ba7[0x45]]){return element.contains(Ox231);} ;} ;for(;Ox231!=null;Ox231=Ox231[OxO4ba7[0x2]]){if(element==Ox231){return true;} ;} ;return false;}  ; function HandleTableChanged(){if(!Element_Contains(tabledesign,currentcell)){ SetCurrentCell(tabledesign.rows(0x0).cells(0x0)) ;} ; InitDesignTableCells() ; UpdateButtonStates() ;}  ; function cell_mouseover(){var Ox28b=this; Ox28b[OxO4ba7[0x2a]][OxO4ba7[0x3e]]=OxO4ba7[0x46] ;}  ; function cell_mouseout(){var Ox28b=this;if(Browser_IsWinIE()){ Ox28b[OxO4ba7[0x2a]][OxO4ba7[0x3e]]=document[OxO4ba7[0x40]][OxO4ba7[0x3f]][OxO4ba7[0x3e]] ;} else { Ox28b[OxO4ba7[0x2a]][OxO4ba7[0x3e]]=document[OxO4ba7[0x40]][OxO4ba7[0x2a]][OxO4ba7[0x3e]] ;} ;}  ; function cell_click(){var Ox28b=this; SetCurrentCell(Ox28b) ;}  ; function cell_dblclick(){var Ox28b=this; SetCurrentCell(Ox28b) ;}  ; btn_cell_editcell[OxO4ba7[0x3d]]=function btn_cell_editcell_onclick(){var Ox28b=GetElementCell();var Ox98=editor.EditInWindow(Ox28b.innerHTML,window);if(Ox98!=null&&Ox98!=false){ Ox28b[OxO4ba7[0xd]]=Ox98 ;} ;}  ; btn_cell_dialog[OxO4ba7[0x3d]]=function btn_cell_dialog_onclick(){ editor.SetNextDialogWindow(window) ; editor.ShowTagDialogWithNoCancellable(GetElementCell()) ;}  ; btn_row_dialog[OxO4ba7[0x3d]]=function btn_row_dialog_onclick(){ editor.SetNextDialogWindow(window) ; editor.ShowTagDialogWithNoCancellable(GetElementCell().parentNode) ;}  ;var currentcell=null; function GetElementCell(){if(currentcell==null){return null;} ;return element[OxO4ba7[0x9]][currentcell[OxO4ba7[0x2]][OxO4ba7[0x8]]][OxO4ba7[0xb]][currentcell[OxO4ba7[0xc]]];}  ; function SetCurrentCell(Ox28b){if(currentcell!=null){if(Browser_IsWinIE()){ currentcell[OxO4ba7[0x48]][OxO4ba7[0x47]]=OxO4ba7[0x31] ;} else { currentcell[OxO4ba7[0x2a]][OxO4ba7[0x47]]=OxO4ba7[0x31] ;} ;} ; currentcell=Ox28b ;if(Browser_IsWinIE()){ currentcell[OxO4ba7[0x48]][OxO4ba7[0x47]]=OxO4ba7[0x49] ;} else { currentcell[OxO4ba7[0x2a]][OxO4ba7[0x47]]=OxO4ba7[0x49] ;} ; UpdateButtonStates() ; SyncToViewInternal() ;}  ; function UpdateButtonStates(){ subcolspan[OxO4ba7[0x2c]]=!Table_CanSubColSpan(currentcell) ; addcolspan[OxO4ba7[0x2c]]=!Table_CanAddColSpan(currentcell) ; subrowspan[OxO4ba7[0x2c]]=!Table_CanSubRowSpan(currentcell) ; addrowspan[OxO4ba7[0x2c]]=!Table_CanAddRowSpan(currentcell) ; subrows[OxO4ba7[0x2c]]=Table_GetRowCount(currentcell)<0x2 ; subcolumns[OxO4ba7[0x2c]]=Table_GetColCount(currentcell)<0x2 ;}  ; function ApplyTable(src,Ox457){if(Browser_IsSafari()){ Ox457[OxO4ba7[0x2a]][OxO4ba7[0x2f]]=OxO4ba7[0x31] ;} ;for(var Oxf=Ox457[OxO4ba7[0x9]][OxO4ba7[0xa]]-0x1;Oxf>=0x0;Oxf--){ Ox457[OxO4ba7[0x9]][Oxf].removeNode(true) ;} ;for(var Oxf=0x0;Oxf<src[OxO4ba7[0x9]][OxO4ba7[0xa]];Oxf++){var Ox458=src[OxO4ba7[0x9]][Oxf];var Ox459;if(!Browser_IsSafari()){ Ox459=Ox457.insertRow(-0x1) ;} else {var Ox2c6=document.createElement(OxO4ba7[0x17]); Ox457.appendChild(Ox2c6) ; Ox459=Ox2c6.insertRow(-0x1) ;} ; Ox459[OxO4ba7[0x2a]][OxO4ba7[0x47]]=Ox458[OxO4ba7[0x2a]][OxO4ba7[0x47]] ;for(var Ox1c6=0x0;Ox1c6<Ox458[OxO4ba7[0xb]][OxO4ba7[0xa]];Ox1c6++){var Ox45a=Ox458[OxO4ba7[0xb]][Ox1c6];var Ox45b=Ox459.insertCell(-0x1); Ox45b[OxO4ba7[0x0]]=Ox45a[OxO4ba7[0x0]] ; Ox45b[OxO4ba7[0x4]]=Ox45a[OxO4ba7[0x4]] ; Ox45b[OxO4ba7[0x2a]][OxO4ba7[0x47]]=Ox45a[OxO4ba7[0x2a]][OxO4ba7[0x47]] ;if(Browser_IsOpera()){ Ox45b[OxO4ba7[0xd]]=OxO4ba7[0xe] ;} else {if(Browser_IsGecko()||Browser_IsSafari()){ Ox45b[OxO4ba7[0xd]]=OxO4ba7[0xf] ;} ;} ;} ;} ;}  ; window[OxO4ba7[0x4a]]=function window_onload(){ ApplyTable(element,tabledesign) ; InitDesignTableCells() ; SetCurrentCell(tabledesign[OxO4ba7[0x9]][0x0][OxO4ba7[0xb]][0x0]) ;}  ; function updateList(){}  ;var oPopup;if(Browser_IsWinIE()){ oPopup=window.createPopup() ;} else { richDropDown[OxO4ba7[0x2a]][OxO4ba7[0x29]]=OxO4ba7[0x2b] ;} ; function selectTemplates(){if(Browser_IsWinIE()){ oPopup[OxO4ba7[0x4b]][OxO4ba7[0x40]][OxO4ba7[0xd]]=list_Templates[OxO4ba7[0xd]] ; oPopup[OxO4ba7[0x4b]][OxO4ba7[0x40]][OxO4ba7[0x2a]][OxO4ba7[0x4c]]=OxO4ba7[0x4d] ; oPopup.show(0x0,0x20,0x17c,0xdc,richDropDown) ;} ;}  ; function hidePopup(){if(Browser_IsWinIE()){if(oPopup){if(oPopup[OxO4ba7[0x4e]]){ oPopup.hide() ;} ;} ;} ;}  ;