Given /^the following reports:$/ do |reports|
  Report.create!(reports.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) report$/ do |pos|
  visit reports_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following reports:$/ do |expected_reports_table|
  expected_reports_table.diff!(tableish('table tr', 'td,th'))
end
