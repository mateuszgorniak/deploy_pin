# frozen_string_literal: true

require 'test_helper'
require 'rake'

class DeployPinTasksTest < ActiveSupport::TestCase
  Rails.application.load_tasks

  test "deploy_pin:list'" do
    assert_nothing_raised do
      Rake::Task['deploy_pin:list'].invoke
    end
  end

  test "deploy_pin:list[I]'" do
    assert_nothing_raised do
      Rake::Task['deploy_pin:list'].invoke('I')
    end
  end

  test "deploy_pin:short_list'" do
    assert_nothing_raised do
      Rake::Task['deploy_pin:short_list'].invoke
    end
  end

  test "deploy_pin:short_list[I]'" do
    assert_nothing_raised do
      Rake::Task['deploy_pin:short_list'].invoke('I')
    end
  end

  test "deploy_pin:run'" do
    assert_nothing_raised do
      Rake::Task['deploy_pin:run'].invoke
    end
  end

  test "deploy_pin:run[I]'" do
    assert_nothing_raised do
      Rake::Task['deploy_pin:run'].invoke('I')
    end
  end

  test "deploy_pin:run['75371573753751, 75371573753752']" do
    assert_nothing_raised do
      Rake::Task['deploy_pin:run'].invoke('75371573753751, 75371573753752')
    end
  end
end
