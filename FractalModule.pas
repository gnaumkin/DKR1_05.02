unit FractalModule;

interface
uses graphABC;
const
  depth = 5; // глубина прорисовки
procedure DrawCovrik(x, y, size, depth: integer);
implementation
procedure DrawCover(x, y, size, depth: integer); // процедура для рекурсивного построения фрактала
begin
  if depth = 0 then
    exit
  else
  begin
    Pen.Color := clBlack;
    Rectangle(x, y, x + size, y + size);
    size := size div 3;

    DrawCover(x, y, size, depth - 1);
    DrawCover(x + size, y, size, depth - 1);
    DrawCover(x + 2 * size, y, size, depth - 1);
    
    DrawCover(x, y + size, size, depth - 1);
    DrawCover(x + 2 * size, y + size, size, depth - 1);
    
    DrawCover(x, y + 2 * size, size, depth - 1);
    DrawCover(x + size, y + 2 * size, size, depth - 1);
    DrawCover(x + 2 * size, y + 2 * size, size, depth - 1);
  end;
end;

procedure DrawCovrik(x, y, size, depth: integer);
begin
  DrawCover(x, y, size, depth);
end;

end.