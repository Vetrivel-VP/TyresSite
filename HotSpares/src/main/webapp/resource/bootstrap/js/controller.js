var app=angular.module('myApp',[]);
app.controller('ProductController',function($scope,$http,$window){
	alert("inside product controller");
	$scope.addToCart=function call(productid){
		alert("inside addtocart");
		var url='http://'+$window.location.host+'/HotSpares';
		$http.put(url+'/addCartItem/'+productid).success(function(){
			alert("Product successfully added to the cart");
		});
	}
	

});

/*var app=angular.module('app',[])
app.controller('ProductController',function($scope,$http){
	$scope.addToCart=function callable(t1){
		$http.put('http://localhost:8080/HotSpares/cart/addCartItem/'+$scope.t1).success(function(data)
				{
			alert("Product Added To The Cart Successfully");
		});
		
	}
	
});*/

