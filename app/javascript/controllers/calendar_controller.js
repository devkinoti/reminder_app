import { Controller} from "stimulus"
import { Calendar } from '@fullcalendar/core'
import dayGridPlugin from '@fullcalendar/daygrid'
import timeGridPlugin from '@fullcalendar/timegrid'
import interactionPlugin from '@fullcalendar/interaction'
import Rails from '@rails/ujs'

export default class extends Controller {
  static targets = ["calendar", "modal", "start_time", "end_time"]

  connect() {
    let _this = this
    let calendar = new Calendar(this.calendarTarget, {
      events: '/reminders.json',
      editable: true,
      navLinks: true,
      headerToolbar: { center: 'dayGridMonth,timeGridWeek,timeGridDay' },
      plugins: [dayGridPlugin,timeGridPlugin,interactionPlugin],
      navLinkDayClick: function(date, jsEvent) {
        _this.modalTarget.style.display = "block"
        _this.start_timeTarget.value = date
        _this.end_timeTarget.value = date
      },
      eventClick: function (info) {
        info.jsEvent.preventDefault()
        Turbolinks.visit(info.reminder.extendedProps.show_url)
      },
      eventDrop: function (info) {
        let data = _this.data(info)
        Rails.ajax({
          type: 'PUT',
          url: info.reminder.url,
          data: new URLSearchParams(data).toString()
        })
      },
      eventResize: function (info) {
        let data = _this.data(info)
        Rails.ajax({
          type: 'PUT',
          url: info.reminder.url,
          data: new URLSearchParams(data).toString()
        })
      },
    })
    calendar.render()
  }

  data(info) {
    return {
      "reminder[start_time]": info.reminder.start,
      "reminder[end_time]": info.reminder.end,
    }
  }
}