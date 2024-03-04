uses FractalModule, graphABC, Controls;
var DEPTH: Integer = 5; // Глубина фрактала
FractalX, FractalY, FractalSize: Integer;
const MOVE_STEP = 10;
const ZOOM_STEP = 20;
const START_SIZE = 500;

// Обработчик событий клавиатуры
Procedure KeyDown(Key: Integer);
begin
  case Key of
    VK_LEFT: FractalX := FractalX - MOVE_STEP; // Продвигаемся влево
    VK_RIGHT: FractalX := FractalX + MOVE_STEP; // Продвигаемся вправо
    VK_UP: FractalY := FractalY - MOVE_STEP; // Продвигаемся вверх
    VK_DOWN: FractalY := FractalY + MOVE_STEP; // Продвигаемся вниз
    VK_SUBTRACT: FractalSize := FractalSize - ZOOM_STEP; // Уменьшаем размер
    VK_ADD: FractalSize := FractalSize + ZOOM_STEP; // Увеличиваем размер
  end; 
  ClearWindow; // Очищаем окно перед перерисовкой
  DrawCovrik(FractalX, FractalY, FractalSize, DEPTH); // Перерисовываем с новыми параметрами
end;

// Главная часть программы
begin
  FractalX := 50;
  FractalY := 50;
  FractalSize := START_SIZE;

  SetWindowCaption('Фрактал Ковер Серпинского');
  SetWindowSize(800, 800);
  OnKeyDown := KeyDown; // Устанавливаем обработчик событий клавиатуры
  { Рисуем фрактал Ковра Серпинского с начальными параметрами }
  DrawCovrik(FractalX, FractalY, FractalSize, DEPTH);
end.