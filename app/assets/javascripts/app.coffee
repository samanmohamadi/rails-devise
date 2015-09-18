#receta = angular.module('imaq.journals',[
#  'templates',
#  'ngRoute',
#  'ngResource',
#  'controllers',
#])
#
#receta.config([ '$routeProvider',
#  ($routeProvider)->
#    $routeProvider
#    .when('/',
#      templateUrl: "index.html"
#      controller: 'RecipesController'
#    )
#])

#receta.config([ '$routeProvider',
#  ($routeProvider)->
#    $routeProvider
#    .when('/a',
#      templateUrl: "journals.html"
#      controller: 'RecipesController'
#    )
#])
#
#recipes = [
#  {
#    id: 1
#    name: 'Baked Potato w/ Cheese'
#  },
#  {
#    id: 2
#    name: 'Garlic Mashed Potatoes',
#  },
#  {
#    id: 3
#    name: 'Potatoes Au Gratin',
#  },
#  {
#    id: 4
#    name: 'Baked Brussel Sprouts',
#  },
#]
#controllers = angular.module('controllers',[])
#controllers.controller("RecipesController", [ '$scope', '$routeParams', '$location','$resource'
#  ($scope,$routeParams,$location,$resource)->
#    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)
#    Recipe = $resource('/recipes/:recipeId', { recipeId: "@id", format: 'json' })
#    console.log('in recipe controller')
#    if $routeParams.keywords
##      keywords = $routeParams.keywords.toLowerCase()
##      $scope.recipes = recipes.filter (recipe)-> recipe.name.toLowerCase().indexOf(keywords) != -1
#      Recipe.query(keywords: $routeParams.keywords, (results)-> $scope.recipes = results)
#    else
#      $scope.recipes = []
#]);
#
#angular.module('imaq.journals',[
#  'templates',
#  'ngRoute',
#  'ngResource',
#  'controllers',
#])
#.config(($routeProvider)->
#  $routeProvider.when('/journals',
#    templateUrl:'journals/journals.html'
#    controller:'JournalsController'
#  )
#)
#.controller('JournalsController',['$scope','$resource',
#  ($scope,$resource)->
#    Journal = $resource('/journals/:journalId',{journalId:'@id',format:'json'},{
#      getAll:{
#        url:'journals'
#        method: 'GET'
#        isArray:true
#      }
#    });
#    Journal.getAll((result)->
#      console.log(result);
#    )
#])

angular.module('imaq',['imaq.journals'])
