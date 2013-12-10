require_relative './applicant'

import Java::org.kie.api.KieServices
import Java::org.kie.api.runtime.KieContainer
import Java::org.kie.api.runtime.KieSession

kie_services = KieServices::Factory.get()
kcontainer = kie_services.getKieClasspathContainer()
ksession = kcontainer.newKieSession("ksession-rules")

#applicant = Applicant.new("John Smith", 17)
#ksession.insert(applicant.to_java)
#ksession.fireAllRules()
#puts "Applicant is valid? #{applicant.valid}"
#puts applicant.name

#require 'pathname'
#drools_path = Pathname.new('/home/eric/installs/drools')
#drools_path.each_child do |child|
#  child = Pathname.new child
#  if child.extname =~ /jar/
#    require "#{child.expand_path}"
#  end
#end


applicant = Java::rubyobj::TestApplicant.new("Johny ParseRight", 15)
ksession.insert(applicant)
ksession.fireAllRules()
puts "Applicant is valid? #{applicant.valid}"
puts applicant.name
puts applicant.class
puts applicant.java_class
