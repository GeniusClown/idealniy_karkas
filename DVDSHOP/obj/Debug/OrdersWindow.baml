   M S B A M L   `   `   `  ����C  ?BookClub, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:BookClubBookClub  5   	       BookClub.OrdersWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:BookClub     5   	     � Title$  OrdersWindow��5   	   $	��450��6   $	��800��6.   .��5	      �  � RowDefinitions 5
   
   �� 5      $��30 �6   6*   �� 5      6   �� 5      $��50 �6   6*   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��OrderBD��5      $��1��6"      AutoGenerateColumns .     GridLinesVisibility$
 None=�6K      RowStyle 5      �� 5       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6    �� Triggers 5      �� 5       �� Binding 6&   �� *	TextColor+ �� Value True6D   .a�5      �� 	 �� Property	 � ��
 �� Value

 �����6;   5      5         Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 1* 6)      CellTemplate 5      �� 5      .R�5      �� $��Center=�6)   .+�5   "   ��  	  large#��[  6@   ��6,   �� *id+6a   �� 5    "    	 small#��[ 6H   ��6,   �� *
order_date+6i   �� 5!   "   #��[ 6B   ��6,   �� *code+6c   �� 5"   "   #��[  6d   ��6,   �� *cost+��6B   �� *Arrow+6�   �� 5#   "   #��[  6E   ��6,   �� *	newcost+6f   5$      5%      5'        5)      $ 1* 6)    5*      �� 5+      .R�5,      �� $��Center=�6(   $��Right=�6C   ��6_   �� *
discount+ �� StringFormat$ скидка: {0:0.##}%��6�   5-      5/      51      �� 53   
   $��26(�6   $��Center=�6"   $	��Top=�6?   $��0��6W   Окно заказов6r   �� 56   
   $��2��6    �� Orientation$ 
Horizontal=�6"   .+�57      �� -   5        $��2��57   (     
RootButton#��[ 65   .��6Y   )'Резактировать заказы6o   �� 58      -   5        $��2��58   (     ManagerButton#��[ 65   .��6\   %#Сформировать заказ6p   59       � 5;   
   -   5        $��	MainFrame��5;      $��1��6   60   5<      5=      