   M S B A M L   `   `   `  ????D  @MKeyRemap, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KeyRemapKeyRemap  5      I EXamlFlair.WPF, Version=1.2.13.0, Culture=neutral, PublicKeyToken=null<.clr-namespace:XamlFlair;assembly=XamlFlair.WPF	XamlFlair 5          KeyRemap.SettingsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:KeyRemap     5      D	XamlFlair.clr-namespace:XamlFlair;assembly=XamlFlair.WPF     5      -   5          N?Name$  SettingsMenu??5      $	??540??5
      $	??660??6    N? Title$ Settings??5      |?.  ? 	Resources 5         SliderRepeatButton ?? 
TargetType ?? Property ?? Value ?? 
TargetType  SliderRepeatButton1 J? SnapsToDevicePixels  SliderThumb 
 Slider ? RowDefinitions	 ]?Name
 ]? DecreaseRepeatButton ]? Thumb ]? IncreaseRepeatButton  Horizontal_Slider ?? Triggers P? Property P? Value??%?  &	        &	 p    &	 ?    &	 ?    7  7  7   &	 <    7  ?? 5   
   " ??6+   .?5      ??  ?@J?SnapsToDevicePixels . 64   ?? 5       ?@?OverridesDefaultStyle . 66   ?? 5       ? ?? .  6*   ?? 5       ? |? .  6*   ?? 5       ? ?? 5      ?? 5      " ??6&   .R?5      ?? $??1q?6"   ???	#FF1D2025???	#FF292C31$??8??6e   5      5      5      ?? 5   
   " ??6,   .?5      ??  ?@J?SnapsToDevicePixels . 64   ?? 5       ?@?OverridesDefaultStyle . 66   ?? 5        ? ?? 5!      ?? 5"      " ??6&   .R?5#      ??  . ???#2774CD$??1q?6R   $??8??6f   5$      5&      5'      ?? 5)   
   " n?6$   .?5*      ??  ?@J?SnapsToDevicePixels . 64   ?? 5+       ?@?OverridesDefaultStyle . 66   ?? 5,       ? ?? 5-      ?? 5.      " n?6&   .R?5/      A? $??20??6"   $??20??6.   
???????6H   50      52      53      ?? 55   
   " ??6*   .R?56      ?  57      ?? 58      $
??Auto ?6$   ?? 59      $
??Auto ?6$   #??z??62   ?? 5:      $
??Auto ?6$   .+?5<      ]? $	 
PART_Track??6%   $??1??6   
 5=      ?? 5>      8??  $??Slider.DecreaseLarge??6U    5@      n? 5A      8?? 6     5C      ?? 5D      8?? $??Slider.IncreaseLarge??6S   5F      5G      5H      ?? 5J   
   " ??6*   .?5K      ??  ? |? .  6*   ?? 5L       ?@J?SnapsToDevicePixels . 64   ?? 5M       ?@?OverridesDefaultStyle . 66    5N      P? 5O       ?@??Orientation$ 
Horizontal=?61   . ?5P      ??  ? ??$ 21??62   ?? 5Q       ? ??$	 104??61   ?? 5R       ? ??8   61   5S      5U      5V      .??5W      ? -   5        $??SettingsContainer??5W        XamlFlair.Animations   PrimaryBinding 5X      ?? *BinderSettingsOpened+ ?? UpdateSourceTrigger$ PropertyChanged=?   Primary 5Y         XamlFlair.AnimateExtension   
 FadeIn   BasedOn# [    Duration$	 500Q?   Event$
 None??.+?5Z   
   ?? -   5         ??Name$ RunLabel??5Z   ?     SourceCodePro-Bold#??[ 6   $??Normal$?6E    ?? TextAlignment$ Center=?6X   $??CharacterEllipsis=?6o   $
??Wrap=?6?   $??RUN ON START-UP??6?   $??18(?6?   
???????$
??Bold"?6?   $??94,99,454,383q?6  ?? 5[   
   -   5        $ 
DelayLabel??5[   ?   #??[ 6   $??Normal$?6E   $ Center=?6X   $??CharacterEllipsis=?6o   $
??Wrap=?6?   $??HOTKEY DELAY??6?   $??18(?6?   
???????$
??Bold"?6?   $??94,240,454,234q?6   ?? 5]   
   -   5         ??Name$ ApplyButton??5`   	    ?? RadiusX$ 10??6    ?? RadiusY$ 10??6+   $
??Left=?68   $??45??6S   $	??Top=?6_   $	??115??6w   ???	#FF2774CD???	#FF34373B$??180,473,0,0q?6?      CombinedBinding 5]      ?? *IsMouseOver+ ?? ElementName$ ApplyButton?? 5^   	      
 Expand# [ $
 None??   	Secondary 5_   	       Contract# [ $
 None??5`   ?   ?? 5a   
   -   5        $ 	SaveLabel??5d   ?    	 SourceCodePro-Black#??[	 6	    J? IsHitTestVisible .  $ Center=?6T   $??CharacterEllipsis=?6k   $
??Wrap=?6?   $
??SAVE??6?   $??20(?6?   
???????$??199,481,384,7q?6?    5a      ?? *IsMouseOver+$ ApplyButton?? 5b   	     # [ $
 None?? 5c   	     # [ $
 None??5d   ?   ?? 5e   
   -   5        $ CancelButton??5h   	   $ 10??6   $ 10??6,   $
??Left=?69   $??45??6T   $	??Top=?6`   $	??115??6x   ???	#FF292C31???	#FF34373B$??366,473,0,0q?6?    5e      ?? *IsMouseOver+$ CancelButton?? 5f   	     # [ $
 None?? 5g   	     # [ $
 None??5h   ?   ?? 5i   
   -   5        $ CancelLabel??5l   ?   #??[	 6	    .  $ Center=?6T   $??CharacterEllipsis=?6k   $
??Wrap=?6?   $??CANCEL??6?   $??20(?6?   
???????$??382,481,196,7q?6?    5i      ?? *IsMouseOver+$ CancelButton?? 5j   	     # [ $
 None?? 5k   	     # [ $
 None??5l   ?   ?? 5m   
   -	   5        $ StartupCheckbox??5p      $ 10??6&   $ 10??63   $
??Left=?6@   $??45??6[   $	??Top=?6g   $??45??6   ???	#FF292C31???	#FF34373B$??
250,99,0,0q?6?    ? Cursor$
 Hand??6?    5m      ?? *BinderDelay+$ PropertyChanged=? 5n         
 Compound# [
 $
 None?? 5o        # [
 $
 None??5p   ?   ?? 5q   
   -
   5        $ StartupCheck??5q   )   $y?Hidden=?6   $ 10??6?   $ 10??6L   $
??Left=?6Y   $??45??6t   $	??Top=?6?   $??45??6?   $??
250,99,0,0q?6?   ??5r      ?? 5s        ?? ImageSource$  image/check.png??6   5u      ?? 5v   
     SourceCodePro#??[ 6   $??24(?6@   $??Right=?6?   $ Right=?6?   $??512,242,101,250q?6?   
?????????6N   ?? $ DelaySlider??! ?? Path$! Value?$ PropertyChanged=?6?   ?? 5w   
   -   5        $??DelaySlider??5w   ?   " ? Value$	" 100Q?6   #??[ 6   # ? Maximum$	# 300Q?6H   $ ?? TickPlacement$$ BottomRight=?6V   % ?? TickFrequency$% 20Q?6r   & ?? IsSnapToTickEnabled& . $??250,248,207,244q?6?   ?? 5x   
   -   5        $??Handle??5x      
???   ?' J? Opacity$' 0Q?6c   $??	0,0,0,490q?6o   ?? 5y   
   $??2??6   
( ?? Top$( 37??6   $	??660??6/   ???	#FF292C31$??
0,37,0,501q?6L   5z      5{      