ai.main = $.extend({}, ai.main, {
  getAjaxPatients: function () {
    $.ajax({
      type: "GET",
      url: "/patient/list"
    }).done(function (data) {
      var toAppend = '';
      $.each(data,function(i,o){
        // toAppend += '<li class="list-group-item">'+'Patient id: '+o.id+' with disease name: '+o.disease+'</li>';
        toAppend += ' <a href="#" class="list-group-item list-group-item-action">'+'Patient id: '+o.id+' with disease name: '+o.disease+'</a> ';
      });

      $('#patientList').append(toAppend);
    });
  }
});