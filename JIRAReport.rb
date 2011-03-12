#!/usr/bin/env ruby
require 'rubygems'
require 'erb'
require 'soap/driver'
require 'JIRA-SOAP-STUBS/defaultDriver.rb'
require 'extension_methods.rb'



def getFilterID(name, token, driver)
  favFilters = driver.getFavouriteFilters(token)
  favFilters.each do |filter|
    if filter.name == name then 
      return filter.id 
    end
  end
end

def getIssuesFromFilter( username, password, filter)
  soapdriver = JIRA::JiraSoapService.new
  loginToken = soapdriver.login(username, password)
  filterID = getFilterID(filter, loginToken, soapdriver)
  issues = soapdriver.getIssuesFromFilter(loginToken, filterID)
  return issues
end

def getTemplateOutputForIssues(template_file, issues)
  template = ERB.new File.new(template_file).read, nil, "%"
  template.result(binding)
  return template.result(binding)
end

# ======================================== read commandline parameters
template_file = ARGV[0]
username = ARGV[1]
password = ARGV[2]
filter = ARGV[3]

puts getTemplateOutputForIssues(template_file, getIssuesFromFilter(username, password, filter) )

