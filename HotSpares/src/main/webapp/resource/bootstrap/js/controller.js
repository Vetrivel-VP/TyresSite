var app=angular.module('myApp',[]);
app.controller('ProductController',function($scope,$http,$window){
	alert("inside product controller");
	$scope.addToCart=function call(productId){
		alert("inside addtocart");
		var url='http://'+$window.location.host+'/HotSpares';
		$http.put(url+'/addCartItem/'+productId).success(function(){
			alert("Product successfully added to the cart");
		});
	}
	

});

/*var app=angular.module('myApp',[])
app.controller('ProductController',function($scope,$http){
	$scope.addToCart=function(productid){
		$http.put('http://localhost:8080/HotSpares/addCartItem/'+productid).success(function()
				{
			alert("Product Added To The Cart Successfully");
		});
		
	}
	
});*/