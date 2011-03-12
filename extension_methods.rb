# ============= JIRA::RemoteIssue
class JIRA::RemoteIssue
  def getCustomFieldValueForID(passedID) 
    self.customFieldValues.each do |field| 
      if field.customfieldId == passedID then
        return field.values[0]
      end
    end
    return nil
  end
end

# ============= String
class String
  def to_x 
    text = self
    text = text.gsub("<","&lt;")
    text = text.gsub(">","&gt;")
    text = text.gsub("&","&amp;")
    return text
  end
end