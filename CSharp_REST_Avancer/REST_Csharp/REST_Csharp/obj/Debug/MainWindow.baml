   M S B A M L   `   `   `  ����F  BREST_Csharp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:REST_CsharpREST_Csharp  5   	       REST_Csharp.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:REST_Csharp     5   	     � Title$  Countries Web Services��5   	   $��456.863��6(   $��473.039��69   .��5	      � $��	10,19,2,8q�6    � ColumnDefinitions 5
   
   �� 5      $	��69* �6   �� 5      $
��448* �6   .+�5   
   �� -   5         ��Name$ 
tabControl��5      $��2��6)   $
��Left=�6=   $	��417��6X   $	��Top=�6e   $	��443��6}   $��	0,-17,0,0q�6�   .@�5      �� $��TabItem��6   .��5      � ���	#FFE5E5E5$��0,-1,0,1q�6.   .+�5      �� -   5         ��Name$ 	cboRegion��5      $
��Left=�62   $��67,9,0,0q�6M   $	��Top=�6_   $	��334��6w    �� 
IsEditable . $ �� IsSynchronizedWithCurrentItem$ FalseY�6�   $��21��6�   �� 5      -   5        $ 
cboCountry��5      $
��Left=�63   $��	65,43,0,0q�6N   $	��Top=�6a   $	��334��6y    . $��21��6�   �� 5      -   5         ��Name$ label��5      $��Région��6+   $
��Left=�6<   $��6,9,0,0q�6W   $	��Top=�6h   $��25��6�   �� 5      -   5        $ 
label_Copy��5      $
��Pays��60   $
��Left=�6?   $��4,39,0,0q�6Z   $	��Top=�6l   $��25��6�   �� 5      -   5         ��Name$ tbxCountryInformation��5      $
��Left=�6=   $	��217��6X   $��
67,110,0,0q�6e    �� TextWrapping$
 Wrap=�6y   $��TextBox��6�   $	��Top=�6�   $	��332��6�   5      5      �� 5      $��Weather Getter��6   .��5      � ���	#FFE5E5E5$��	0,0,220,0q�6.   .+�5      �� -   5        	 ��Name$	 groupBox��5      $��
Neuchâtel��61   $
��Left=�6D   $	��Top=�6_   �� 5      -   5        $ tbxWeatherNE��5      $
��Left=�64   $	��108��6O   $��	10,37,0,0q�6\   $
 Wrap=�6o   $��TextBox��6�   $	��Top=�6�   $	��160��6�   � 5      ���	#FFE5E5E5$��216,0,-288,0q�62   .+�5      �� -	   5        $	 	groupBox1��5   #   $��La Chaux de Fond��66   $
��Left=�6P   $	��Top=�6k   �� 5      -
   5        $ tbxWeatherCDF��5   "   $
��Left=�69   $	��106��6T   $��	10,37,0,0q�6a   $
 Wrap=�6t   $��TextBox��6�   $	��Top=�6�   $	��165��6�   �� 5      -   5        
 ��Name$
 	Image_CDF��5       $
��Left=�63   $	��108��6N   $��
10,167,0,0q�6[   $	��Top=�6o   $	��139��6�   5       �� 5!      -   5        $
 Image_NE��5!      $
��Left=�6.   $	��108��6I   $��
10,173,0,0q�6V   $	��Top=�6j   $	��139��6�   5"      5#      5$      5&      5'      