# Singleton Pattern used in app to create a logging solution for patients
require 'singleton'
class PatientLogger < include
  Singleton
  def initialize
    @log = File.open("patientlog.txt", "a")
  end
  def logInformation(information)
    @log.puts(information)
    @log.flush
  end
end
