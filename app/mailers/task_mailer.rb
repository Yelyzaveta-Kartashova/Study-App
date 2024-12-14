class TaskMailer < ApplicationMailer

  def task_overdue
    puts '-----zzzzzzzzzzzz'
    mail(
      from: 'lo@zo.com',
      to: 'kartashovaelizaveta191@gmail.com',
      subject: 'Biggie bop'
    )
    puts '------yyyyyyyy'
  end
end
