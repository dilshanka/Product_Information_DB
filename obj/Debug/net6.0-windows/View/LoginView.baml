   M S B A M L   `   `   `  ����O  KProductInformationDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:ProductInformationDB.ViewProductInformationDB.View  5      )    #ProductInformationDB.View.LoginView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:ProductInformationDB.View     5      .��5      �   � IsSharedSizeScope$
  True��6    � RowDefinitions 5   
   �� 5      $	��120 �6   �� 5      $��50 �6   �� 5      $��50 �6   �� 5      $��50 �6   �� 5      $	��120 �6   .+�5   
   �� $��0��6    �� CornerRadius$ 10��6   
�����_�$��5q�6G   6]   �� 5   
   $��4��6   $ 10��6   
�����_�$��5q�6G   6]   �� 5"   
   $��0��6   $��Center=�6   $�� Point of Sales system��6:   $
��Bold"�6\   
���  ��$��24(�6   � 5#   
   $��1��6    � ColumnDefinitions 5$      �� 5%       z� SharedSizeGroup$ A��6#   $
��Auto �67   �� 5&      $ B��6#   $
��Auto �67   �� 5'      $ C��6#   $
��Auto �67   �� 5(      $ D��6#   $
��Auto �67   .+�5+      �� $��User Name      :��6   $��24(�61   $��2��6?   $��
119,0,25,0q�6S   �� 5-      $��2��6   $	��300��6@   $��5q�6L   ��6&   �� *
UserName+6L   5.      � 5/   
   $��2��6    50      �� 51      $ A��6#   $
��Auto �67   �� 52      $ B��6#   $
��Auto �67   �� 53      $ C��6#   $
��Auto �67   �� 54      $ D��6#   $
��Auto �67   .+�57      �� $��User Password :��6   $��24(�61   $��2��6?   $��
115,0,21,0q�6S   �� 59      $��2��6   $	��300��6@   $��5q�6L   ��6&   �� *
Password+6L   5:      �� 5=   
   $��3��6   $��Login��6   $	��100��6R   $��40��6^   $��5q�6j   ��60   �� *LoginCommand+��5A      �� 5C       �� 
TargetType" ��6   .�5D      ��  �� Property � �� �� Value
 ���_�6G    �� Triggers 5E      P� 5F      	 P� Property	 �@J�IsMouseOver
 P� Value$

 True��69   . �5G      ��  � ��
 ��ح�6O   5I      5K      5Q      5V      5W      