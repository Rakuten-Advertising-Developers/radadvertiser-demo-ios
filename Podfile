# Uncomment the next line to define a global platform for your project

platform :ios, '13.0'

inhibit_all_warnings!

source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/Rakuten-Advertising-Developers/Specs.git'

use_frameworks!

GIT_URL = 'https://github.com/Rakuten-Advertising-Developers/RakutenAdvertisingAttribution-iOS-SDK.git'
GIT_BRANCH = 'feature/RAN-17493_Duplicate_install_events_and_multiple_attribution_results'
DEPLOYMENT_TARGET = '13.0'

def required_pods

  pod 'RakutenAdvertisingAttribution', :git => GIT_URL, :branch => GIT_BRANCH

  pod 'Firebase/Firestore'
  pod 'Firebase/Auth'

end

target 'Main' do
  required_pods
end

target 'Second' do
  required_pods
end

post_install do |pi|
    pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = DEPLOYMENT_TARGET
      end
    end
end
