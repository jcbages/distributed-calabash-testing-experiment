require 'calabash-android/management/adb'
require 'calabash-android/operations'

Before do |scenario|
  `#{adb_command} logcat -c` # clears logcat output
  start_test_server_in_background
end

After do |scenario|
  # save logs from adb
  scenario_name = scenario.name.downcase.tr(' ', '_')
  log_path = `#{scenario_name}.log.txt`

  `#{adb_command} logcat -v time 2>&1 -d > logs/sys_log.txt`
  # embed(log_path, 'text/plain', 'log.txt')

  if scenario.failed?
    screenshot_embed
  end
  shutdown_test_server
end
