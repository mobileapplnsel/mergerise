<?php
defined('BASEPATH') OR exit('No direct script access allowed');



$route['default_controller'] = 'Auth/index';
$route['404_override'] = 'Auth/get404';
$route['translate_uri_dashes'] = FALSE;


//login
$route['login'] = 'Auth/onSetLogin';
$route['chk_login'] = 'Auth/onCheckLogin';
$route['chklogin2fa'] = 'Auth/onCheck2FAuth';
$route['logout'] = 'Auth/onSetLogout';
$route['dashboard'] = 'Auth/onGetDashboard';
$route['send-password-recovery'] = 'Auth/onSendPasswordRecovery';

//user management
$route['users'] = 'Users/index';
$route['duplicate_check_un'] = 'Users/onCheckDuplicateUser';
$route['add-user'] = 'Users/onCreateUserView';
$route['createuser'] = 'Users/onCreateUser';
$route['profile'] = 'Users/onGetUserProfile/';
$route['profile/(:any)'] = 'Users/onGetUserProfile/$1';
$route['changeprofile'] = 'Users/onChangeUserProfile';
$route['deluser'] = 'Users/onDeleteUser';
$route['enable2fa'] = 'Users/onGetTwoFACode';
$route['set2fa'] = 'Users/onSet2FAuth';



//customer management
$route['customers/list'] = 'Customers/index';
$route['customers/duplicate_check'] = 'Customers/onCheckDuplicate';
$route['customers/add'] = 'Customers/onCreateView';
$route['customers/create'] = 'Customers/onCreate';
$route['customers/edit/(:any)'] = 'Customers/onGetEdit/$1';
$route['customers/change'] = 'Customers/onChange';
$route['customers/delete'] = 'Customers/onDelete';
$route['customers/kyc-details'] = 'Customers/onGetKyc';
$route['customers/ack-kyc'] = 'Customers/onAckKyc';


//cnf entries management
$route['cnf/list'] = 'CNFEntry/index';
$route['cnf/duplicate_check'] = 'CNFEntry/onCheckDuplicate';
$route['cnf/add'] = 'CNFEntry/onCreateView';
$route['cnf/create'] = 'CNFEntry/onCreate';
$route['cnf/edit/(:any)'] = 'CNFEntry/onGetEdit/$1';
$route['cnf/change'] = 'CNFEntry/onChange';
$route['cnf/delete'] = 'CNFEntry/onDelete';
$route['cnf/invoice/(:any)'] = 'CNFEntry/onGetInvoice/$1';



//Api
$route['api/encrypt-this'] = 'Api/onEncryptAll';
$route['api/decrypt-all'] = 'Api/onDecryptAll';//


$route['api/register'] = 'Api/onRegisterCustomer';
$route['api/registered-otp-verification'] = 'Api/onVerifyCustomer';
$route['api/update-kyc'] = 'Api/onKycCustomer';
$route['api/change-password'] = 'Api/onChangePassword';
$route['api/users-list'] = 'Api/onGetCustomers';
$route['api/login'] = 'Api/onLoginCustomer';
$route['api/logout'] = 'Api/onLogoutCustomer';
$route['api/login-old'] = 'Api/onLoginCustomer_old';
$route['api/verify-login'] = 'Api/onVerifyCustomerLogin';
$route['api/update-profile'] = 'Api/onUpdateCustomerProfile';

