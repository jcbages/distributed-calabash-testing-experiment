require 'calabash-android/management/adb'
require 'calabash-android/operations'

Before do |scenario|
  `#{adb_command} logcat -c` # clears logcat output
  start_test_server_in_background
end

After do |scenario|
  # save logs from adb
  `mkdir $REPORT_PATH/#{scenario.name.downcase.tr(' ', '_')}`
  `#{adb_command} logcat -v time 2>&1 -d > $REPORT_PATH/#{scenario.name.downcase.tr(' ', '_')}/sys_log.txt`
  
  if scenario.failed?
    screenshot_embed
  end
  shutdown_test_server
end
