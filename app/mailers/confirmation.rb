class Confirmation < ActionMailer::Base
  default from: "noreply@pintxopop.com"

  def reservation_created(reservation)
    mail(to: gyunker2014@kellogg.northwestern.edu,
      subject: 'Reservation was Made')



  end
end
