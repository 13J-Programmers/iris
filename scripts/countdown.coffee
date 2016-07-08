moment = require('moment')
moment.locale('ja')

module.exports = (robot) ->
  robot.respond /fes/i, (msg) ->
    today = moment()
    koreisaiDay = moment('2016-10-22')
    diff = koreisaiDay.diff(today, 'days')
    msg.send "工嶺祭まであと#{diff}日です!!"

  # cronJob = require('cron').CronJob
  # cronJob = new cronJob('00 00 12 * * *', () ->
  #   envelope = room: "#test"
  #   today = moment()
  #   koreisaiDay = moment('2016-10-22')
  #   diff = koreisaiDay.diff(today, 'days')
  #   robot.send envelope, "工嶺祭まであと#{diff}日です!!"
  # )

  # cronJob.start()
