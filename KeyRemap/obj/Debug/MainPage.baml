   M S B A M L   `   `   `  ????D  @MKeyRemap, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KeyRemapKeyRemap  5      I EXamlFlair.WPF, Version=1.2.13.0, Culture=neutral, PublicKeyToken=null<.clr-namespace:XamlFlair;assembly=XamlFlair.WPF	XamlFlair 5          KeyRemap.MainPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:KeyRemap     5      =xf.clr-namespace:XamlFlair;assembly=XamlFlair.WPF     5      -   5        $??
MenuWindow??5      $	??540??5	      $	??660??6     N? Title$  MainPage??5
       ? 	Resources 5         PressedBrush ?? Color  StandardBorderBrush  StandardBackgroundBrush  HoverBorderBrush  SelectedBackgroundBrush  SelectedForegroundBrush  DisabledForegroundBrush  
GlyphBrush  NormalBrush 	 NormalBorderBrush 
 HorizontalNormalBrush  HorizontalNormalBorderBrush  ScrollBarLineButton ?? 
TargetType ?? Property ?? Value ?? 
TargetType ?? CornerRadius ?? Path	 ?? RelativeSource
 ?? Triggers P? Property P? Value ?? 
TargetName  ScrollBarPageButton  ScrollBarThumb  VerticalScrollBar ? RowDefinitions ]? DecreaseRepeatButton ]? Thumb ]? IncreaseRepeatButton  HorizontalScrollBar ? ColumnDefinitions ?? Triggers  FavsScrollViewer ?? VerticalOffset ? Value ?? ScrollableHeight ? Maximum ?? ViewportHeight ?? ViewportSize* ?? #ComputedVerticalScrollBarVisibility ?? Orientation ?? HorizontalOffset ?? ScrollableWidth ?? ViewportWidth, ?? %ComputedHorizontalScrollBarVisibility?? 5   
   %?  &	        &	      &	 <     &	 [     &	 y     &	 ?     &	 ?     &	 ?     &	 ?     &		     &	
 .    &	 Q    &	 o    7  7 	 7  7   7  &	     &	 ?    &	     7  7  7  7 
 7  7  7  &	 ?	    7  7  7  7  7 	 7  7  '?? ?    7  7  &	 ?    ?? 5      $
 #888??63   ?? 5      $
 #888??6:   ?? 5      $ Black??6>   ?? 5      $
 #DDD??67   ?? 5      $
 Gray??6>   ?? 5      $ White??6>   ?? 5      $
 #888??6>   ?? 5      $
 #444??61   ?? 5      $
 #888??62   ?? 5      $
 #888??68   ?? 5      $ 	#FF686868??6<   ?? 5      $
 #888??6B   ?? 5      " ??60   .?5      ??  ? y?$ Hidden=?6/   ?? 5       ?@J?SnapsToDevicePixels . 68   ?? 5       ?@?OverridesDefaultStyle . 6:   ?? 5       ? |? .  6.   ?? 5       ? ?? 5       ?? 5!      " ??6*   .R?5"      ?? $??Border??6%   $??1q?63   $ 2??6>   8??  8?? $??1q?6?   ._?5#   "   F? $??Center=?6'   $??Center=?6D   8?? ??6?   ?? $ Content?	 ?? *TemplatedParent+5$      
 5%      P? 5&   "    ? ?? . . ?5'   &   ?? $ Border??6-   8   ? ??6W   5(   #   P? 5)   "    ? {? .  . ?5*   &   ?? 8   ? ??6C   5+   #   5-      5/      50      ?? 51      " ??60   .?52      ??  ? y?$ Hidden=?6/   ?? 53       ?@J?SnapsToDevicePixels . 68   ?? 54       ?@?OverridesDefaultStyle . 6:   ?? 55       ? ?? .  6.   ?? 56       ? |? .  6.   ?? 57       ? ?? 58      ?? 59      " ??6*   .R?5:      ?? 
???   ?6%   5;      5=      5>      ?? 5@      " n?6+   .?5A      ??  ?@J?SnapsToDevicePixels . 68   ?? 5B       ?@?OverridesDefaultStyle . 6:   ?? 5C       ? ?? .  6.   ?? 5D       ? |? .  6.   ?? 5E       ? ?? 5F      ?? 5G      " n?6*   .R?5H      ?? $ 4??6%   #??z??66   #??z??6`   $??0q?6?   $??4??6?   $??8,0,-2,0q?6?   5I      5K      5L      ?? 5N      " ??68   .R?5O      ?  5P      ?? 5Q      $??0??6(   ?? 5R      $??0.00001* ?6(   ?? 5S      $??0??6(   .+?5U      ?? $??3??6   $ 2??6.   
?????? 6?   ?? 5V      $??0??6#   8??  $??18??6]   $??ScrollBar.LineUpCommand??6i   $??M 0 4 L 8 4 L 4 0 Z??6?   ]? 5W      $??
PART_Track??6   $??1??6.   ??.  5X      ?? 5Y      8?? $??ScrollBar.PageUpCommand??6X    5[      n? 5\      8?? $??1,0,1,0q?6L   8?? 8?? 6?    5^      ?? 5_      8?? $??ScrollBar.PageDownCommand??6X   5a      ?? 5b      $??3??6#   8?? $??18??6]   $??ScrollBar.LineDownCommand??6i   $??M 0 0 L 4 4 L 8 0 Z??6?   5c      5d      ?? 5e      " ??6:   .R?5f      ?  5g      ?? 5h      $??18??6+   ?? 5i      $??0.00001* ?6+   ?? 5j      $??18??6+   .+?5l      ?? $??3??6   $ 2??61   ???#F0F0F06B   ?? 5m      $??0??6#   8??  $??18??6a   $??ScrollBar.LineLeftCommand??6l   $??M 4 0 L 4 8 L 0 4 Z??6?   ]? 5n      $??
PART_Track??6   $??1??6.   ??.   5o      ?? 5p      8?? $??ScrollBar.PageLeftCommand??6X    5r      n? 5s      8?? $??0,1,0,1q?6L   8?? 8?? 6?    5u      ?? 5v      8?? $ ??ScrollBar.PageRightCommand??6X   5x      ?? 5y      $??3??6#   8?? $??18??6`   $ ??ScrollBar.LineRightCommand??6k   $??M 0 0 L 4 4 L 0 8 Z??6?   5z      5{      ?? 5|      " ??6/   .?5}      ??  ?@J?SnapsToDevicePixels . 68   ?? 5~       ?@?OverridesDefaultStyle . 6:    5      P? 5?       ?@??Orientation$ 
Horizontal=?65   . ?5?      ??  ? ??$
 Auto??62   ?? 5?       ? ??$ 18??63   ?? 5?       ? ??8   65   5?      P? 5?       ?@??Orientation$ Vertical=?65   . ?5?      ??  ? ??$ 18??62   ?? 5?       ? ??$
 Auto??63   ?? 5?       ? ??8  65   5?      5?      ?? 5?      " ??6-   .?5?      ??  ?@?OverridesDefaultStyle . 6:   ?? 5?       ? ?? 5?      ?? 5?      " ??6*   .R?5?      ?  5?   "   ?? 5?   &   $
??Auto ?67   ?? 5?   &    5?   "   ?? 5?   &   ?? 5?   &   $
??Auto ?64   .+?5?   "   ?? $??1??69   ?? 5?   "   $??PART_VerticalScrollBar??6,   # z 6J   # z 6s   # z 6?   #y?z 6?   ?? 5?   "   $??PART_HorizontalScrollBar??6,   $ 
Horizontal=?6L   $??1??6e   $??1??6r   # z 6?   # z 6?   # z 6?   #y?z 6  5?      5?      5?      5?      5?      .??5?      ?? -   5        $??ContainerCanvas??5?        XamlFlair.Animations    PrimaryBinding  5?      ?? *BinderSettingsOpened+! ?? UpdateSourceTrigger$! PropertyChanged=?"   Primary" 5?         XamlFlair.AnimateExtension   
 FadeIn#   BasedOn## [ $   Duration$	$ 500Q?%   Event$
% None??.+?5?   
   ?? -   5        $??	Container??5?      $	??540??6%   $	??Top=?62   $??3??6J   $??3??6^   $	??660??6o   ??5?      ?? 5?      $ 	#FF1E2126??6"   & ?? Opacity$& 0Q?64   5?      ?? 5?   
   -   5        $??BodyBackground??5?      ' ?? RadiusX$' 10??6*   ( ?? RadiusY$( 10??67   $	??409??6D   $	??Top=?6Q   ???	#FF1E2126???	#FF292C31) ?? Left$) 20??6?   
* ?? Top$	* 113??6?   $??3??6?   $??3??6?   $	??619??6?   6?   ?? 5?   
   -   5        $??Handle??5?      $??39??6   $	??660??6+   
???   ?+ J? Opacity$+ 0Q?6{   ?? 5?   
   -   5        $??
ScrollView??5?      $	??103??6)   $) 23??66   $	* 121??6G   $	??629??6X   .??5?      ?? -   5        $??ScrollContainer??5?      $??93??6-   .+?5?      ? -   5        $??BodyContainer??5?      $??87??6,   $	??602??68   $) 7??6D   $* 6??6T    5?      ?? 5?      $??60 ?6(    5?      ?? 5?      $??54 ?6+   ?? 5?      $	??246 ?6+   ?? 5?      $??32 ?6+   ?? 5?      $	??270 ?6+   5?      5?      5?      ?? 5?   
   -	   5        , ??Name$, CloseButton??5?      $
??Left=?6)   $??22??6D   $	??Top=?6P   $??22??6h   - ? Cursor$
- Hand??6?   $	) 618??6?   $* 9??6?   ??5?      ?? 5?      . ?? ImageSource$. image/close_ring.png??6   5?      ?? 5?   
   -
   5        $, MinimizeButton??5?      $
??Left=?6,   $??22??6G   $	??Top=?6S   $??22??6k   $
- Hand??6v   $	) 579??6?   $* 9??6?   ??5?      ?? 5?      $. image/Remove.png??6   5?      ?? 5?   
   -   5        $??	AddButton??5?      $
??Left=?6&   $??51??6A   $	??Top=?6M   $??51??6e   $
- Hand??6?   $) 34??6?   $* 56??6?   /   CombinedBinding/ 5?      ?? *IsMouseOver+0 ?? ElementName$0 	AddButton??" 5?          Grow## [ $
% None??1   	Secondary1 5?         
 Shrink## [ $
% None??2   	StartWith2 5?        ## [ ??5?      ?? 5?      3 ?? BitmapScalingMode$3 NearestNeighbor=?6   $. image/add.png??6O   4 j? Stretch$4 Uniform=?6k   5?      ?? 5?   
   -   5        $, PauseButton??5?      $
??Left=?6*   $??48??6E   $	??Top=?6Q   $??48??6i   $
- Hand??6t   $	) 503??6?   $* 56??6?   5 J? RenderTransformOrigin$5 0.5,0.5&?6?   $	+ 0.9Q?6?     5?      ?? *IsMouseOver+$0 PauseButton??" 5?        ## [ $
% None??6   SecondaryBinding6 5?      ?? *BinderPause+1 5?        ## [ $
% None??2 5?        ## [ ??5?      ?? 5?      $3 NearestNeighbor=?6   $. image/pause.png??6O   $4 Uniform=?6m   5?      ?? 5?   
   -   5        $??
EditButton??5?      $
??Left=?6'   $??49??6B   $	??Top=?6N   $??49??6f   $	) 105??6?   $* 58??6?   $5 0.809,0.512&?6  $	+ 0.2Q?62  / 5?      ?? *
BinderEdit+$! PropertyChanged=?" 5?        ## [ $
% None??1 5?        ## [ $
% None??2 5?          Shrinker## [ $
% None????5?      ?? 5?      $3 NearestNeighbor=?6   $. image/edit.png??6O   $4 Uniform=?6l   5?      ?? 5?   
   -   5        $, DeleteButton??5?      $
??Left=?6+   $??48??6F   $	??Top=?6R   $??48??6j   $	) 174??6?   $* 56??6  $	+ 0.2Q?6  / 5?      ?? *BinderDelete+$! PropertyChanged=?" 5?        ## [ $
% None??1 5?        ## [ $
% None??2 5?        ## [ $
% None????5?      ?? 5?      $3 NearestNeighbor=?6   $. image/trash.png??6O   $4 Uniform=?6m   5?      ?? 5?   
   -   5        $, SettingsButton??5?      $
??Left=?6-   $??46??6H   $	??Top=?6T   $??46??6l   $	) 572??6w   $* 57??6?   $+ 0.892Q?6?   / 5?      ?? *IsMouseOver+$0 SettingsButton??" 5?        ## [ $
% None??1 5?        ## [ $
% None??2 5?        ## [ ??5?      ?? 5?      $. image/Settings.png??6   5?      ?? 5?   
   $??2??6   $* 37??6   $	??660??6/   ???	#FF292C316;   5?      5?      