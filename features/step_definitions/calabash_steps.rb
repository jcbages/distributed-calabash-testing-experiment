require 'calabash-android/calabash_steps'

Then /^I set orientation to portrait$/ do
    perform_action('set_activity_orientation', 'portrait')
end

Then /^I set orientation to landscape$/ do
    perform_action('set_activity_orientation', 'landscape')
end
