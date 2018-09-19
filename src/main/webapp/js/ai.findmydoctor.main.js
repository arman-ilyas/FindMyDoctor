ai.main = $.extend({}, ai.main, {
  getAjaxPatients: function () {
    $.ajax({
      type: "GET",
      url: "/patient/list"
    }).done(function (data) {
      var toAppend = '';
      $.each(data,function(i,o){
        toAppend += '<li class="list-group-item">'+'Patient id: '+o.id+' with disease name: '+o.disease+'</li>';
      });

      $('#patientList').append(toAppend);
    });
  }
});