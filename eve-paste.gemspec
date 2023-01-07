# frozen_string_literal: true

require_relative './lib/eve/paste/version'

Gem::Specification.new do |spec|
  spec.name = 'eve-paste'
  spec.version = EVE::Paste::VERSION
  spec.authors = 'Bokobo Shahni'
  spec.email = 'shahni@bokobo.space'

  spec.summary = 'Parser for EVE Online copy-pastable formats'
  spec.description = 'eve-paste parses various formats that are copy-pastable from the in-game UI in EVE Online. It ' \
                     'is largely a port of the Go-based parsers in EVEPraisal.'
  spec.homepage = 'https://bokoboshahni.github.io/eve-paste'
  spec.license = 'MIT'

  spec.required_ruby_version = '~> 3.1'
  spec.required_rubygems_version = '>= 3.3.0'

  spec.metadata = {
    'homepage_uri' => spec.homepage,
    'bug_tracker_uri' => 'https://github.com/bokoboshahni/eve-paste/issues',
    'changelog_uri' => 'https://github.com/bokoboshahni/eve-paste/blob/main/CHANGELOG.md',
    'documentation_uri' => "https://bokoboshahni.github.io/eve-paste/v#{EVE::Paste::VERSION}",
    'mailing_list_uri' => 'https://github.com/bokoboshahni/eve-paste/discussions',
    'source_code_uri' => 'https://github.com/bokoboshahni/eve-paste',

    'rubygems_mfa_required' => 'true'
  }

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|spec)/|\.(?:git|github))})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
