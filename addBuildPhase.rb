require 'xcodeproj'
project = Xcodeproj::Project.open(ENV['SOURCE'])
main_target = project.targets.first

phase = nil

# see if we can reuse existing build phase 
main_target.build_phases.each do |cur_phase|
  next unless cur_phase.class == Xcodeproj::Project::Object::PBXShellScriptBuildPhase 

  next unless cur_phase.name == 'Kocomojo Strip Framework Architecture'
  phase = cur_phase
end

# create new if necessary
if phase.nil?
  phase = main_target.new_shell_script_build_phase("Kocomojo Strip Framework Architecture")
end

phase.shell_script = %{if [ -e "\${BUILT_PRODUCTS_DIR}/\${FRAMEWORKS_FOLDER_PATH}/KocomojoSDK.framework/strip-frameworks.sh" ]; then
bash "\${BUILT_PRODUCTS_DIR}/\${FRAMEWORKS_FOLDER_PATH}/KocomojoSDK.framework/strip-frameworks.sh"
fi}

project.save()
