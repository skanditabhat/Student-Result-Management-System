<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form1.aspx.cs" Inherits="form1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="stylesheet" href="css/w3.css" />
</head>
<body>
    
    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header" style="height:60px;">
            </div>

            <ul class="list-unstyled components">
                <li class="active">
                    <a href="#">
                        <i class="glyphicon glyphicon-home"></i>
                        Dashboard
                    </a>
                </li>
                <li>
                    <a href="#classSubmenu" data-toggle="collapse" aria-expanded="false">
                        <i class="glyphicon glyphicon-briefcase"></i>
                        create class
                    </a>
                    <ul class="collapse list-unstyled" id="classSubmenu">
                        <li><a href="#">Manage class</a></li>
                        
                   
                    <ul class="collapse list-unstyled" id="classSubmenu">
                        <li><a href="#">Manage class</a></li>
                        
                    </ul>
                    </ul>
                </li>
                <li>
                    <a href="#customerSubmenu" data-toggle="collapse" aria-expanded="false">
                        <i class="glyphicon glyphicon-user"></i>
                        Add subject
                    </a>
                    <ul class="collapse list-unstyled" id="customerSubmenu">
                        <li><a href="#">Manage subject</a></li>
                        
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">
                        <i class="glyphicon glyphicon-duplicate"></i>
                       Add subject Combination
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li><a href="#">Manage subject Combination</a></li>
                        
                    </ul>
                </li>
                <li>
                    <a href="#studentSubmenu" data-toggle="collapse" aria-expanded="false">
                        <i class="glyphicon glyphicon-send"></i>
                       Add student
                    </a>
                    <ul class="collapse list-unstyled" id="studentSubmenu">
                        <li><a href="#">Manage student</a></li>
                        
                    </ul>
                </li>
                 <li>
                    <a href="#resultSubmenu" data-toggle="collapse" aria-expanded="false">
                        <i class="glyphicon glyphicon-duplicate"></i>
                       create result
                    </a>
                    <ul class="collapse list-unstyled" id="resultSubmenu">
                        <li><a href="#">Manage result</a></li>
                        
                    </ul>
                </li>
                 </ul>
        </nav>
        <!-- Page Content Holder -->
        <div id="content">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header" style="width: 250px;">
                        <div style="float: right; width: 15%; padding-top: 0px;">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                            </button>
                        </div>
                        <div style="float: left; width: 84%">
                            <h3>
                                salihath english medium school
                                    
                             
                            </h3>
                        </div>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown top-menu-item-xs">
                                <a href="#" class="dropdown-toggle profile waves-effect waves-light" data-toggle="dropdown" aria-expanded="true" style="background: #ffffff;">
                                    <img id="userimg" src="images/default.png" alt="user-img" class="img-circle" width="30" style="border: 1px solid" />
                                </a>
                                <ul class="dropdown-menu" style="padding: 10px;">
                                    <li><a href="#" style="background: #ffffff;"><i class="glyphicon glyphicon-user"></i> User Account</a></li>
                                    <li class="divider"></li>
                                    <li id="changepassword"><a href="#changepassword.aspx" style="background: #ffffff;"><i class="glyphicon glyphicon-lock"></i> Change Password</a></li>
                                    <li class="divider"></li>
                                    <li>
                                        <input type="button" id="btnlogout" value="Log out" class="btn btn-default btn-flat" style="background:#ef0707 ;Color:#fff;width:100%;" />
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div style="margin: 100px 10px 10px 20px;">
                 <p>
                    I am E-Angkor, I will be sharing about Information Technology like Android , IOS, Windows , Tutorials , How to fix problems and drawing. Some videos not good...
                    <br />
                    View E Angkor's profile on LinkedIn, the world's largest professional community. E has 2 jobs listed on their profile. See the complete profile on LinkedIn and ...
                    <br />
                    <h2><b>Subscribe my E ANGKOR CHANNEL</b></h2>
                    <br />
                    <h3>You can download source code on description.</h3>
                </p>
            </div>
        </div>
    </div>
    <!-- jQuery CDN -->
    <script src="js/jquery-1.12.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
    <div>
    
    </div>
    
</body>
</html>
