   M S B A M L   `   `   `  ����O  KProductInformationDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:ProductInformationDBProductInformationDB  5   	   %    ProductInformationDB.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:ProductInformationDB     5   	     � Title$  ACME Corporation ��5   	   $	��683��6#   $
��1000��60    � 
ResizeMode$ NoResize=�6=    � Icon$ /ACME-Logo-small.jpg��6S   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��684* �6   �� 5      $
��317* �6    � RowDefinitions 5   
   �� 5      $��92 �6   �� 5      $
��283* �6   �� 5      $
��292* �6   .+�5   
   �� $��20(�6   $	��Top=�6   $��    ACME Corporation��66   $��34��6U   $��394,14,46,0q�6a   $
��Bold"�6v   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	ProductDG��5         AutoGenerateColumns$ False��6&      CanUserAddRows$ False��6B      
IsReadOnly$
 True��6Y   $��1��5      	   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$	 * 6    $��5,0,5,0q�60   $
 �� IsSynchronizedWithCurrentItem$

 TrueY�6A   $	��269��6f   $	��Top=�6s   $��2��6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
Product Id��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *Id+  5      $
 Name��6%    63   �� *Name+  5      $ Description��6%    6:   �� *Description+  5      $ Price��6%    64   �� *Price+  5      $
 Unit��6%    63   �� *Unit+4  .System.Windows.Controls.DataGridTemplateColumn  5       $ Edit Product��6)      CellTemplate 5!      �� 5"      .R�5#      �� -   5        $
��Edit��5#   %   64   5$      5&        5(      $ Delete Product��6)    5)      �� 5*      .R�5+      �� -   5        $��Delete��5+   %   66   5,      5.      50      � 52   
   $��2��6   $��2��6   $��0,10,0,0q�60    53      �� 54      �� 55      .+�58      �� $��0��6   $��5q�6%   $��1q�60   
���   �._�59      �� $��5q�6   .+�5:      �� $��Add new product��6   $
��Bold"�66   $��Center=�5;      $��Center=�5<      $��5q�63   � 5>      -   5        $��NewProductGrid��5>       5?      �� 5@      �� 5A      �� 5B      �� 5C      �� 5D       5G      �� 5H      �� 5I      .+�5L      �� $��0��6    $��0��6-   $��Product Name��6=   �� 5M      $��0��6"   $��1��6/   ��6?   �� *Name+�� 5O      $��1��6    $��0��6-   $��Description��6=   �� 5P      $��1��6"   $��2��6/   ��6?   �� *Description+�� 5R      $��2��6    $��0��6-   $��Price��6=   �� 5S      $��2��6"   $��3��6/   ��6?   �� *Price+�� 5U      $��3��6    $��0��6-   $��Units��6=   �� 5V      $��3��6"   $��4��6/   ��6?   �� *Unit+�� 5X      -   5        $��4��5X   !   $��2��6.   $	��150��6B   $	��Add��6N   $��
163,47,0,0q�6\   $
��Left=�5Y      $	��Top=�68    J� RenderTransformOrigin$ 0.474,0.828&�6P   5Z      5\      5]      �� 5_      $��1��6   $��5q�6%   $��1q�60   
���   �._�5`      �� $��5q�6   .+�5a      �� $��Edit product��6   $
��Bold"�63   $��Center=�5b      $��Center=�5c      $��5q�63   � 5e      -   5        $��UpdateProductGrid��5e       5f      �� 5g      �� 5h      �� 5i      �� 5j      �� 5k       5n      �� 5o      �� 5p      .+�5s      �� $��0��6    $��0��6-   $��Product Name��6=   �� 5t      $��0��6"   $��1��6/   ��6?   �� *Name+�� 5v      $��1��6    $��0��6-   $��Description��6=   �� 5w      $��1��6"   $��2��6/   ��6?   �� *Description+�� 5y      $��2��6    $��0��6-   $��Price��6=   �� 5z      $��2��6"   $��3��6/   ��6?   �� *Price+�� 5|      $��3��6    $��0��6-   $��Units��6=   �� 5}      $��3��6"   $��4��6/   ��6?   �� *Unit+�� 5      -   5        $��4��5   !   $��2��6.   $	��150��6B   $
��Edit��5�   !   $��
164,49,0,0q�60   $
��Left=�5�      $	��Top=�68   5�      5�      5�      5�      �� 5�   
   $��18(�6   $	��Top=�6   $"��Product Information Database��66   $��34��6]   $��380,48,24,0q�6i   �� 5�   
   $
��Left=�6   $��72��6+   $��31,0,0,0q�67   $��Center=�6I   $��65��6d   $��/ACME-Logo.jpg��6o   $��Uniform=�6�   5�      5�      