<?php
print("POST = \n");
print_r($_POST);

print("\nFILES = \n");
print_r($_FILES);

print("\nHEADERS = \n");
print_r(getallheaders());

print("\nCOOKIE = \n");
print_r($_COOKIE);
