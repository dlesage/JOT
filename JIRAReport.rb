#!/usr/bin/env ruby
require 'rubygems'
require 'erb'
require 'soap/driver'
require 'JIRA-SOAP-STUBS/defaultDriver.rb'
require 'extension_methods.rb'


# ======================================== read commandline parameters
template_file = ARGV[0]
username = ARGV[1]
password = ARGV[2]
filter = ARGV[3]

def getFilterID(name, token, driver)
  favFilters = driver.getFavouriteFilters(token)
  favFilters.each do |filter|
    if filter.name == name then 
      return filter.id 
    end
  end
end

soapdriver = JIRA::JiraSoapService.new

loginToken = soapdriver.login(username, password)
filterID = getFilterID(filter, loginToken, soapdriver)
issues = soapdriver.getIssuesFromFilter(loginToken, filterID)

#    puts jira.call_driver("getSecurityLevel",issue.key).inspect

template = ERB.new File.new(template_file).read, nil, "%"
template.result(binding)
puts template.result(binding)
