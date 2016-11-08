platform :ios, '8.0'

# ignore all warnings from all pods
inhibit_all_warnings!

target 'Ruben' do
	use_frameworks!
	
    pod 'AFNetworking', '~> 3.1.0'
    pod 'SVProgressHUD', '~> 2.0.0'
    pod 'ECSlidingViewController', '~> 2.0.0'
    pod 'SVPullToRefresh', '~> 0.4.0'
    pod 'Colours', '~> 5.13.0'
    pod 'NSUserDefaults-AESEncryptor', '~> 0.0.0'
    pod 'CorePlot', '~> 2.0.0'
    pod 'DCKeyValueObjectMapping', '~> 1.5.0'
    pod 'SDWebImage', '~> 3.8.0'
    pod 'UIActivityIndicator-for-SDWebImage', '~> 1.2.0'
    pod 'ActionSheetPicker-3.0', '~> 2.2.0'
    pod 'CDTDatastore', '~> 1.1.0'
    pod 'IBMMobileFirstPlatformFoundation', '~> 8.0.0'
		
end

post_install do |installer|
    installer.pods_project.build_configuration_list.build_configurations.each do |configuration|
        configuration.build_settings['CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'] = 'YES'
    end
	installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '2.3'
        end
    end
end

