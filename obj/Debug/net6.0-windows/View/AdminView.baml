   M S B A M L   `   `   `  ����O  KProductInformationDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:ProductInformationDB.ViewProductInformationDB.View  5      )    #ProductInformationDB.View.AdminView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:ProductInformationDB.View     5      .��5	      �   � ColumnDefinitions  5
   
   �� 5      $
��684* �6   �� 5      $
��317* �6    � RowDefinitions 5   
   �� 5      $��92 �6   �� 5      $
��Auto �6   .+�5   
   �� $��20(�6   $	��Top=�6   $��    ACME Corporation��66   $��34��6U   $��394,14,46,0q�6a   $
��Bold"�6v   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	ProductDG��5   4      AutoGenerateColumns$ False��6G      CanUserAddRows$ False��6c      
IsReadOnly$
 True��6z   $��1��5         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6    $��5,0,5,0q�60   $ �� IsSynchronizedWithCurrentItem$
 TrueY�6A   $	��269��6f   $	��Top=�6s   $��2��6�   ��5      �� *
Products+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 
Product Id��6%   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 69   �� *Id+  5      $
	 Name��6%   
 63   �� *Name+  5      $	 Description��6%   
 6:   �� *Description+  5      $	 Price��6%   
 64   �� *Price+  5      $
	 Unit��6%   
 63   �� *Unit+5      � 5!   
   $��2��6   $��2��6   $��0,10,0,0q�60     5"      �� 5#      �� 5$      5&      �� 5'   
   $��18(�6   $	��Top=�6   $"��Product Information Database��66   $��34��6]   $��380,48,24,0q�6i   �� 5(   
   $
��Left=�6   $��72��6+   $��31,0,0,0q�67   $��Center=�6I   $��65��6d   $��/ACME-Logo.jpg��6o   $��Uniform=�6�   5)      5+      