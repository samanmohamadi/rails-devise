angular.module('imaq.journals',[
  'ngRoute',
  'ngResource',
])
.config(($routeProvider)->
  $routeProvider
    .when('/journals',
      templateUrl:'journals/journals.html'
      controller:'JournalsController'
      controllerAs:'jc'
    )
    .when('/journals/:journalId',
      templateUrl: 'journals/show.html'
      controller:'JournalController'
      controllerAs:'jc'
  )
)

#
class JournalsCtrl
  constructor:($scope,$resource)->
    Journal = $resource('/journals/:journalId',{journalId:'@id',format:'json'},{
      getAll:{
        url:'journals'
        method: 'GET'
        isArray:true
      }
    });
    @getJournal = ->
      Journal.get
    Journal.getAll((result)=>
      @journals = result
      console.log(result);
    )

class JournalCtrl
  constructor:($scope,$resource)->
    Journal = $resource('/journals/:journalId',{journalId:'@id',format:'json'},{
      getAll:{
        url:'journals'
        method: 'GET'
        isArray:true
      }
    });

    Journal.getAll((result)=>
      @journals = result
      console.log(result);
    )

angular.module('imaq.journals').controller('JournalsController',['$scope','$resource',JournalsCtrl])