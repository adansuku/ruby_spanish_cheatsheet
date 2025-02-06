class AppointmentReminderService
  def self.send_reminders
    appointments = Appointment.where("appointment_date = ?", Date.tomorrow)
    appointments.each do |appointment|
      ReminderMailer.with(appointment: appointment).reminder_email.deliver_now
    end
  end
end
