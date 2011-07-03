#!/usr/bin/env ruby
require '../work-anywhere'
require 'test/unit'

class InstallTest < Test::Unit::TestCase

  include WorkAnyWhere

  # set software install enviroment
  # WorkAnyW::software_base_path="/usr/local/"
  # WorkAnyW::config_base_path="~"
  def test_set_enviroment
    wa_soft_base="/usr/local/"
    wa_cfg_base="~"
    assert_equal "/usr/local/", wa_soft_base
    assert_equal "~", wa_cfg_base
  end

  # load software spec
  def test_load_config
    wa_load_config 'test_config'
    pwd = `pwd`
    assert_equal "#{pwd}/tmp/soft", wa_soft_base
    assert_equal "#{pwd}/tmp/config", wa_cfg_base
  end

  # check if a software has been installed
  def test_check_install
    soft = 'git'
    wa_uninstall soft if wa_installed? soft
    assert_equal false, (wa_installed? soft)
   
    install soft
    assert_equal true, (wa_installed? soft)
  end

  def test_uninstall
    wa_unintall 'test'
    assert_equal false, (wa_installed? 'test')
  end

end
