var app=angular.module("app",[])
app.controller("ProductController",function($scope,$http){
	$scope.addToCart=function(productId){
		$http.put('http://localhost:8090/HotSpares/cart/addToCart/'+productId).success(function(){
			alert("Product Added To The Cart Successfully")
		})
		
	}
	
})