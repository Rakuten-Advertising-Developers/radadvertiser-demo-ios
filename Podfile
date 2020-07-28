# Uncomment the next line to define a global platform for your project

platform :ios, '13.0'

inhibit_all_warnings!

source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/Rakuten-Advertising-Developers/Specs.git'

use_frameworks!

def required_pods

   pod 'RakutenAdvertisingAttribution', :git => 'https://github.com/Rakuten-Advertising-Developers/RakutenAdvertisingAttribution-iOS-SDK.git', :branch => 'develop'

   pod 'Firebase/Firestore'
   pod 'Firebase/Auth'

end

target 'Main' do
  required_pods
end

target 'Second' do
  required_pods
end
