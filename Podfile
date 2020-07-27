# Uncomment the next line to define a global platform for your project

platform :ios, '13.0'

inhibit_all_warnings!

source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/Rakuten-Advertising-Developers/Specs.git'

def required_pods

   pod 'RakutenAdvertisingAttribution', :git => 'https://github.com/Rakuten-Advertising-Developers/RakutenAdvertisingAttribution-iOS-SDK.git', :branch => 'develop'

   pod 'Firebase/Firestore'
   pod 'Firebase/Auth'

end

target 'RADAdvertiserDemo' do
  
  use_frameworks!
  required_pods
  
end

target 'RADAdvertiserDemoSecond' do

  use_frameworks!
  required_pods

end
