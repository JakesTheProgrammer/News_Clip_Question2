﻿#pragma checksum "..\..\Users.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "55D24D39C653DCCF543F1869EAF876814F088F77"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Question2;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Question2 {
    
    
    /// <summary>
    /// Users
    /// </summary>
    public partial class Users : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 31 "..\..\Users.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtUserName;
        
        #line default
        #line hidden
        
        
        #line 34 "..\..\Users.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtFullName;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\Users.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox comboBranches;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\Users.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox comboShifts;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\Users.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnAdd_User;
        
        #line default
        #line hidden
        
        
        #line 48 "..\..\Users.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnEdit_User;
        
        #line default
        #line hidden
        
        
        #line 49 "..\..\Users.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnDelete_User;
        
        #line default
        #line hidden
        
        
        #line 52 "..\..\Users.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dbGrid_Users;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Question2;component/users.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\Users.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.txtUserName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.txtFullName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.comboBranches = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 4:
            this.comboShifts = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 5:
            this.btnAdd_User = ((System.Windows.Controls.Button)(target));
            
            #line 42 "..\..\Users.xaml"
            this.btnAdd_User.Click += new System.Windows.RoutedEventHandler(this.BtnAdd_User_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.btnEdit_User = ((System.Windows.Controls.Button)(target));
            
            #line 48 "..\..\Users.xaml"
            this.btnEdit_User.Click += new System.Windows.RoutedEventHandler(this.BtnEdit_User_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.btnDelete_User = ((System.Windows.Controls.Button)(target));
            
            #line 49 "..\..\Users.xaml"
            this.btnDelete_User.Click += new System.Windows.RoutedEventHandler(this.BtnDelete_User_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.dbGrid_Users = ((System.Windows.Controls.DataGrid)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}
