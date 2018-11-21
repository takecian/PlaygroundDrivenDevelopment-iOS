# Uncomment this line to define a global platform for your project
platform :ios, '11.0'
inhibit_all_warnings!

def libs
  pod 'RxSwift'
  pod 'RxCocoa'
end

target 'PDD' do
  use_frameworks!
  libs
end

target 'PDDFramework' do
  use_frameworks!
  libs
end

# Workaround for Cocoapods issue https://learnappmaking.com/cocoapods-playground-how-to/#playground
post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        config.build_settings.delete('CODE_SIGNING_ALLOWED')
        config.build_settings.delete('CODE_SIGNING_REQUIRED')
    end

    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CONFIGURATION_BUILD_DIR'] = '$PODS_CONFIGURATION_BUILD_DIR'
        end
    end
end
