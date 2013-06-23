/**
 *
 *
 */
function MySQLBackendGaugesEngine() {
	var self = this;
}


/**
 *
 *
 */
MySQLBackendGaugesEngine.prototype.buildQuerries = function(timers, time_stamp) {

	var querries = [];

 
	 // Iterate on each gauge
    for(var timerName in timers) {
      
        var timerValue = timers[timerName];

        if(timerValue.length === 0) {
          continue;
        } else {



          for(var timerType in { mean: 1, count: 1, lower: 1, upper: 1, std:1, upper_90: 1 }){

            // We insert the raw timers data, you will need to calculate specific stats on the frontend
            querries.push("insert into `timers_statistics` values (" + time_stamp + ",'" + timerName + '.' + timerType + "'," + timerValue[timerType] + ");");  
          }
        }
      
      
    }

    return querries;
}


/**
 *
 *
 */
exports.init = function() {
	var instance = new MySQLBackendGaugesEngine();
  return instance;
};