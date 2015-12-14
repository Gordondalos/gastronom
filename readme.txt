AJAX ADVANCED SEARCH Version 2

If You Are Using OpenCart Version Less Than 2.0.0.0 Then You Must Have To Install Latest VqMod Before Using This Module. Link For Getting VqMod is https://code.google.com/p/VqMod/downloads/list .

Please Install VqMod First Then Copy Paste XML File Into Proper Location.

If You Are Using OpenCart Version 2.0.0.0 Or Higher Than Must Get Appropriate XML File And Install It Using Extension Installer. Go To  Extensions > Extension Installer 

After Install Go To  Extensions > Modifications  And Rebuild Modification Cache.

If You Are Using VqMod With Your OpenCart Then Prefer To Use VqMod Version Of This Extension.

For Settings Go To Your Admin Panel Then  System > Settings > Your Default Store  You Can See New Tab  "Ajax Advanced Search"  In Last Of Settings.

For OpenCart version Less Than 1.5.6 If Not Working

Find Code 

$('input[name="search"]').autocomplete({

And Replace With

$('input[name="filter_name"]').autocomplete({

If You Like My Work, Then Buy A Cup Of Coffee For Me, By Donating Via PayPal punittejpal@gmail


============================ Bug fix 12/28/2014 ============================
1: Product Name overlap and goes out of box if product name is longer
2: Result display break if image width more than 100px

============================ Bug fix 01/03/2015 ============================
Issue In 2.0.0.0-ajaxadvancedsearch.ocmod.xml file 

$customer_group_id = $this->customer->getCustomerGroupId();

replace with

$customer_group_id = $this->customer->getGroupId();

============================ Bug fix 03/07/2015 ============================
Issue of manufacturer name was over written by product name or some times with search string.
Thanks To.
KeepSmilin, madanr .

============================ improvements 12/28/2014 ============================
1: Add settings for maximum and minimum width X height for image, Max size is 100 and Min size is 25

For Support Contact Me punittejapl@gmail.com