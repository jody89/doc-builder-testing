builder.CreateFile("docx");
var oDocument = Api.GetDocument();
oDocument.CreateNewHistoryPoint();
var oParagraph = Api.CreateParagraph();
oParagraph.SetShd("clear", 0, 255, 0, false);
oParagraph.AddText("Green");
oDocument.Push(oParagraph);
builder.SaveFile("docx", "add_text_with_backgroundcolor.docx");
builder.CloseFile();