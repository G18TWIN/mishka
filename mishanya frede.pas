uses graphabc;
var x,y:integer;
    f:boolean;
procedure klavisha(key:integer);
begin
  case key of
    VK_Up:if y>30 then y:=y-10;
    VK_Down:if y<windowheight-30 then y:=y+10;
    VK_Left:if x>30 then x:=x-10;
    VK_Right:if y<windowwidth-30 then x:=x+10;
    VK_Escape:begin
             CloseWindow;
             f:=false;
             end;
  end;
end;
procedure sharic;
begin
  SetBrushColor(clBrown);
  circle(x,y,20);
  line(x,y+20,x,y+20+100);
  line(x,y+20+10,x-50,y+20+50);
  line(x,y+20+10,x+50,y+20+50);
end;
begin
  f:=true;
  x:=windowwidth div 2;
  y:=windowheight div 2;
  lockdrawing;
  repeat
    clearwindow;
      OnKeyDown:=klavisha;
      sharic;
      sleep(50);
      redraw;
  until not f;
end.
