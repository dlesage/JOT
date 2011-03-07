#!/usr/bin/env ruby
require 'rubygems'
require 'erb'
require 'soap/driver'
require 'defaultDriver.rb'

# ============= extension methods
"""class RemoteIssue
  def getCustomFieldValueForKey(key) 
    customFieldValues.each do |field| 
      if field.key == key then
        return field.value
      end
    end
  end
end 
"""

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

loginToken = soapdriver.login(username, password) #{}"Darrin", "fjIne9qNo")
#issues = soapdriver.getIssuesFromJqlSearch(loginToken, "project = SOA AND resolution in (Unresolved, Done) AND fixVersion = \"5.1.0 GA\" AND component = Documentation", 999999)
# == get the filter id for the supplied filter name
filterID = getFilterID(filter, loginToken, soapdriver)
issues = soapdriver.getIssuesFromFilter(loginToken, filterID) #{}"SOA 5.1.0 - Affects Documentation")

#issues = jira.call_driver("getIssuesFromJqlSearch", "project = SOA AND resolution in (Unresolved, Done) AND fixVersion = \"5.1.0 GA\" AND component = Documentation", 10)

#for issue in issues
#    puts "\n===========\n"+issue.inspect+"\n"
#    puts jira.call_driver("getSecurityLevel",issue.key).inspect
#end

template = ERB.new File.new(template_file).read, nil, "%"
template.result(binding)
puts template.result(binding)
