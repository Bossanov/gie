class Contact < MailForm::Base
  attribute :nom,      :validate => true
  attribute :email,      :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :telephone,   :validate => true

  attribute :message,   :validate => true


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Nouveau contact",
      :to => "antoine.staumont@gmail.com",
      :from => %("#{nom}" <#{email}>)
    }
  end
end
