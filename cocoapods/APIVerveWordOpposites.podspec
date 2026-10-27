Pod::Spec.new do |s|
  s.name             = 'APIVerveWordOpposites'
  s.version          = '1.2.3'
  s.summary          = 'Word Opposites looks up direct antonyms for any single input term.'
  s.description      = <<-'DESC'
Word Opposites looks up direct antonyms for any single input term. Pass an English word to receive an array of contrasting and opposing words.

This iOS/macOS SDK provides a convenient way to access the Word Opposites from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/wordopposite?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/wordopposite-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveWordOpposites/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
