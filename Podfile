using_local_pods = true

unless using_local_pods
  source 'https://github.com/EOSIO/eosio-swift-pod-specs.git'
  source 'https://github.com/CocoaPods/Specs.git'
end

platform :ios, '12.0'

if using_local_pods
  # Pull pods from sibling directories if using local pods
  target 'EosioSwiftAbieos' do
    use_frameworks!

    pod 'EosioSwift', :path => '../eosio-swift'
    pod 'SwiftLint'

    target 'EosioSwiftAbieosTests' do
      inherit! :search_paths
      pod 'EosioSwift', :path => '../eosio-swift'
    end
  end
else
  # Pull pods from sources above if not using local pods
  target 'EosioSwiftAbieos' do
    use_frameworks!

    pod 'EosioSwift', '~> 0.0.1'
    pod 'SwiftLint'

    target 'EosioSwiftAbieosTests' do
      inherit! :search_paths
      pod 'EosioSwift', '~> 0.0.1'
    end
  end
end
