// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//


//= require jquery
//= require jquery_ujs
//= require materialize
//= require rails.validations
//= require angular

angular.module("MiMenu", []);

angular.module("MiMenu")
.controller("platillos",["$scope","$http","$location",function($scope,$http,$location){
    $scope.busqueda = "";
    $scope.tabla = [];
    $scope.buscar = function(val){
        $http({
            method : "GET",
            url : "platillos.json?busqueda="+$scope.busqueda 
        }).then(function mySuccess(response) {
            console.log(response.data);
            $scope.tabla = response.data;
        }, function myError(response) {
            $scope.myWelcome = response.statusText;
        });
    }
    function init(){
        $scope.buscar();
    }
    init();
    
}]);

  $(document).ready(function(){
    $('.sidenav').sidenav();
    $(".dropdown-trigger").dropdown();
     $('.tabs').tabs();
     $('select').formSelect();
  });
  
  //= require_tree .
        