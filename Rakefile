# coding: utf-8

namespace :travis do
  desc '後処理'
  task :after_success do
    if ENV['TRAVIS_BRANCH'] == 'develop' && ENV['TRAVIS_PULL_REQUEST'] == 'false'
      # Pull Requestからdevelopブランチにマージした時
      puts 'AfterSuccess: Distribute develop-build by Deploygate.'
      #distribute_by_deploy_gate('Beta', '社内用リリース')
    elsif ENV['TRAVIS_BRANCH'] == 'master' && ENV['TRAVIS_PULL_REQUEST'] == 'false'
      # masterにコミットもしくはマージした時
      puts 'AfterSuccess: Distribute master-build by Deploygate.'
    else
      puts 'AfterSuccess:Nothing to do.'
    end
  end
end
