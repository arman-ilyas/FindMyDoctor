ai.main = $.extend({}, ai.main, {
  getAjaxPatients: function () {
    $.ajax({
      type: "GET",
      url: "/patient/list"
    }).done(function (data) {
      var patients = JSON.stringify(data);
      alert("Ajax request from /patient/list returned following patients: "+patients);
      // var toAppend = '';
      // $.each(data,function(i,o){
      //   toAppend += '<option>'+o.id+' '+o.userId+'</option>';
      // });
      //
      // $('#sessions').append(toAppend);
    });
  }
});