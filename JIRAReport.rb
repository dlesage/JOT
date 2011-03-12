#!/usr/bin/env ruby
require 'rubygems'
require 'erb'
require 'soap/driver'
require 'optparse'
require 'JIRA-SOAP-STUBS/defaultDriver.rb'
require 'extension_methods.rb'

"""
http://docs.atlassian.com/software/jira/docs/api/rpc-jira-plugin/latest/com/atlassian/jira/rpc/soap/JiraSoapService.html
"""

# ======================================== 
def getFilterID(name, token, driver)
  favFilters = driver.getFavouriteFilters(token)
  favFilters.each do |filter|
    if filter.name == name then 
      return filter.id 
    end
  end
end

# ======================================== 
def populateSecurityLevels(issues, soapdriver,loginToken)
  issues.each do | issue |
    issue.security_level = soapdriver.getSecurityLevel(loginToken, issue.key).name
  end
end

# ======================================== 
def getIssuesFromFilter( username, password, filter, getSecurityLevels)
  soapdriver = JIRA::JiraSoapService.new
  loginToken = soapdriver.login(username, password)
  filterID = getFilterID(filter, loginToken, soapdriver)
  issues = soapdriver.getIssuesFromFilter(loginToken, filterID)
  if (getSecurityLevels) then 
    populateSecurityLevels(issues, soapdriver, loginToken)
  end
  return issues
end

# ======================================== 
def getTemplateOutputForIssues(template_file, issues)
  template = ERB.new File.new(template_file).read, nil, "%"
  template.result(binding)
  return template.result(binding)
end

# ======================================== read commandline parameters
def processCommandLine
  options = {}

  optparse = OptionParser.new do |opts|
    opts.banner = "JIRAReport.rb [options]"

    options[:getSecurityLevels] = false
    opts.on( '-s', '--security', 'Retreive security levels. Slow, don''t do it unless necessary' ) do
      options[:getSecurityLevels] = true
    end
    
    options[:template_file] = ""
    opts.on( '-t FILE', '--template FILE', 'template to use' ) do | file | 
      options[:template_file] = file
    end
    
    options[:username] = ""
    opts.on( '-u USERNAME', '--username USERNAME', 'JIRA username' ) do | username |
      options[:username] = username
    end
    
    options[:password] = ""
    opts.on( '-p PASSWORD', '--password PASSWORD', 'JIRA password' ) do | password |
      options[:password] = password
    end
      
    options[:filter] = ""
    opts.on( '-f FILTER', '--filter FILTER', 'JIRA filter' ) do | filter |
      options[:filter] = filter
    end
    
    opts.on( '-h', '--help', 'Display this screen' ) do
      puts opts
      exit
    end
     
  end
  optparse.parse!
  return options
end

# ======================================== 
options = processCommandLine

puts getTemplateOutputForIssues(
  options[:template_file], 
  getIssuesFromFilter(options[:username], options[:password], options[:filter], options[:getSecurityLevels]) 
)

