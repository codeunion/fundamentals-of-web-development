$(document).ready(function() {
  var createAlarmElement = function(alarm) {
    var area = alarm.area;
    var engaged = alarm.engaged;

    html = '<h5>' + area;

    if (engaged === true) {
      html += ' ALERT!'
    }

    html += '</h5>'

    return html
  }

  var updateAlarmList = function(alarms) {
    alarms.forEach(function(alarm, index) {
      var alarmSelector = '#' + alarm.id
      var content = createAlarmElement(alarm)

      $(alarmSelector).html(content)
    });
  }

  var queryAlarms = function() {
    console.log("Requesting '/alarms'...")
    $.getJSON('/alarms', updateAlarmList)
  };

  setInterval(queryAlarms, 5000);
});
