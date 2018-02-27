#encoding: utf-8
Given /^a cucumber that is (\d+) cm long$/ do |arg1|
  @cucumber = {:color => 'green', :length => length.to_i}
end
 
When /^I cut it in halves$/ do
  @allCucumbers = [{:color => @cucumber[:color], :length => @cucumber[:length]/2}, 
                    {:color => @cucumber[:color], :length => @cucumber[:length]/2}
                ]
end
 
Then /^I have two cucumbers$/ do
  @allCucumbers.length.should == 4
end
 
Then /^both are (\d+) cm long$/ do |arg1|
  @allCucumbers.each do |cucum|
      cucum[:length].should == arg1.to_i
  end
end