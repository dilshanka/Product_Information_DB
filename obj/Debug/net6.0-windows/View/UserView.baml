   M S B A M L   `   `   `  ����O  KProductInformationDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:ProductInformationDB.ViewProductInformationDB.View  5      (    "ProductInformationDB.View.UserView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:ProductInformationDB.View     5      $	��683��5      $
��1000��6   
�������.��5	      �   � ColumnDefinitions  5
   
   �� 5      $
��684* �6   �� 5      $
��317* �6    � RowDefinitions 5   
   �� 5      $��92 �6   �� 5      $
��283* �6   �� 5      $
��292* �6   .+�5   
   �� $��20(�6   $	��Top=�6   $��    ACME Corporation��66   $��34��6U   $��394,14,46,0q�6a   $
��Bold"�6v   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	ProductDG��5   \      AutoGenerateColumns$ False��6o      CanUserAddRows$ False��6�      
IsReadOnly$
 True��6�   $��1��5         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6    $��5,0,5,0q�60   $ �� IsSynchronizedWithCurrentItem$
 TrueY�6A   $	��269��6f   $	��Top=�6s   $��2��6�   ��5      �� *
Products+ �� SelectedItem 64   �� *CurrentProduct+	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 
Product Id��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *Id+  5      $

 Name��6%    63   �� *Name+  5      $
 Description��6%    6:   �� *Description+  5      $
 Price��6%    64   �� *Price+  5      $

 Unit��6%    63   �� *Unit+5       � 5"   
   $��2��6   $��2��6   $��0,10,0,0q�60     5#      �� 5$      �� 5%      .+�5(      �� $��0��6   $��5q�6%   $��1q�60   
���   �._�5)      �� $��5q�6   .+�5*      �� $��Add new product��6   $
��Bold"�66   $��Center=�5+      $��Center=�5,      $��5q�63   � 5.      -   5        $��NewProductGrid��5.       5/      �� 50      �� 51      �� 52      �� 53      �� 54        57      �� 58      �� 59      .+�5<      �� $��0��6    $��0��6-   $��Product Name��6=   �� 5=      $��0��6"   $��1��6/   ��6?   �� *Name+�� 5?      $��1��6    $��0��6-   $��Description��6=   �� 5@      $��1��6"   $��2��6/   ��6?   �� *Description+�� 5B      $��2��6    $��0��6-   $��Price��6=   �� 5C      $��2��6"   $��3��6/   ��6?   �� *Price+�� 5E      $��3��6    $��0��6-   $��Units��6=   �� 5F      $��3��6"   $��4��6/   ��6?   �� *Amount+�� 5H      $��4��6!   $��2��6.   $	��150��6B   $	��Add��6N   $��
163,47,0,0q�6\   $
��Left=�5I      $	��Top=�68    J� RenderTransformOrigin$ 0.474,0.828&�6P   ��5J   !   �� *AddProductCommand+5K      5M      5N      �� 5O      $��1��6   $��5q�6%   $��1q�60   
���   �._�5P      �� $��5q�6   .+�5Q      �� $��Edit product��6   $
��Bold"�63   $��Center=�5R      $��Center=�5S      $��5q�63   � 5U      -   5        $��UpdateProductGrid��5U       5V      �� 5W      �� 5X      �� 5Y      �� 5Z      �� 5[        5^      �� 5_      �� 5`      .+�5c      �� $��0��6    $��0��6-   $��Product Name��6=   �� 5d      $��0��6"   $��1��6/   ��6?   �� *CurrentProduct.Name+�� 5f      $��1��6    $��0��6-   $��Description��6=   �� 5g      $��1��6"   $��2��6/   ��6?   �� *CurrentProduct.Description+�� 5i      $��2��6    $��0��6-   $��Price��6=   �� 5j      $��2��6"   $��3��6/   ��6?   �� *CurrentProduct.Price+�� 5l      $��3��6    $��0��6-   $��Units��6=   �� 5m      $��3��6"   $��4��6/   ��6?   �� *CurrentProduct.Unit+�� 5o      $��4��6%   $��2��62    �� Orientation$ 
Horizontal=�6F   .+�5p      �� $	��150��6&   $
��Edit��5q   !   $��	80,49,0,0q�60   $
��Left=�5r      ��68   �� *EditProductCommand+�� 5s      $	��150��6&   $��Delete��5t   !   $��	30,49,0,0q�62   $
��Left=�5u      ��68   �� *RemoveProductCommand+5w      5x      5z      5{      5|      �� 5}   
   $��18(�6   $	��Top=�6   $"��Product Information Database��66   $��34��6]   $��380,48,24,0q�6i   �� 5~   
   $
��Left=�6   $��72��6+   $��31,0,0,0q�67   $��Center=�6I   $��65��6d   $��/ACME-Logo.jpg��6o   $��Uniform=�6�   5      5�      