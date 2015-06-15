require "mail"
require "./eml.rb"
mail = Eml.new ARGV.first

p mail.to
p mail.reserved_to
p mail.cc
p mail.subject
p mail.date
p mail.body
p mail.attachments
